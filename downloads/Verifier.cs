using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace MathEditor {
	public class MMFile {
		class TokenReader {
			StreamReader lines;
			public TokenReader(StreamReader lines) {
				this.lines = lines;
				buffer = new Queue<string>();
			}
			Queue<string> buffer;
			public string ReadToken() {
				while (buffer.Count == 0) {
					string line = lines.ReadLine();
					if (line == null) return null;
					foreach (string s in line.Split()) buffer.Enqueue(s);
				}
				return buffer.Dequeue();
			}
		}
		public static MMFile FromFile(string file) {
			using (StreamReader r = new StreamReader(file))
				return FromStreamReader(r);
		}
		public static MMFile FromStream(Stream stream) {
			return FromStreamReader(new StreamReader(stream));
		}
		public static MMFile FromStreamReader(StreamReader streamReader) {
			TokenReader r = new TokenReader(streamReader);
			MMFile f = new MMFile();
			f.Read(r);
			return f;
		}
		string ReadC(TokenReader r) {
			while (true) {
				string tok = r.ReadToken();
				if (tok == null) return null;
				if (tok == "$(") {
					do {
						tok = r.ReadToken();
					} while (tok != "$)");
				}
				else if (tok != "")
					return tok;
			}
		}
		SymbolString ReadStat(TokenReader r) {
			SymbolString ret = new SymbolString();
			while (true) {
				string tok = ReadC(r);
				if (tok == null)
					throw new Exception("EOF before $.");
				else if (tok == "$.")
					break;
				ret.Add(tok);
			}
			return ret;
		}
		FrameStack fs = new FrameStack();
		//int lineNbr, colNbr;
		void Read(TokenReader r) {
			fs.Push();
			string label = null;
			SymbolString stat = null;
			while (true) {
				string tok = ReadC(r);
				if (tok == null || tok == "$}") break;
				else if (tok == "$c")
					ReadStat(r).ForEach(fs.AddC);
				else if (tok == "$v")
					ReadStat(r).ForEach(fs.AddV);
				else if (tok == "$f") {
					if (label == null)
						throw new Exception("$f must have label");
					stat = ReadStat(r);
					if (stat.Count != 2)
						throw new Exception("$f must have 2 symbols");
					fs.AddF(label, stat);
					label = null;
				}
				else if (tok == "$a") {
					if (label == null)
						throw new Exception("$a must have label");
					stat = ReadStat(r);
					fs.AddA(label, stat);
					label = null;
				}
				else if (tok == "$e") {
					if (label == null)
						throw new Exception("$e must have label");
					stat = ReadStat(r);
					fs.AddE(label, stat);
					label = null;
				}
				else if (tok == "$p") {
					if (label == null)
						throw new Exception("$p must have label");
					stat = ReadStat(r);
					int i = stat.IndexOf("$=");
					if (i == -1)
						throw new Exception("$p must contain proof after $=");
					var result = stat.Take(i);
					var proofString = stat.Skip(i + 1);
					Theorem t = new Theorem { Name = label, Result = new SymbolString(result) };
					fs.AddP(label, t);
					if (proofString.First() == "(") { //compressed proof
						t.Proof = UncompressProof(fs, t, proofString).ToList();
					}
					else {
						t.Proof = GetStatements(fs, proofString).ToList();
					}
					if (t.Proof.Count(n => n is Axiom && ((Axiom)n).Hypotheses == null) > 0)
						throw new Exception();
					Statements.Add(t);
					label = null;
				}
				else if (tok == "$d") {
					stat = ReadStat(r);
					fs.AddD(stat);
				}
				else if (tok == "${") Read(r);
				else if (tok[0] != '$') {
					label = tok;
				}
				else
					throw new Exception("Unexpected token " + tok);

			}
			fs.Pop();
		}

		private IEnumerable<MMStatement> GetStatements(FrameStack fs, IEnumerable<string> proofString) {
			List<MMStatement> stats = new List<MMStatement>();
			foreach (string s in proofString)
				stats.Add(fs.LookupStatement(s));
			return stats;
		}
		IEnumerable<MMStatement> UncompressProof(FrameStack fs, Theorem th, IEnumerable<string> proof) {
			var ints = UncompressProofNumbers(proof);

			int hypCount = th.Hypotheses.Count;

			int labelCount = proof.Skip(1).TakeWhile(n => n != ")").Count();

			int zCount = ints.Count(i => i == 0);

			List<MMStatement> ret = new List<MMStatement>();
			MMStatement stat = null;
			foreach (int j in ints) {
				int i = j;
				if (i == 0)
					stat = new ZIStatement();
				else {
					i -= 1;
					if (i < hypCount)
						stat = th.Hypotheses[i];
					else {
						i -= hypCount;
						if (i < labelCount)
							stat = fs.LookupStatement(proof.ElementAt(i + 1));
						else {
							i -= labelCount;
							if (i < zCount) {
								stat = new ZRStatement { Num = i };
							}
							else
								throw new Exception("Couldn't uncompress proof.");
						}
					}
				}
				ret.Add(stat);
			}
			return ret;
		}
		List<int> UncompressProofNumbers(IEnumerable<string> proof) {
			var it = proof.GetEnumerator();
			it.MoveNext();
			while (it.Current != ")") {
				it.MoveNext();
			}
			string comp = "";
			while (it.MoveNext()) {
				comp += it.Current;
			}
			List<int> ret = new List<int>();
			int numStart = 0;
			while (numStart < comp.Length) {
				int numNext = numStart;
				while (comp[numNext] > 'T') {
					numNext++;
				}
				int val = 0;
				for (int i = numStart; i < numNext; i++) {
					val += 4 * (int)Math.Pow(5, (numNext - i)) * ((int)comp[i] - (int)'T');
				}
				val += (int)comp[numNext++] - (int)'A' + 1;
				ret.Add(val);
				if (comp.Length > numNext && comp[numNext] == 'Z') {
					numNext++;
					ret.Add(0);
				}
				numStart = numNext;
			}
			return ret;
		}

		public List<MMStatement> Statements = new List<MMStatement>();
	}

	public abstract class MMStatement {
		public FileInfo File;
		public int Line;
		public int Column;
		public int ByteOffset;
		public string Name;
	}

	public class Axiom : MMStatement {
		public SymbolString Result = new SymbolString();
		public List<Hypothesis> Hypotheses = new List<Hypothesis>();
		public HashSet<Distinct> Distinct;
	}
	public class Theorem : Axiom {
		public List<MMStatement> Proof = new List<MMStatement>();
	}
	public abstract class Hypothesis : MMStatement {
		public SymbolString Statement;
		public override bool Equals(object obj) {
			return obj is EHyp && Statement.SequenceEqual(((EHyp)obj).Statement);
		}
		public override int GetHashCode() {
			return Statement.GetHashCode();
		}
	}
	public class FHyp : Hypothesis {
	}
	public class EHyp : Hypothesis {
	}
	public class Distinct : MMStatement {
		public string X;
		public string Y;
		public override bool Equals(object obj) {
			if (!(obj is Distinct)) return false;
			Distinct d = (Distinct)obj;
			return X == d.X && Y == d.Y;
		}
		public override int GetHashCode() {
			return X.GetHashCode() ^ (7 * Y.GetHashCode());
		}
	}
	public class Comment : MMStatement {
		public SymbolString Symbols = new SymbolString();
	}
	//we treat the compressed proof's Z command as a real statement in the language
	public class ZIStatement : MMStatement {
	}
	//this is a reference to a statement saved by a Z command
	public class ZRStatement : MMStatement {
		public int Num;
	}

	public class SymbolString : List<string> {
		public SymbolString(IEnumerable<string> items) : base(items) { }
		public SymbolString() { }
		public override string ToString() {
			return this.Aggregate(new StringBuilder(), (sb, s) => sb.Append(s + " "),
				sb => {
					sb.Length -= 1;
					return sb.ToString();
				});
		}
	}

	//this verifier based on mmverify.py by Raph Levian
	public class Frame {
		public HashSet<string> C = new HashSet<string>();
		public HashSet<string> V = new HashSet<string>();
		public HashSet<Distinct> D = new HashSet<Distinct>();
		public List<Hypothesis> Hyps = new List<Hypothesis>();
		public Dictionary<string, MMStatement> Statements = new Dictionary<string, MMStatement>();
	}
	public class FrameStack {
		public Stack<Frame> stack = new Stack<Frame>();
		HashSet<string> usedVariables = new HashSet<string>();
		public void Push() {
			stack.Push(new Frame());
		}
		public void Pop() {
			stack.Pop();
		}
		public void AddC(string tok) {
			if (stack.Count > 1)
				throw new Exception("Constants must be declared in the outermost block.");
			var frame = stack.Peek();
			if (usedVariables.Contains(tok))
				throw new Exception("A name defined as constant was already used as a variable.");
			if (LookupToken(tok))
				throw new Exception("Name already active. Can't define constant " + tok);
			frame.C.Add(tok);
		}
		public void AddV(string tok) {
			var frame = stack.Peek();
			if (LookupToken(tok))
				throw new Exception("Name already active. Can't define variable " + tok);
			usedVariables.Add(tok);
			frame.V.Add(tok);
		}
		public void AddF(string label, SymbolString symbols) {
			if (symbols.Count != 2)
				throw new Exception("$f statement must have two symbols.");
			string var = symbols[1], kind = symbols[0];
			if (!LookupV(var))
				throw new Exception("var in $f not defined: " + var);
			if (!LookupC(kind))
				throw new Exception("const in $f not defined: " + kind);
			var frame = stack.Peek();
			foreach (var f in frame.Hyps.OfType<FHyp>())
				if (f.Statement[1] == var)
					throw new Exception("var in $f already defined in scope");
			FHyp val = new FHyp { Statement = symbols, Name = label };
			frame.Hyps.Add(val);
			AddStatement(label, val);
		}
		public void AddE(string label, SymbolString stat) {
			if (!LookupC(stat[0]))
				throw new Exception("A constant in an $e statement was not defined: " + stat[0]);
			for (int i = 1; i < stat.Count; i++) {
				if (LookupF(stat[i]) == null && !LookupC(stat[i]))
					throw new Exception("A symbol used in an $e statement was not defined: " + stat[i]);
			}
			EHyp eh = new EHyp { Statement = stat, Name = label };
			stack.Peek().Hyps.Add(eh);
			AddStatement(label, eh);
		}
		public void AddD(List<string> stat) {
			var frame = stack.Peek();
			for (int i = 0; i < stat.Count; i++) {
				for (int j = i + 1; j < stat.Count; j++) {
					Distinct d = new Distinct { X = stat[i], Y = stat[j] };
					if (d.X.CompareTo(d.Y) == 1) {
						string t = d.X;
						d.X = d.Y;
						d.Y = t;
					}
					if (d.X != d.Y)
						frame.D.Add(d);
				}
			}
		}
		public void AddA(string label, SymbolString stat) {
			Axiom a = new Axiom { Result = stat };
			MakeAssertion(stat, a);
			AddStatement(label, a);
		}
		public void AddP(string label, Theorem th) {
			MakeAssertion(th.Result, th);
			AddStatement(label, th);
		}
		void AddStatement(string label, MMStatement st) {
			var dict = stack.Peek().Statements;
			st.Name = label;
			if (st is Axiom)
				dict = stack.Last().Statements;
			if (LookupToken(label))
				throw new Exception("Label " + label + " is already declared.");
			dict[label] = st;
		}
		public bool LookupC(string tok) {
			foreach (Frame f in stack)
				if (f.C.Contains(tok))
					return true;
			return false;
		}
		public bool LookupV(string tok) {
			foreach (Frame f in stack)
				if (f.V.Contains(tok))
					return true;
			return false;
		}
		public bool LookupToken(string varOrConst) {
			return LookupC(varOrConst) || LookupV(varOrConst) || LookupStatement(varOrConst) != null;
		}
		public string LookupF(string var) {
			foreach (Frame frame in stack)
				foreach (FHyp f in frame.Hyps.OfType<FHyp>())
					if (f.Statement[1] == var)
						return f.Statement[0];
			return null;
		}
		public bool LookupD(string x, string y) {
			if (x.CompareTo(y) == 1) {
				string t = x;
				x = y; y = t;
			}
			foreach (Frame f in stack)
				if (f.D.Contains(new Distinct { X = x, Y = y }))
					return true;
			return false;
		}
		public MMStatement LookupStatement(string label) {
			foreach (Frame f in stack)
				if (f.Statements.ContainsKey(label))
					return f.Statements[label];
			return null;
		}
		void MakeAssertion(IEnumerable<string> stat, Axiom item) {
			if (!LookupC(stat.First()))
				throw new Exception("First symbol in assertion must be a constant, not " + stat.First());
			HashSet<string> vars = new HashSet<string>();
			foreach (string s in stat.Skip(1)) {
				var f = LookupF(s);
				if (!LookupC(s) && f == null && !(LookupStatement(s) is EHyp))
					throw new Exception("Undeclared symbol in assertion: " + s);
				if (f != null) vars.Add(s);
			}
			var hyps = new List<Hypothesis>();
			var mandVars = new HashSet<string>();
			foreach (Frame f in stack.Reverse())
				foreach (Hypothesis hyp in f.Hyps)
					if ((hyp is FHyp) && vars.Contains(hyp.Statement[1]) || (hyp is EHyp))
						hyps.Add(hyp);
			Frame frame = stack.Last();
			var visible = new List<IEnumerable<string>>(hyps.Select(h => h.Statement.UC()));
			visible.Add(stat);
			foreach (IEnumerable<string> hyp in visible)
				foreach (string tok in hyp)
					if (LookupV(tok))
						mandVars.Add(tok);
			var dm = new HashSet<Distinct>();
			foreach (Frame f in stack)
				foreach (Distinct d in f.D)
					if (mandVars.Contains(d.X) && mandVars.Contains(d.Y))
						dm.Add(d);
			var mandHyps = new List<Hypothesis>();
			foreach (Frame fr in stack.Reverse())
				foreach (var h in fr.Hyps) {
					if (h is FHyp) {
						if (mandVars.Contains(h.Statement[1])) {
							mandHyps.Add(h);
							mandVars.Remove(h.Statement[1]);
						}
					}
					else
						mandHyps.Add(h);
				}
			item.Distinct = dm;
			item.Hypotheses = mandHyps;
		}
	}
	public class Verifier {
		Dictionary<string, MMStatement> labels = new Dictionary<string, MMStatement>();
		string[] labelRequired = new string[] { "$a", "$e", "$f", "$p" };
		List<string> ApplySubst(IEnumerable<string> stat, Dictionary<string, List<string>> subst) {
			var res = new List<string>();
			foreach (string tok in stat) {
				if (subst.ContainsKey(tok))
					res.AddRange(subst[tok]);
				else
					res.Add(tok);
			}
			return res;
		}
		List<string> FindVars(List<string> stat, Theorem th) {
			List<string> vars = new List<string>();
			foreach (string x in stat)
				if (!vars.Contains(x) && th.Hypotheses.Where(n => n is FHyp && n.Statement[1] == x).Count() == 1)
					vars.Add(x);
			return vars;
		}

		Stack<List<string>> Stack;
		Dictionary<string, List<string>> Subst;

		public void Verify(Theorem th) {
			Stack = new Stack<List<string>>();
			List<List<string>> stored = new List<List<string>>();
			foreach (MMStatement step in th.Proof) {
				if (step is FHyp) {
					FHyp f = (FHyp)step;
					Stack.Push(new List<string>(new string[] { f.Statement[0], f.Statement[1] }));
				}
				else if (step is EHyp) {
					Stack.Push(((EHyp)step).Statement);
				}
				else if (step is ZIStatement) {
					stored.Add(Stack.Peek());
				}
				else if (step is ZRStatement) {
					Stack.Push(stored[((ZRStatement)step).Num]);
				}
				else if (step is Axiom) {
					Axiom s = (Axiom)step;
					int popCount = s.Hypotheses.Count;
					if (popCount > Stack.Count)
						throw new Exception("Stack underflow");
					var hyps = new Stack<List<string>>();
					foreach (var hyp in Stack.Take(popCount))
						hyps.Push(hyp);
					var subst = Subst = new Dictionary<string, List<string>>();
					foreach (Hypothesis f in s.Hypotheses.OfType<FHyp>()) {
						var entry = hyps.Pop().ToList();
						if (entry[0] != f.Statement[0]) {
							throw new Exception("Stack entry doesn't match mandatory var hyp");
						}
						entry.RemoveAt(0);
						subst[f.Statement[1]] = entry;
					}

					foreach (Distinct d in s.Distinct) {
						var xVars = FindVars(subst[d.X], th);
						var yVars = FindVars(subst[d.Y], th);
						foreach (string gam in xVars)
							foreach (string delt in yVars)
								if (gam == delt)
									throw new Exception("Disjoint violation for " + d.X + ", " + d.Y + "(" + gam + ")");
					}
					foreach (Hypothesis h in s.Hypotheses.OfType<EHyp>()) {
						var entry = hyps.Pop();
						var substH = ApplySubst(h.Statement, subst);
						if (!entry.SequenceEqual(substH)) {
							throw new Exception("$e hypothesis doesn't match stack.");
						}
					}
					for (int i = 0; i < popCount; i++) Stack.Pop();
					Stack.Push(ApplySubst(s.Result, subst));
					Subst = null;
				}
			}
			if (Stack.Count == 0)
				throw new Exception("Stack is empty at end of proof.");
			else if (Stack.Count > 1)
				throw new Exception("Stack has more than one item at end of proof.");
			if (!Stack.Peek().SequenceEqual(th.Result))
				throw new Exception("Assertion proved doesn't match.");
		}
	}

	static class Extension {
		public static T Do<T, U>(this U me, Func<U, T> action) {
			return action(me);
		}
		public static IEnumerable<T> UC<T>(this IEnumerable<T> me) {
			return (IEnumerable<T>)me;
		}
	}
}
