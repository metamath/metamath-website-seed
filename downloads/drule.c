#define VERSION "0.3 21-Mar-2018"
/*****************************************************************************/
/* drule.c - Implementation of C. A. Meredith's condensed detachment D       */
/*                                                                           */
/*                           PUBLIC DOMAIN                                   */
/*                                                                           */
/* This file (specifically, the version of this file with the above date)    */
/* has been released into the Public Domain per the Creative Commons Public  */
/* Domain Dedication. http://creativecommons.org/licenses/publicdomain/      */
/*                                                                           */
/* The public domain release applies worldwide.  In case this is not         */
/* legally possible, the right is granted to use the work for any purpose,   */
/* without any conditions, unless such conditions are required by law.       */
/*                                                                           */
/* Norman Megill nm(at)alum(dot)mit(dot)edu                                  */
/*****************************************************************************/

/* History:
   0.1 21-Feb-2006 nm First public release
   0.2 12-Jun-2010 nm Refresh the "! # steps" comment after each proof
   0.3 21-Mar-2018 nm If there is one argument, it is assumed to be a D-proof,
       and the result is printed.  E.g.:  "./drule DD211" prints ">PP".
       If no arguments, the standard input is assumed to be pmproofs.txt
       like before.
*/

/* If you want to expand a D-proof into explicit proof steps, call the
   stand-alone function dPrintProof with the D-proof string as one of its
   arguments.  (There is no program option to do this; you have to call
   it in main() yourself and recompile.) */

/* (From an email I wrote about this version:)

drule.c is a kind of "template" program i.e. collection of functions for
personal use that I have customized to do various experiments, such as
generating all theorems with proofs less than a certain length.  As I
indicated on the web site it was not intended for general release, so
caveat emptor.  :)

This version of drule.c was customized to do the following, since
its last use to assist verifying and cleaning up the pmproofs.txt file.
(I checked that it still does this correctly.)

It takes pmproofs.txt as its input and produces a new pmproofs.txt in a
standard format (which is the same as the current pmproofs.txt proof
section, so there won't be much, if any, change).  If there is an error
in pmproofs.txt, it will print a message and stop there.  You may want
to change a character in a pmproofs.txt proof to see this and convince
yourself that drule.c isn't cheating and just piping the input to the
output.  :)

When reading pmproofs.txt, everything above the last "----" line is
ignored and discarded in the output file.  There MUST BE NO SEMICOLONS
in the comment text above the last "----" line.  The algorithm starts to
look for a semicolon for the end of the first theorem, throwing away
everything so far when it finds "----".  I know this is a real kludge,
but it was quickly written to help verify and reformat the pre-existing
pmproofs.txt file.

To compile:

  gcc drule.c -o drule

To run:

  ./drule < pmproofs.txt > newpmproofs.txt

You can get pmproofs.txt from my web site.  If all went well, the
newpmproofs.txt should be the same as the proof section of pmproofs.txt.

The key algorithm is contained in the function dAlgorithm.  There is
additional stuff in there I used for various experiments, some commented
well and some not.  To better understand the string functions let,
cat, edit, right, left, instr, seg, etc. look for the tutorial called
"Variable-length string handler" in the middle of the program.  Be
aware that in these functions position 1, not 0, is the convention for
the first character in a string; thus 'ascii_(mid(myString,1,1))' is
identical to 'myString[0]'.  I switch to direct C handling of
strings where speed is important.

Good luck,
Norm */



#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <time.h>
#include <ctype.h>
#include <limits.h>

/* Largest lattice size plus 1 */
#define MAX_NODES 101
/* Binary infix operator list - i is only for Polish conversion */
/* Note: i is now obsolete - it used to be "universal implication" -
   but it is still implemented in beran.c and beranf.c */
/* 2/20/00 - Added ~ (NOT) & (AND) V (OR) } (implies) : (bicond)
   classical metalogical connectives */
/* 2/24/00 - Added @ (for all) ] (exists) */
#define ALL_BIN_CONNECTIVES "^?#OI2345=<>[&V}:"
/*#define ALL_BIN_CONNECTIVES "^v#OI2345=<>[&V}:"*/
/* MAX_BIN_CONNECTIVES is the length of ALL_BIN_CONNECTIVES */
#define MAX_BIN_CONNECTIVES 17
#define LOGIC_BIN_CONNECTIVES "&V}:"
#define LOGIC_AND_RELATION_CONNECTIVES "=<>[&V}:~"
#define OPER_AND_RELATION_BIN_CONNECTIVES "^v#OI2345=<>["
#define QUANTIFIER_CONNECTIVES "@]"
/* Lattice binary operations */
/* (In the future direct references to operation symbols will be
   changed to use these constants) */
#define INF_OPER '^'
#define SUP_OPER 'v'
#define ID_OPER '#'
#define IMP0_OPER 'O'
#define IMP1_OPER 'I'
#define IMP2_OPER '2'
#define IMP3_OPER '3'
#define IMP4_OPER '4'
#define IMP5_OPER '5'
/* Lattice relations */
#define EQ_OPER '='
#define LE_OPER '<'
#define GE_OPER '>'
#define COM_OPER '['
/* Negation prefix operator */
#define NEG_OPER '-'
/* 2/20/00 - Added classical metalogical NOT */
#define NOT_OPER '~'
/* 2/20/00 - Added classical binary metalogical connectives */
#define AND_OPER '&'
#define OR_OPER 'V'
#define IMPL_OPER '}'
#define BI_OPER ':'
/* 2/20/00 - Added classical truth values - these should be different
   from ASCII letters to avoid ambiguity, but less than MAX_NODES to
   avoid operation table overflow, and nonzero to avoid end-of-string
   problems */
#define FALSE_CONST 1
#define TRUE_CONST 2
/* Old "universal implication" - now obsolete */
#define FORALL_OPER '@'
#define EXISTS_OPER ']'
/* Old "universal implication" - now obsolete */
#define UNIV_IMPL 'i'
/* List of legal variable names - note v,i,o skipped because of operators */
#define VAR_LIST "abcdefghjklmnpqrstuwxyz" /* "d" is omitted */
/* MAX_VARS is the length of VAR_LIST */
#define MAX_VARS 23
/* MAX_STACK is length of longest formula expressed in Polish notation */
#define MAX_STACK 10000
/* MAX_STACK2 is the maximum nesting level of a formula */
#define MAX_STACK2 1000
/* Largest number of user hypotheses */
#define MAX_HYPS 50
/* Largest number of lattices */
#define MAX_LATTICES 100

/***********************************************************************/
/************ Start of "vstring" header stuff **************************/
/************ Do not touch anything in this section ********************/
/***********************************************************************/
typedef char* vstring;

/* String assignment - MUST be used to assign vstrings */
void let(vstring *target,vstring source);
/* String concatenation - last argument MUST be NULL */
vstring cat(vstring string1,...);

/* Emulate BASIC linput statement; returns NULL if EOF */
/* Note that linput assigns target string with let(&target,...) */
  /*
    BASIC:  linput "what";a$
    c:      linput(NULL,"what?",&a);

    BASIC:  linput #1,a$                        (error trap on EOF)
    c:      if (!linput(file1,NULL,&a)) break;  (break on EOF)

  */
/*vstring linput(FILE *stream,vstring ask,vstring *target);*/
int linput(FILE *stream, const char* ask, vstring *target);

/* Emulation of BASIC string functions */
vstring seg(vstring sin, long p1, long p2);
vstring mid(vstring sin, long p, long l);
vstring left(vstring sin, long n);
vstring right(vstring sin, long n);
vstring edit(vstring sin, long control);
vstring space(long n);
vstring string(long n, char c);
vstring chr(long n);
vstring xlate(vstring sin, vstring control);
vstring date(void);
vstring time_(void);
vstring num(double x);
vstring num1(double x);
vstring str(double x);
long len(vstring s);
long instr(long start, vstring sin, vstring s);
long rinstr(vstring string1, vstring string2);
long ascii_(vstring c);
double val(vstring s);
/* Emulation of PROGRESS string functions added 11/25/98 */
vstring entry(long element, vstring list);
long lookup(vstring expression, vstring list);
long numEntries(vstring list);
long entryPosition(long element, vstring list);
/* Print to log file as well as terminal if fplog opened */
void print2(char* fmt,...);
FILE *fplog = NULL;
/* Opens files with error message; opens output files with
   backup of previous version.   Mode must be "r" or "w". */
FILE *fSafeOpen(vstring fileName, vstring mode);
/* Bug check error */
void bug(int bugNum);
/* End of functions you should call directly */


/* Do not call the ones below directly */
/******* Special pupose routines for better
      memory allocation (use with caution) *******/
/* Make string have temporary allocation to be released by next let() */
/* Warning:  after makeTempAlloc() is called, the vstring may NOT be
   assigned again with let() */
void makeTempAlloc(vstring s);   /* Make string have temporary allocation to be
                                    released by next let() */
#define MAX_ALLOC_STACK 100
int tempAllocStackTop=0;        /* Top of stack for tempAlloc functon */
int startTempAllocStack=0;      /* Where to start freeing temporary allocation
                                    when let() is called (normally 0, except in
                                    special nested vstring functions) */
char *tempAllocStack[MAX_ALLOC_STACK];
static void* tempAlloc(long size);


/*****************************************************************************/
/*********************** End of "vstring" header stuff ***********************/
/*****************************************************************************/

/******************** Prototypes *********************************************/
char dTestSubst(vstring substInstance, vstring theorem);
vstring dPrintProof(vstring proof, long verbosity);
vstring dProof(vstring proof);
vstring dAlgorithm(vstring majorPremise, vstring minorPremise);
void btree(char *tree, long n, long size);
void btreecount(char *tree, long n, long size, long  base);
long catalan(long n);

int qsortStringCmp(const void *p1, const void *p2);
int bsearchStringCmp(const void *key, const void *data);

vstring toPolish(vstring equation);
long subEqnLen(vstring subEqn);
vstring parenthesize(vstring equation);
vstring fromPolish(vstring polishEqn);
vstring unPrintableString(vstring sin);
vstring printableString(vstring sin);

/******************** Global variables ***************************************/
#define MAX_AXIOMS 100
vstring axiom[MAX_AXIOMS]; /* Axioms */
long axioms = 1;


/******************** Main program *******************************************/

int main(int argc, char *argv[])
{

  vstring str1 = "";
  /*vstring str2 = "";*/
  long i, /*j, k, n, n3,*/ p;
  /*long slen;*/
  vstring theorem = "";
  vstring theoremBody = "";
  vstring theoremComment = "";
  vstring theoremExpanded = "";
  vstring theoremExpandedBody = "";
  vstring theoremExpandedComment = "";
  vstring proof = "";
  vstring proofBody = "";
  vstring proofComment = "";
  vstring provedTheorem = "";
  vstring printedProvedTheorem = "";
  char pmProofsTxtMode = 1;  /* 1 if reading pmproofs.txt */

#define MAX_THEOREMS 10000
  /*void *voidPtr;*/ /* bsearch returned value */
  /*
  long str1Len;
  vstring theoremArr[MAX_THEOREMS];
  vstring proofArr[MAX_THEOREMS];
  long theoremLenArr[MAX_THEOREMS];
  long proofLenArr[MAX_THEOREMS];
  long theorems = 0;
  long total = 0;
  long maxBreadth;
  char maxVariable;
  long shortestSoFar;
  long proofLength;
  long maxProofLengthSoFar;
  long save_i;
  long save_proofLength;
  char flag;
  */

  /* If called with an argument, assume the argument is a single D-proof.
     In that case, print the result in Polish notation.  (This is a
     special mode for George Szpiro.)  E.g.:  "./drule DD211" */
  /* If called without an argument, take input (normally pmproofs.txt) from
     standard and check and recreate it on standard output, as described
     in the pmproofs.txt document */
  if (argc == 1) {
    pmProofsTxtMode = 1;
  } else if (argc == 2) {
    pmProofsTxtMode = 0; /* Single proof mode */
    let(&proofBody, argv[1]);
  } else {
    fprintf(stderr,
"?Error: Use no arguments for pmproof.txt mode or a D-proof\n");
    fprintf(stderr,
"     argument for single proof mode.\n");
    exit(1);
  }


  for (i = 0; i < MAX_AXIOMS; i++) axiom[i] = "";


  /*axiom[1] = toPolish("(((((p>q)>(~r>~s))>r)>t)>((t>p)>(s>p)))");*/
  axiom[1] = toPolish("(p>(q>p))");
  axiom[2] = toPolish("((p>(q>r))>((p>q)>(p>r)))");
  axiom[3] = toPolish("((~p>~q)>(q>p))");
  axioms = 3;

  /* 21-Mar-2018 nm Add code for a single proof e.g. "./drule DD211" */
  if (pmProofsTxtMode == 0) {
    provedTheorem = dProof(proofBody);
    /* Compute the result of the proof */
    let(&provedTheorem, ""); /* Deallocate any older one */
    provedTheorem = dProof(proofBody);
    if (!provedTheorem[0]) {
      fprintf(stderr,
"?Error: Proof is invalid\n");
      exit(1);
    }
    let(&provedTheorem, edit(provedTheorem, 32)); /* uppercase */
    printf("%s\n", provedTheorem);
    /* If infix notation wanted: */
    /*
    let(&printedProvedTheorem, "");
    printedProvedTheorem = fromPolish(provedTheorem);
    */
    /* (Todo: we may want to goto RETURN_POINT w/ memory deallocation) */
    return 0;
  }

  while (1) {
    /* Get line from file */
    if (linput(NULL, NULL, &str1) == 0) break; /* NULL means EOF */
    if ((long)strlen(edit(str1, 8)) == 0) continue; /* Ignore blank lines */

    /* Get theorem */
    let(&theorem, str1);
    while (instr(1, str1, ";") == 0) {
      if (linput(NULL, NULL, &str1) == 0) {
        printf("?Error in: %s\n", theorem);
        printf("?Error: Theorem did not terminate with ';'\n");
        exit(1);
      }
      let(&theorem, cat(theorem, " ", str1, NULL));
      /* In order to handle pmproofs.txt directly, have the "----..."
         lines cause everything above to be ignored */
      /* pmproofs.txt MUST NOT HAVE A SEMICOLON before the 1st theorem */
      if (str1[0] == '-') let(&theorem, "");
    }
    let(&theorem, edit(theorem, 8 + 16 + 128));
        /* Trim leading spaces, reduce spaces, trim trailing spaces */
    p = instr(1, theorem, ";");
    let(&theoremBody, left(theorem, p - 1));
    let(&theoremComment, right(theorem, p));

/* Change to 1 to generate, instead of verify, the expanded theorem. */
#define GENERATE 0

   if (!GENERATE) {

    /* Get theorem in expanded form */
    if (linput(NULL, NULL, &str1) == 0) {
      printf("?Error in: %s\n", theorem);
      printf("?Error: Last theorem did not have an expanded version\n");
      exit(1);
    }
    let(&theoremExpanded, str1);
    while (instr(1, str1, ";") == 0) {
      if (linput(NULL, NULL, &str1) == 0) {
        printf("?Error in: %s\n", theoremExpanded);
        printf("?Error: TheoremExp did not terminate with ';'\n");
        exit(1);
      }
      let(&theoremExpanded, cat(theoremExpanded, " ", str1, NULL));
    }
    let(&theoremExpanded, edit(theoremExpanded, 8 + 16 + 128));
        /* Trim leading spaces, reduce spaces, trim trailing spaces */
    p = instr(1, theoremExpanded, ";");
    let(&theoremExpandedBody, edit(left(theoremExpanded, p - 1), 8 + 16 + 128));
    let(&theoremExpandedComment, right(theoremExpanded, p));
   }

    /* Get proof */
    if (linput(NULL, NULL, &str1) == 0) {
      printf("?Error in: %s\n", theorem);
      printf("?Error: Last theorem did not have a proof\n");
      exit(1);
    }
    let(&proof, str1);
    while (instr(1, str1, ";") == 0) {
      if (linput(NULL, NULL, &str1) == 0) {
        printf("?Error in: %s\n", proof);
        printf("?Error: Proof did not terminate with ';'\n");
        exit(1);
      }
      let(&proof, cat(proof, str1, NULL));
    }

    let(&proof, edit(proof, 8 + 16 + 128));
        /* Trim leading spaces, reduce spaces, trim trailing spaces */
    p = instr(1, proof, ";");
    let(&proofBody, edit(left(proof, p - 1), 2)); /* Strip spaces */
    /* let(&proofComment, right(proof, p)); */ /* Keep old comment */
    /* 12-Jun-2010 nm - refresh the number of steps */
    i = (long)strlen(proofBody);
    let(&proofComment, cat("; ! ", str((double)i), i == 1 ? " step" : " steps",
        NULL));

    /* Verify the proof */
    let(&provedTheorem, ""); /* Deallocate any older one */
    provedTheorem = dProof(proofBody);
    if (!provedTheorem[0]) {
      printf("?Error in: %s\n", proof);
      printf("?Error: Proof is incorrect\n");
      exit(1);
    }
    let(&printedProvedTheorem, "");
    printedProvedTheorem = fromPolish(provedTheorem);


    /* Print the output */
#define MAX_LINE_LENGTH 69
    printf("\n");
    while ((long)strlen(theoremBody) > 0) {
      for (i = MAX_LINE_LENGTH; i >= 0; i--) {
        if (i > (long)strlen(theoremBody)) {
          i = (long)strlen(theoremBody);
          break;
        }
        if (i == 0) {
          p = (long)strlen(theoremBody);
          break;
        }
        if (theoremBody[i - 1] == ' ') {
          p = i;
          break;
        }
      }
      if ((long)strlen(theoremBody) + (long)strlen(theoremComment) < MAX_LINE_LENGTH) {
        let(&theoremBody, cat(theoremBody, theoremComment, NULL));
        let(&theoremComment, "");
        printf("%s\n", theoremBody);
        let(&theoremBody, "");
      } else {
        printf("%s\n", edit(left(theoremBody, p - 1), 128));
        let(&theoremBody, right(theoremBody, p));
      }
    }
    if ((long)strlen(theoremComment) > 0) printf("%s\n", theoremComment);

    /* Print what was actually proved */
    let(&theoremBody, "");  /* Holding string */
    let(&theoremComment, "; ! Result of proof");
    let(&printedProvedTheorem, edit(printedProvedTheorem, 32)); /* uppercase */

    if (i == 0 || i != 0) {   /* =true to bypass compiler warning */
                  /* Change to false if "real" theorem not wanted */
      for (i = 1; i <= (long)strlen(printedProvedTheorem); i++) {
        if (printedProvedTheorem[i - 1] != '>') {
          let(&theoremBody, cat(theoremBody, mid(printedProvedTheorem, i, 1),
              NULL));
        } else {
          let(&theoremBody, cat(theoremBody, "->", NULL));
        }
        if (i < (long)strlen(printedProvedTheorem)
            /* No space after (, before ) */
            && printedProvedTheorem[i - 1] != '('
            && printedProvedTheorem[i] != ')') {
          let(&theoremBody, cat(theoremBody, " ", NULL)); /* space */
        }
      }

      /* Make sure the result of the proof matches what is in the
         pmproofs.txt file */
     if (!GENERATE) {
      if (strcmp(theoremBody, theoremExpandedBody)) {
        printf("?Error:   The input file expected %s\n", theoremExpandedBody);
        printf("? But the result of the proof was %s\n", theoremBody);
        exit(1);
      }
     }

      /* Repeat the line breaking code from above */
      while ((long)strlen(theoremBody) > 0) {
        for (i = MAX_LINE_LENGTH; i >= 0; i--) {
          if (i > (long)strlen(theoremBody)) {
            p = (long)strlen(theoremBody);
            break;
          }
          if (i == 0) {
            p = (long)strlen(theoremBody);
            break;
          }
          if (theoremBody[i - 1] == ' ') {
            p = i - 1;
            break;
          }
        }
        if ((long)strlen(theoremBody) + (long)strlen(theoremComment) < MAX_LINE_LENGTH) {
          let(&theoremBody, cat(theoremBody, theoremComment, NULL));
          let(&theoremComment, "");
          printf("%s\n", theoremBody);
          let(&theoremBody, "");
        } else {
          printf("%s\n", edit(left(theoremBody, p), 128));
          let(&theoremBody, right(theoremBody, p + 1));
        }
      }
      if ((long)strlen(theoremComment) > 0) printf("%s\n", theoremComment);
      /* End of repeating the line breaking code */

    }


    while ((long)strlen(proofBody) > 0) {
      for (i = MAX_LINE_LENGTH; i >= 0; i--) {
        if (i > (long)strlen(proofBody)) {
          p = (long)strlen(proofBody);
          break;
        }
        p = i;
        break;
      }
      if ((long)strlen(proofBody) + (long)strlen(proofComment) < MAX_LINE_LENGTH) {
        let(&proofBody, cat(proofBody, proofComment, NULL));
        let(&proofComment, "");
        printf("%s\n", proofBody);
        let(&proofBody, "");
      } else {
        printf("%s\n", left(proofBody, p));
        let(&proofBody, right(proofBody, p + 1));
      }
    }
    if ((long)strlen(proofComment) > 0) printf("%s\n", proofComment);

  }



  return 0;
} /* main */

/* Note: the input arguments must not be temporary string allocations. */
/* This function returns 1 if substInstance is a substitution instance
   of theorem, 0 otherwise */
char dTestSubst(vstring substInstance, vstring theorem) {
  vstring dresult = "";
  vstring minor = "";
  vstring major = "";
  char returnFlag = 0;
  /* Get normalized substInstance */
  minor = dAlgorithm(">pp", substInstance);
  /* Substitute into theorem */
  let(&major, cat(">", theorem, theorem, NULL));
  dresult = dAlgorithm(major, minor);
  /* The result should be same as substInstance if the test passed */
  returnFlag = !strcmp(dresult, minor);
  let(&dresult, "");
  let(&major, "");
  let(&minor, "");
  return returnFlag;
}

/* Note: the caller must deallocate the returned string. */
/* Note: the input arguments must not be temporary string allocations. */
/* This function returns the result of a D proof e.g. DD211 using axioms
   in the global axiom[] array.  Verbosity 0 is silent. */
vstring dPrintProof(vstring proof, long verbosity) {
#define MAX_DSTACK 100
#define MAX_DSTEPS 10000
  vstring stack[MAX_DSTACK];
  long i, j;
  long stackTop = -1;
  long maxStack = 0;
  long proofLen;

  /* For display: */
  vstring step[MAX_DSTEPS];
  vstring substitutedStep[MAX_DSTEPS];
  vstring str1 = "";
  vstring str2 = "";
  vstring antecedent = "";
  vstring consequent = "";
  vstring proof1 = "";
  long majorPremiseStep, minorPremiseStep;
  long indentation[MAX_DSTEPS]; /* For display indentation */
  char *subproof;
  long level, pos;
  long totalSize = 0;
  long longestSize = 0;
  long totalSizeSubst = 0;
  long longestSizeSubst = 0;

  /* Preprocess */
  let(&proof1, proof);
  let(&proof1, edit(proof1, 2)); /* Discard spaces and tabs */
  proofLen = (long)strlen(proof1);
  for (i = proofLen - 1; i >= 0; i--)
    if (proof1[i] == 'd') proof1[i] = 'D'; /* Allow lcase d for convenience */

  for (i = 0; i < MAX_DSTACK; i++) stack[i] = "";
  for (i = 0; i < MAX_DSTEPS; i++) step[i] = "";
  for (i = 0; i < MAX_DSTEPS; i++) substitutedStep[i] = "";

  if (proofLen >= MAX_DSTEPS) bug(101);
  for (i = proofLen - 1; i >= 0; i--) {
    if (proof1[i] == 'D') {
      stackTop--;
      if (stackTop < 0) bug(102);
      let(&(step[i]), "");
      step[i] = dAlgorithm(stack[stackTop + 1], stack[stackTop]);
      if (!(step[i][0])) {
        stackTop = 0;
        let(&stack[0], "");
        goto RETURN_POINT;
      }
      let(&(stack[stackTop]), step[i]);
    } else {
      stackTop++;
      if (stackTop > maxStack) maxStack = stackTop;
      if (stackTop >= MAX_DSTACK) bug(104);
      /*
      if (proof1[i] < '1' || proof1[i] > '9') bug(103);
      let(&(stack[stackTop]), axiom[proof1[i] - '1' + 1]);
      */
      j = instr(1, "123456789abcefghijklmnopqrstuvwxyz", mid(proof1, i + 1, 1));
      if (j == 0) bug(106);
      let(&(stack[stackTop]), axiom[j]);
      let(&(step[i]), stack[stackTop]);
    }
  }

RETURN_POINT:
  if (verbosity == 1) {

    /* Get indentation levels for display */
    for (i = 0; i < proofLen; i++) {
      indentation[i] = 0;
    }
    for (i = 0; i < proofLen; i++) {
      /* Get the subproof */
      subproof = proof1 + i;
      level = 1;
      pos = 0;
      while (1) {
        switch (subproof[pos]) {
          case 0: bug(207);
          case 'D': case 'd': level++; break;
          default: level--;
        }
        indentation[pos + i]++;
        if (level == 0) {
          break;
        }
        pos++;
      }
    }

/*D*/if (pos == 0 || pos != 0) goto zzz;
    /* Make back substitutions into steps */
    /* The last substituted step is the final theorem itself */
    let(&(substitutedStep[0]), step[0]);
    /* Each time a D is encountered, find major and minor premises */

/*d*//*for shortest 123 study*/
    /*if ((long)strlen(proof1) > 21) printf("try ");*/
    /*printf("fin %ld %s %s\n", (long)strlen(proof1), proof1, step[0]);*/

    for (i = 0; i < proofLen; i++) {
      if (proof1[i] == 'D' || proof1[i] == 'd') {

        majorPremiseStep = i + 1;
        /* Skip the subproof for the major premise to find the
           minor premise */
        subproof = proof1 + i + 1;
        level = 1;
        pos = 0;
        while (1) {
          switch (subproof[pos]) {
            case 0: bug(208);
            case 'D': case 'd': level++; break;
            default: level--;
          }
          if (level == 0) {
            break;
          }
          pos++;
        }
        minorPremiseStep = i + pos + 2;


/*d*//*for shortest 123 study*/
        let(&str1, mid(proof1, majorPremiseStep + 1, pos + 1));
        /*if ((long)strlen(str1) > 21) printf("try ");*/
        /*print2("maj %ld %s %s\n", (long)strlen(str1), str1, step[majorPremiseStep]);*/
        /* Skip the subproof for the major premise to find the
           minor premise */
        subproof = proof1 + i + pos + 2;
        level = 1;
        pos = 0;
        while (1) {
          switch (subproof[pos]) {
            case 0: bug(208);
            case 'D': case 'd': level++; break;
            default: level--;
          }
          if (level == 0) {
            break;
          }
          pos++;
        }
        let(&str1, mid(proof1, minorPremiseStep + 1, pos + 1));
        /*if ((long)strlen(str1) > 21) printf("try ");*/
        /*print2("min %ld %s %s\n", (long)strlen(str1), str1, step[minorPremiseStep]);*/


        /* Make substitutions so conclusion and consequent of
           major premise match */
        /* "o" is a new unused variable (if we run out of variables,
           a bug check will catch it) */
        /* Put new before conclusion */
        let(&str2, cat(">", "o", substitutedStep[i], NULL));
        /* Express a p->p theorem to detach from */
        let(&str2, cat(">", str2, str2, NULL));
        /* Detach from p->p to force unification */
        let(&str1, "");
        str1 = dAlgorithm(str2, step[majorPremiseStep]);
        if (!str1[0]) bug(209);
        /* Result of unification consequent-substituted major premise */
        let(&(substitutedStep[majorPremiseStep]), str1);

        /* Make substitutions so minor premise and antecedent of
           major premise match */
        /* "o" is a new unused variable (if we run out of variables,
           a bug check will catch it) */
        /* Put new variable after minor premise */
        let(&str2, cat(">", step[minorPremiseStep], "o", NULL));
        /* Express a p -> p theorem to detach from */
        let(&str2, cat(">", str2, str2, NULL));
        /* Detach from p -> p to force unification */
        let(&str1, "");
        str1 = dAlgorithm(str2, substitutedStep[majorPremiseStep]);
        if (!str1[0]) bug(210);

        /* Get final antecedent and consequent */
        let(&antecedent, mid(str1, 2,
            (long)strlen(str1) - (long)strlen(substitutedStep[i]) - 1));
        let(&consequent, right(str1,
            (long)strlen(str1) - (long)strlen(substitutedStep[i]) + 1 ));
        let(&(substitutedStep[i]), consequent);
        let(&(substitutedStep[minorPremiseStep]), antecedent);
        let(&(substitutedStep[majorPremiseStep]),
            cat(">", antecedent, consequent, NULL));

      }
    }

 /*D*/zzz:
    /* Display proof */
    totalSize = 0;
    longestSize = 0;
    totalSizeSubst = 0;
    longestSizeSubst = 0;
    for (i = proofLen - 1; i >= 0; i--) {
      level = (indentation[i] - 1) * 2;
      pos = proofLen - i;
      if (pos < 10) level++;
      if (pos < 100) level++;
      if (pos < 1000) level++;
      /*print2("Step %ld: %s %c %s\n", pos, space(level), proof1[i], step[i]);*/
      let(&str1, "");  /* Purge temp string stack */
      /*D*/ /**/
      let(&(substitutedStep[i]), edit(substitutedStep[i], 32));
      totalSize += (long)strlen(step[i]);
      if (longestSize < (long)strlen(step[i]))
        longestSize = (long)strlen(step[i]);
      totalSizeSubst += (long)strlen(substitutedStep[i]);
      if (longestSizeSubst < (long)strlen(substitutedStep[i]))
        longestSizeSubst = (long)strlen(substitutedStep[i]);
      /*print2("Step %ld: %s %c %s\n", pos, space(level), proof1[i],
            substitutedStep[i]); */
      /**/ /*D*/
    }
  }
  print2("Tot/longest = %ld, %ld; tot/longest subst. = %ld, %ld; steps = %ld %ld %s %s\n",
      totalSize, longestSize, totalSizeSubst, longestSizeSubst, proofLen,
      (long)strlen(stack[0]), proof1, stack[0]);

  if (stackTop != 0) bug(107);
  for (i = 1; i <= maxStack; i++) let(&(stack[i]), "");
  for (i = 0; i < proofLen; i++) let(&(step[i]), "");
  for (i = 0; i < proofLen; i++) let(&(substitutedStep[i]), "");
  let(&str1, "");
  let(&str2, "");
  let(&antecedent, "");
  let(&consequent, "");
  let(&proof1, "");
  return stack[0];
}


/* Note: the caller must deallocate the returned string. */
/* Note: the input arguments must not be temporary string allocations. */
/* This function returns the result of a D proof e.g. DD211 using axioms
   in the global axiom[] array.  If the proof doesn't exist, an empty
   string is returned. */
vstring dProof(vstring proof) {
#define MAX_DSTACK 100
  vstring stack[MAX_DSTACK];
  vstring dResult = "";
  long i, j;
  long stackTop = -1;
  long maxStack = -1;
  long proofLen;

  /* Preprocess */
  proofLen = (long)strlen(proof);

  for (i = proofLen - 1; i >= 0; i--) {
    if (proof[i] == 'D') {
      stackTop--;
      if (stackTop < 0) {
        /*was: bug(102);*/
        fprintf(stderr, "?Error: Stack exhausted (too many Ds?)\n");
        exit(1);
      }
      let(&dResult, "");
      dResult = dAlgorithm(stack[stackTop + 1], stack[stackTop]);
      if (!(dResult[0])) {
        stackTop = 0;
        let(&stack[0], "");
        goto RETURN_POINT;
      }
      let(&(stack[stackTop]), dResult);
    } else {
      stackTop++;
      if (stackTop >= MAX_DSTACK) bug(104);
      if (stackTop > maxStack) {
        maxStack = stackTop;
        stack[stackTop] = "";
      }
      /* The axioms must be from this set of letters */
      j = instr(1, "123456789abcefghijklmnopqrstuvwxyz", mid(proof, i + 1, 1));
      if (j == 0) bug(108);
      let(&(stack[stackTop]), axiom[j]);
    }
  }

RETURN_POINT:
  if (stackTop != 0) /*bug(109)*/ {
    fprintf(stderr, "?Error: Stack was not emptied (too few Ds?)\n");
    exit(1);
  }
  for (i = 1; i <= maxStack; i++) let(&(stack[i]), "");
  let(&dResult, "");
  return stack[0];
}

/* Note: the caller must deallocate the returned string. */
/* Note: the input arguments must be fixed strings, not temporary
   allocations returned by string functions such as seg() etc. */
vstring dAlgorithm(vstring majorPremise, vstring minorPremise) {

  /* This implements exactly Algorithm D described in the article "A
     Finitely Axiomatized Formalization of Predicate Calculus with Equality".
     Hence goto's are used according to the algorithm's steps and not
     according to recommended C programming style.  The comments are taken
     from the LaTeX source of the article.  */

  /* The following algorithm from Peterson \cite{Peterson}, with the addition
     of step 10, generates ${\bf D}(\rightarrow FG,H)$ or shows that it does
     not exist.  A {\em subformula} is the shortest sequence of symbols that
     begins at an indicated point in a formula and satisfies the definition
     of a primitive formula.  $F$ is the subformula beginning at the second
     symbol in $\rightarrow FG$.  To find ${\bf D}(\rightarrow FG,H)$, we
     represent formulas $F$, $G$, and $H$ as strings of nonzero integers
     stored left-justified in arrays $A$, $B$, and $C$ such that (for
     example) the variables are represented by positive integers and the
     connectives by negative integers.  A zero represents the end of a
     string. */
  char *f; /* Antecedent of major premise */
  char *g; /* Consequent of major premise */
  char *h; /* Minor premise */
  vstring a = ""; /* Antecedent of major premise working array */
  vstring b = ""; /* Consequent of major premise working array */
  vstring c = ""; /* Minor premise working array */
  vstring e = ""; /* Subformula holding array */
  vstring s = ""; /* Working array for substitutions */
  vstring result = ""; /* Result string that is returned */
  char *subf; /* Temporary subformula pointer */
  char m; /* Substituted variable */
  long flen, glen, hlen, alen, blen, clen, elen, slen, maxlen;
  long level, pos, pos2, i, ascii;
  unsigned char letter; /* Next letter in normalization map */
  unsigned char map[256]; /* Normalization map */

  /* Find antecedent and consequent of major premise */
  if (majorPremise[0] != '>') { /* Unification not possible */
    let(&result, "");
    goto RETURN_POINT;
  }
  f = majorPremise + 1; /* Antecedent */
  level = 1;
  pos = 0;
  while (1) {
    switch (f[pos]) {
      case 0: return "";
      case '>': level++; break;
      case '~': break;
      default: level--;
    }
    if (level == 0) break;
    pos++;
  }
  flen = pos + 1;

  g = f + flen;
  level = 1;
  pos = 0;
  while (1) {
    switch (g[pos]) {
      case 0: bug(2);
      case '>': level++; break;
      case '~': break;
      default: level--;
    }
    if (level == 0) break;
    pos++;
  }
  glen = pos + 1;
  if (g[glen] != 0) bug(3);

  /* Compute length (and syntax-check) minor premise */
  h = minorPremise;
  level = 1;
  pos = 0;
  while (1) {
    switch (h[pos]) {
      case 0: return "";
      case '>': level++; break;
      case '~': break;
      default: level--;
    }
    if (level == 0) break;
    pos++;
  }
  hlen = pos + 1;
  if (h[hlen] != 0) bug(5);

  maxlen = (flen + glen) * hlen; /* Conservative maximum result length */
  /* Allocate enough working space */
  let(&a, space(maxlen));
  let(&b, space(maxlen));
  let(&c, space(maxlen));
  let(&e, space(maxlen));
  let(&s, space(maxlen));

  /* Transfer input to working arrays */
  for (pos = 0; pos < flen; pos++) a[pos] = f[pos];
  for (pos = 0; pos < glen; pos++) b[pos] = g[pos];
  for (pos = 0; pos < hlen; pos++) c[pos] = h[pos];
  alen = flen;  blen = glen;  clen = hlen;

  /* {\bf Algorithm ${\bf D}$} (Condensed detachment) \hspace{.5em} */
  /* {\em Step 1.} Renumber the variables in $C$ so that it has no variables
         in common with $A$ and $B$. */
  for (pos = 0; pos < clen; pos++) {
    /* We assume all variables are lower case; rename to upper case */
    if (c[pos] != '>' && c[pos] != '~') {

      /* m = toupper(c[pos]);*/

      /* 21-Mar-2018 nm */
      /* Convert lowercase to uppercase */
      /*
      if ((case_flag) && (islower(sout[i])))
         sout[i] = toupper(sout[i]);
      */
      /* 13-Jun-2009 nm The upper/lower case C functions have odd behavior
         with characters > 127, at least in lcc.  So this was rewritten to
         not use them. */
      m = (char)c[pos];
      /* 21-Mar-2018 nm Needs rewrite if >25 letters are needed (excluding D) */
      if (c[pos] >= 'a' && c[pos] <= 'z') {
        m = (char)(c[pos] - ('a' - 'A'));
      }


      if (m == c[pos]) {
        fprintf(stderr, "?Fatal error: ran out of letters (>26 attempted).\n");
        bug(6); /* Running out of lcase letters can cause this */
      }
      c[pos] = m;
    }
  }

  /* {\em Step 2.} Set $i$ to $0$. */
  i = 0;

STEP3:
  /* {\em Step 3.} Increase $i$ by $1$ until $A[i]\neq C[i]$ or $C[i]=0$. */
  while (1) {
    if (a[i] != c[i] || c[i] == 0) break;
    i++;
  }

  /* {\em Step 4.} If $C[i]=0$ then go to 10.  Otherwise continue. */
  if (c[i] == 0) goto STEP10;

  /* {\em Step 5.} If $C[i]$ is a variable then set $m$ to $C[i]$ and place the
         subformula beginning with $A[i]$ in array $E$.  Go to 8.
         Otherwise continue. */
  if (c[i] != '>' && c[i] != '~') {
    m = c[i];
    /* Get the subformula */
    subf = a + i;
    level = 1;
    pos = 0;
    while (1) {
      switch (subf[pos]) {
        case 0: bug(7);
        case '>': level++; break;
        case '~': break;
        default: level--;
      }
      e[pos] = subf[pos];
      if (level == 0) {
        break;
      }
      pos++;
    }
    elen = pos + 1;
    goto STEP8;
  }

  /* {\em Step 6.} If $A[i]$ is a variable then set $m$ to $A[i]$ and place the
         subformula beginning with $C[i]$ in array $E$.  Go to 8.
         Otherwise continue. */
  if (a[i] != '>' && a[i] != '~') {
    m = a[i];
    /* Get the subformula */
    subf = c + i;
    level = 1;
    pos = 0;
    while (1) {
      switch (subf[pos]) {
        case 0: bug(8);
        case '>': level++; break;
        case '~': break;
        default: level--;
      }
      e[pos] = subf[pos];
      if (level == 0) {
        break;
      }
      pos++;
    }
    elen = pos + 1;
    goto STEP8;
  }

STEP7:
  /* {\em Step 7.} Terminate the algorithm.  ${\bf D}(\rightarrow FG,H)$ does
         not exist. */
  let(&result, "");
  goto RETURN_POINT;

STEP8:
  /* {\em Step 8.} If $m$ occurs in array $E$ then go to 7.  Otherwise
         continue. */
  for (pos = 0; pos < elen; pos++) {
    if (e[pos] == m) goto STEP7;
  }

  /* {\em Step 9.} Substitute the content of array $E$ for each occurrence
         of $m$ throughout arrays $A$, $B$, and $C$.  Go to 3. */
  slen = 0;
  for (pos = 0; pos < alen; pos++) {
    if (a[pos] == m) {
      for (pos2 = 0; pos2 < elen; pos2++) {
        s[slen] = e[pos2];
        slen++;
      }
    } else {
      s[slen] = a[pos];
      slen++;
    }
  }
  for (pos = 0; pos < slen; pos++) a[pos] = s[pos];
  alen = slen;

  slen = 0;
  for (pos = 0; pos < blen; pos++) {
    if (b[pos] == m) {
      for (pos2 = 0; pos2 < elen; pos2++) {
        s[slen] = e[pos2];
        slen++;
      }
    } else {
      s[slen] = b[pos];
      slen++;
    }
  }
  for (pos = 0; pos < slen; pos++) b[pos] = s[pos];
  blen = slen;

  slen = 0;
  for (pos = 0; pos < clen; pos++) {
    if (c[pos] == m) {
      for (pos2 = 0; pos2 < elen; pos2++) {
        s[slen] = e[pos2];
        slen++;
      }
    } else {
      s[slen] = c[pos];
      slen++;
    }
  }
  for (pos = 0; pos < slen; pos++) c[pos] = s[pos];
  clen = slen;

  goto STEP3;

STEP10:
  /* {\em Step 10.} ({\em Normalization}) Renumber the variables in $B$ so that
         they occur, by first appearance, in alphabetic order
         $a$, $b$, $c$,\ldots .  Terminate the
         algorithm.  The content of array $B$ is ${\bf D}(\rightarrow FG,H)$. */
  let(&result, space(blen));
  letter = 'p' - 1;
  for (ascii = 0; ascii < 256; ascii++) map[ascii] = 0;
  for (pos = 0; pos < blen; pos++) {
    if (b[pos] != '>' && b[pos] != '~') {
      if (map[(unsigned char)(b[pos])] == 0) {
        letter++;
        /* If this bug occurs, the result exceeds the number of letters this
           procedure can handle.  The algorithm will have to be revised. */
        /* (Alternately, just return "" as if unification were not possible) */
        /*if (letter == 'p' - 1) {let(&result, ""); goto RETURN_POINT;} */
        if (letter == 'p' - 1) letter = (unsigned char)(128 + letter - ('p' - 1));
        if (letter == 255) {let(&result, ""); goto RETURN_POINT;}
        if (letter > 'z' && letter == 'z' + 1) letter = 'a';
        map[(unsigned char)(b[pos])] = letter;
      }
      result[pos] = (char)map[(unsigned char)(b[pos])];
    } else {
      result[pos] = b[pos];
    }
  }

RETURN_POINT:
  /* Deallocate string memory */
  let(&a, "");
  let(&b, "");
  let(&c, "");
  let(&e, "");
  let(&s, "");
  return result;
}



/* Return the (n+1)th parenthesization of a binary tree with size branches.
   The result is in Polish format where "D" means branch and "1" means node.
   'tree' must be a pre-allocated string with 2*size+1 bytes, which holds the
   result.   'n' must be between 0 and catalan(size)-1 inclusive. */
void btree(char *tree, long n, long size) {
  long c;
  long counter = 0;
  long subsize, i, j, ci, cj;
  c = catalan(size);
  if (n < 0 || n > c - 1) bug(299);
  if (tree == NULL) bug(297);
  for (i = 0; i < (2 * size) + 1; i++) {
    if (tree[i] == 0) bug(298);
  }
  switch (size) {
    case 0: tree[0] = '1'; return;
    /*case 1: tree[0] = 'D'; tree[1] = '1'; tree[2] = '1'; return;*/
  }
  for (subsize = 0; subsize < size; subsize++) {
    ci = catalan(subsize);
    cj = catalan(size - subsize - 1);
    if (n - counter + 1 > ci * cj) {
      counter += ci * cj;
      continue;
    }
    i = ((n - counter) / cj);
    j = (n - counter) - (i * cj);
    tree[0] = 'D';
    btree(&(tree[1]), i, subsize);
    btree(&(tree[2 * (subsize + 1)]), j, size - subsize - 1);
    return;
  }
}


/* Return the (n+1)th count of the tree returned by btree(), where we replace
   the non-"D"s by "1","2",...,base.  'n' must be between 0 and
   base^(size+1) - 1 inclusive.  'size' and 'tree' are the same as the
   btree() arguments.  */
void btreecount(char *tree, long n, long size, long base) {
  long position, digit, digitval, m;
  if (n < 0) bug(286);
  position = size*2 + 1;
  for (digit = 0; digit <= size; digit++) {
    while (1) {
      position--;
      if (position < 0) bug(289);
      if (tree[position] == 0) bug(288);
      if (tree[position] != 'D') break;
    }
    m = n / base;
    digitval = n - m*base;
    n = m;
    tree[position] = (char)('1' + digitval);
  }
  if (n != 0) bug(287);
  return;
}


/* Compute the nth Catalan number = binom(2n,n)/(n+1) */
long catalan(long n)
{
  long c = 1;
  long j, m;
  if (n < 2) return 1;
  if (n > 14) {
    /* Handle cases that would have integer overflow below */
    if (LONG_MAX < 2147483647) bug(300);
    switch (n) {
      /*
      case 0: return 1;
      case 1: return 1;
      case 2: return 2;
      case 3: return 5;
      case 4: return 14;
      case 5: return 42;
      case 6: return 132;
      case 7: return 429;
      case 8: return 1430;
      case 9: return 4862;
      case 10: return 16796;
      case 11: return 58786;
      case 12: return 208012;
      case 13: return 742900;
      case 14: return 2674440;
      */
      case 15: return 9694845;
      case 16: return 35357670;
      case 17: return 129644790;
      case 18: return 477638700;
      case 19: return 1767263190;
      /*
      case 20: return 6564120420;
      case 21: return 24466267020;
      case 22: return 91482563640;
      case 23: return 343059613650;
      case 24: return 1289904147324;
      */
      default: bug(301); /* Integer overflow */
    }
  }
  m = 2 * n;
  for (j = 1; j <= n; j++) {
    c = (c * (m - j + 1)) / j;
  }
  return c / (n + 1);
}


/* Compare strings for qsort */
int qsortStringCmp(const void *p1, const void *p2)
{
  long i1, i2;
  /* Returns -1 if p1 < p2, 0 if equal, 1 if p1 > p2 */
  i1 = (long)strlen(*(char * const *)p1);
  i2 = (long)strlen(*(char * const *)p2);
  if (i1 < i2) return -1;
  if (i1 > i2) return 1;
  /* Use line */
  return strcmp(*(char * const *)p1, *(char * const *)p2);
}

/* Compare strings for bsearch */
int bsearchStringCmp(const void *key, const void *data)
{
  long i1, i2;
  /* Returns -1 if p1 < p2, 0 if equal, 1 if p1 > p2 */
  i1 = (long)strlen(key);
  i2 = (long)strlen(*(char * const *)data);
  if (i1 < i2) return -1;
  if (i1 > i2) return 1;
  /* Use line */
  return strcmp(key, *(char * const *)data);
}



/* ***Note:  The caller must deallocate returned string! */
/* Convert normal to Polish notation */
/* recursiveCall should be 0 when calling from outside, and nonzero when
   toPolish calls itself recursively */
/* Since this error checks user's input arguments, error exits program with
   message rather than return an error value */
vstring toPolish(vstring equation)
{
 /* This function converts a theorem in parentheses notation to
    one in Polish notation */

  long i, j, k, eqnLen, subEqn1Len, subEqn2Len;
  char operation;
  vstring polEqn = "";
  vstring equation1 = "";
  vstring subEqn1 = "";
  vstring subEqn2 = "";
  vstring polSubEqn1 = "";
  vstring polSubEqn2 = "";
  vstring quantifiers = "";
  static long recursiveCall = 0;

  /* Make any tempAlloc of equation permanent */
  let(&equation1, equation);

  eqnLen = (long)strlen(equation1);
  if (!recursiveCall) {
    /* Count parentheses for better user information */
    j = 0; k = 0;
    for (i = 0; i < eqnLen; i++) {
      if (equation1[i] == '(') j++;
      if (equation1[i] == ')') k++;
    }
    if (j != k) {
      print2("?Error: There are %ld left but %ld right parentheses in %s\n",
          j, k, equation1);
      exit(0);
    }
    /* Upon first entry, strip off quantifiers to leave only the
       wff part of a qwff in prenex normal form */
    for (i = eqnLen - 1; i >= -1; i--) {
      if (i == -1) break;
      if (strchr(QUANTIFIER_CONNECTIVES, equation1[i]) != NULL)
        break;
    }
    if (i >= 0) {
      /* There are quantifiers; remove and save them */
      let(&quantifiers, left(equation1, i + 2));
      let(&equation1, right(equation1, i + 3));
      eqnLen = (long)strlen(equation1); /* Correct eqnLen */
      /* Check quantifier syntax */
      j = (long)strlen(quantifiers);
      for (i = 0; i < j; i = i + 2) {
        if (strchr(QUANTIFIER_CONNECTIVES, quantifiers[i]) == NULL) {
          print2("?Error: Character position %ld should be @ or ] in %s%s\n",
              (long)(i + 1), quantifiers, equation1);
          print2("?Make sure input expression is in prenex normal form.\n");
          exit(0);
        }
        if (strchr(VAR_LIST, quantifiers[i + 1]) == NULL
            || quantifiers[i + 1] == 0) {
          print2(
              "?Error: Character position %ld should be a variable in %s%s\n",
              (long)(i + 2), quantifiers, equation1);
          print2("?Make sure input expression is in prenex normal form.\n");
          exit(0);
        }
        for (k = 0; k < j; k = k + 2) {
          if (k == i) continue;
          if (quantifiers[i + 1] == quantifiers[k + 1]) {
            print2("?Error: Variable %c is quantified twice in %s%s\n",
                quantifiers[i + 1], quantifiers, equation1);
            exit(0);
          }
        }
      }
    }
  }

  subEqn1Len = subEqnLen(equation1);
  let(&subEqn1, left(equation1, subEqn1Len));

  if (subEqn1Len == eqnLen) {
    /* Handle unary prefix operators */
    if (equation1[0] == NEG_OPER || equation1[0] == NOT_OPER) {
      /* Skip for D rule */
      if (equation1[0] == NEG_OPER && 0) {
        /* Check to make sure it does not scope metalogic or relations */
        j = (long)strlen(equation1);
        for (i = 1; i < j; i++) {
          if (strchr(LOGIC_AND_RELATION_CONNECTIVES, equation1[i]) != NULL) {
            print2("?Error: %c should not be in scope of %c in %s\n",
                equation1[i], equation1[0], equation1);
            exit(0);
          }
        }
      }
      recursiveCall++;
      polSubEqn1 = toPolish(right(equation1, 2));
      recursiveCall--;

      /* Make sure a logical connective does scope a wff */
      /* Skip for D rule */
      if (equation1[0] == NOT_OPER && 0) {
        if (strchr(LOGIC_AND_RELATION_CONNECTIVES, polSubEqn1[0]) == NULL) {
          print2("?Error:  %c should scope wffs in %s but %s is not a wff\n",
              NOT_OPER, equation1, right(subEqn1, 2));
          exit(0);
        }
      }

      let(&polEqn, cat(left(equation1, 1), polSubEqn1, NULL));
      goto exitPoint;
    }

    /* Handle expression enclosed in parentheses */
    if (equation1[0] == '(') {
      /* Strip parentheses */
      recursiveCall++;
      polEqn = toPolish(seg(equation1, 2, eqnLen - 1));
      recursiveCall--;
    } else {
      if (subEqn1Len != 1) {
        print2("?Error:  Expected expression %s to be length 1\n",
            equation1);
        exit(0);
      }
      if (strchr(cat(VAR_LIST, "01", NULL), equation1[0]) == NULL) {
        print2("?Error:  Expected %s to be a variable or 0 or 1\n",
            equation1);
        exit(0);
      }
      /* It's a variable or constant */
      let(&polEqn, subEqn1);
    }
    goto exitPoint;
  } /* if (subEqn1Len == eqnLen) */

  operation = equation1[subEqn1Len];
  if (strchr(ALL_BIN_CONNECTIVES, operation) == NULL) {
    print2("?Error:  Expected %c to be a binary connective in %s\n",
        operation, equation1);
    exit(0);
  }
  subEqn2Len = subEqnLen(right(equation1, subEqn1Len + 2));
  let(&subEqn2, right(equation1, subEqn1Len + 2));
  if (subEqn1Len + 1 + subEqn2Len != eqnLen) {
    print2("?Error:  Expected %s not %s after %c in %s\n",
        mid(equation1, subEqn1Len + 2, subEqn2Len), subEqn2,
        operation, equation1);
    exit(0);
  }
  /* Should be caught by above error check */
  if (subEqn2Len != (long)strlen(subEqn2)) bug(250);

  /* Make sure a lattice operator doesn't scope a wff */
  if (strchr(OPER_AND_RELATION_BIN_CONNECTIVES, operation) != NULL) {
    /* Check to make sure it does not scope metalogic or relations */
    for (i = 0; i < subEqn1Len; i++) {
      /* Skip for D rule */
      if (strchr(LOGIC_AND_RELATION_CONNECTIVES, subEqn1[i]) != NULL && 0) {
        print2("?Error: %c should not be in scope of %c in %s\n",
            subEqn1[i], operation, equation1);
        exit(0);
      }
    }
    for (i = 0; i < subEqn2Len; i++) {
      /* Skip for D rule */
      if (strchr(LOGIC_AND_RELATION_CONNECTIVES, subEqn2[i]) != NULL && 0) {
        print2("?Error: %c should not be in scope of %c in %s\n",
            subEqn2[i], operation, equation1);
        exit(0);
      }
    }
  }

  /* Build the polish version */
  recursiveCall++;
  polSubEqn1 = toPolish(subEqn1);
  polSubEqn2 = toPolish(subEqn2);
  recursiveCall--;

  /* Make sure a logical connective does scope a wff */
  if (strchr(LOGIC_BIN_CONNECTIVES, operation) != NULL) {
    if (strchr(LOGIC_AND_RELATION_CONNECTIVES, polSubEqn1[0]) == NULL) {
      print2("?Error:  %c should scope wffs in %s but %s is not a wff\n",
          operation, equation1, subEqn1);
      exit(0);
    }
    if (strchr(LOGIC_AND_RELATION_CONNECTIVES, polSubEqn2[0]) == NULL) {
      print2("?Error:  %c should scope wffs in %s but %s is not a wff\n",
          operation, equation1, subEqn2);
      exit(0);
    }
  }

  let(&polEqn, cat(chr(operation), polSubEqn1, polSubEqn2, NULL));

 exitPoint:
  if (!recursiveCall
      && strchr(LOGIC_AND_RELATION_CONNECTIVES, polEqn[0]) == NULL) {
    print2("?Error:  %s is a term, not a wff\n", equation1);
    exit(0);
  }

  if (!recursiveCall) {
    /* Place any quantifiers back onto result */
    let(&polEqn, cat(quantifiers, polEqn, NULL));
  }

  /* Print the Polish subequation for debugging */
  /*print2("%ld %s\n",recursiveCall, polEqn);*/

  /* Deallocate strings */
  let(&equation1, "");
  let(&subEqn1, "");
  let(&subEqn2, "");
  let(&polSubEqn1, "");
  let(&polSubEqn2, "");

  return polEqn;

} /* toPolish */


/* Called by toPolish */
/* Returns length of first subequation */
long subEqnLen(vstring subEqn)
{
  long i, j, k;
  i = 0;
  j = 0;
  k = (long)strlen(subEqn);
  while (1) {
    if (i >= k) break;
    if (subEqn[i] == NEG_OPER || subEqn[i] == NOT_OPER) {
      i++;
      continue;
    }
    if (subEqn[i] == '(') {
      j++;
      i++;
      continue;
    }
    if (subEqn[i] == ')') {
      j--;
    }
    i++;
    if (j == 0) break;
  }
  return i;
} /* subEqnLen */


/* Preprocessor for user input equations that adds parenthesis for
   user-friendliness.  It also changes a postfix "`" unary operator to
   a prefix "-" operator, if the user prefers postfix for complement. */
vstring parenthesize(vstring equation) {

  /* Define connectives, arity, binding strength (higher is stronger).
     Note that in CONN_STRENGTH, ASCII '/' is 1 less than ASCII '0'.
     Note that the ' or ` connective is a postfix connective replaced with
     the - prefix connective in the final equation.  All other unary
     connectives must be prefix. */
#define CONNECTIVES   "^v#OI2345=<>[&V}:-~`"
#define CONN_ARITY    "22222222222222222111"
/* #define CONN_STRENGTH "7645555553333210/928" */
#define CONN_STRENGTH "6547777773333210/928"
  /* For each possible strength value, define evaluation direction
     (L = left to right, R = right to left) */
#define STRENGTHS   "/0123456789"
/* #define EVAL_DIR    "LRLLLLRLLLR" */
#define EVAL_DIR    "LRLLLLLLRLR"


  vstring equation1 = "";
  vstring expr2 = "";
  vstring unaryConnectives = "";
  vstring quantifiers = "";
  vstring *subExprArray;
  long i;
  long j;
  long k;
  long m;
  long level;
  long tokens;
  unsigned char strength;
  long arity;
  long subexpr;
  long newSubExprPosition;
  long startToken;
  long endToken;
  long evalDir;

  if (!equation[0]) {
    print2("?Error: Empty equation");
    exit(1);
  } /* end if */

  /* Make any tempAlloc of equation permanent */
  let(&equation1, equation);

  tokens = (long)strlen(equation1);

  /* Strip off any quantifiers to leave only the
     wff part of a quantified wff in prenex normal form */
  for (i = tokens - 1; i >= -1; i--) {
    if (i == -1) break;
    if (strchr(QUANTIFIER_CONNECTIVES, equation1[i]) != NULL)
      break;
  }
  if (i >= 0) {
    /* There are quantifiers; remove and save them */
    let(&quantifiers, left(equation1, i + 2));
    let(&equation1, right(equation1, i + 3));
    tokens = (long)strlen(equation1); /* Correct the length */
  }

  /* Allocate and initialize a string array for subequations */
  subExprArray = malloc((long unsigned int)tokens * sizeof(vstring));
  if (subExprArray == NULL) {
    print2("?Error: Out of memory\n");
    exit(1);
  }
  for (i = 0; i < tokens; i++) {
    subExprArray[i] = "";
    /* Start off by making each "subequation" a token */
    let(&(subExprArray[i]), chr(equation1[i]));
  }

  /* Internal error check */
  if ((long)strlen(CONNECTIVES) != (long)strlen(CONN_ARITY)
      || (long)strlen(CONNECTIVES) != (long)strlen(CONN_STRENGTH)
      || (long)strlen(STRENGTHS) != (long)strlen(EVAL_DIR)) bug(401);
  /* Internal error check; also build list of unary connectives */
  let(&unaryConnectives, "");
  for (i = 0; i < (long)strlen(CONNECTIVES); i++) {
    if (CONN_ARITY[i] == '1') {
      let(&unaryConnectives, cat(unaryConnectives, chr(CONNECTIVES[i]), NULL));
    } else {
      if (CONN_ARITY[i] != '2') {print2("%c\n",CONN_ARITY[i]); bug(402);}
    }
    if (CONN_STRENGTH[i] < '/' || CONN_STRENGTH[i] > '9') bug(403);
  }
  /* Internal error check */
  for (i = 0; i < (long)strlen(STRENGTHS); i++) {
    if (CONN_ARITY[i] == '1') {
      let(&unaryConnectives, cat(unaryConnectives, chr(CONNECTIVES[i]), NULL));
    } else {
      if (CONN_ARITY[i] != '2') bug(404);
    }
    if (STRENGTHS[i] - '/' != i) bug(405);
    if (EVAL_DIR[i] != 'L' && EVAL_DIR[i] != 'R') bug(406);
  }

  /* Evaluate anything in parentheses */
  for (i = 0; i < tokens; i++) {
    /* Note: tokens will be modified inside this loop */
    if (i >= tokens) break;  /* needed in MS BASIC */
    if (!strcmp(subExprArray[i], ")")) {
      print2("?Error: ')' without a matching '(' in '%s'",  equation1);
      exit(0);
    } /* end if */
    if (!strcmp(subExprArray[i], "(")) {
      let(&expr2, "");
      level = 1;
      for (j = i + 1; j < tokens; j++) {
        if (j >= tokens) break; /* needed in MS BASIC */
        if (!strcmp(subExprArray[j], ")")) {
          level--;
          if (level == 0) {

            /* Recursive call */
            let(&(subExprArray[i]), "");
            subExprArray[i] = parenthesize(expr2);

            /* Clean up the returned expression */
            /* Strip off all outer parentheses */
            while (subExprArray[i][0] == '('
                && subExprArray[i][(long)strlen(subExprArray[i]) - 1] == ')' ) {
              /* Make sure we don't remove too many */
              m = 0;
              for (k = 1; k < (long)strlen(subExprArray[i]) - 1; k++) {
                if (subExprArray[i][k] == '(') m++;
                if (subExprArray[i][k] == ')') m--;
                if (m < 0) break;
              }
              if (m < 0) break;
              let(&(subExprArray[i]), seg(subExprArray[i], 2,
                  (long)strlen(subExprArray[i]) - 1));
            }
            /* If we're left with one character (must be a variable), leave it
               alone, otherwise add parentheses unless it starts with a unary
               operator */
            if ((long)strlen(subExprArray[i]) > 1 && (strchr(unaryConnectives,
                subExprArray[i][0]) == NULL || 1)) {    /* FIX THIS for -(-avb) */
              let(&(subExprArray[i]), cat("(", subExprArray[i], ")", NULL));
            } else {
              if (!subExprArray[i][0]) bug(407); /* Empty subexpression */
              if ((long)strlen(subExprArray[i]) == 1) {
                if (strchr(cat(VAR_LIST, "01", NULL), subExprArray[i][0]) == NULL) {
                  /* Was not in variable list */
                  print2("?Error: Expected '%s' to be a variable or 0 or 1 in '%s'\n",
                      subExprArray[i], equation1);
                  exit(1);
                }
              }
            }

            /* Move down the tokens into gap left by subexpression */
            tokens -= j - i;  /* Warning: changing loop end variable here! */
            for (k = i + 1; k < tokens; k++) {
              let(&(subExprArray[k]),  subExprArray[k + j - i]);
            } /* next k */
            break;
          } /* end if */
        } /* end if */
        if (!strcmp(subExprArray[j], "(")) {
          level++;
        } /* end if */
        let(&expr2, cat(expr2, subExprArray[j], NULL));
      } /* next j */
      if (level != 0) {
        print2("?Error: '(' without a matching ')' in '%s'", equation1);
        exit(1);
      } /* end if */
    } /* end if */
  } /* next i */


  /* Scan operations from greatest to least binding strength */
  for (strength = '9'; strength >= '/'; strength--) {
    if (EVAL_DIR[strength - '/'] == 'L') {
      startToken = 0;
      endToken = tokens - 1;
      evalDir = 1;
    } else {
      if (EVAL_DIR[strength - '/'] != 'R') bug(408);
      startToken = tokens - 1;
      endToken = 0;
      evalDir = -1;
    }
    for (subexpr = startToken; evalDir * subexpr <= evalDir * endToken;
        subexpr += evalDir) {
      /* See if it's an operator of this strength */
      if ((long)strlen(subExprArray[subexpr]) != 1) continue;
      j = instr(1, CONNECTIVES, subExprArray[subexpr]);
      if (!j) continue;
      if (CONN_STRENGTH[j - 1] != strength) continue;
      arity = (long)(CONN_ARITY[j - 1] - '0');
      if (subexpr == 0 && (evalDir == 1 || arity == 2)) {
        print2("?Error: Missing operand on left-hand side of '%s'\n",
            equation1);
        exit(0);
      }
      if (subexpr == tokens - 1 && (evalDir == -1 || arity == 2)) {
        print2("?Error: Missing operand on right-hand side of '%s'\n",
            equation1);
        exit(0);
      }
      for (i = -1; i <=1; i += 2) {
        if (arity == 2 || i == -evalDir) {
         if ((long)strlen(subExprArray[subexpr + i]) == 1) {
           if (strchr(cat(VAR_LIST, "01", NULL),
               subExprArray[subexpr + i][0]) == NULL) {
             /* Was not in variable list */
             print2(
                 "?Error: Expected '%s' to be a variable or 0 or 1 in '%s'\n",
                 subExprArray[subexpr + i], equation1);
             exit(1);
           }
         }
        }
      }
      if (arity == 1) {
        /* Process unary operator */
        if (strcmp(subExprArray[subexpr], "`")) {
          /* Normal unary connective - must be right-to-left evaluation */
          if (evalDir != -1) bug(409);
          let(&expr2, cat(subExprArray[subexpr],
              subExprArray[subexpr + 1], NULL));
          newSubExprPosition = subexpr;
        } else {
          /* Special bonus case for user-friendliness: convert ` to - and swap
             evaluation order to right-to-left */
          if (evalDir != 1) bug(410);
          let(&expr2, cat("-", subExprArray[subexpr - 1], NULL));
          newSubExprPosition = subexpr - 1;
        }
      } else {
        /* Process binary operator */
        if (arity != 2) bug(411);
        let(&expr2, cat("(", subExprArray[subexpr - 1],
            subExprArray[subexpr], subExprArray[subexpr + 1], ")", NULL));
        newSubExprPosition = subexpr - 1;
      }

      /* Move down the tokens into gap left by subexpression */
      subexpr = newSubExprPosition;  /* Warning: changing loop variable here! */
                                     /* (OK, I know it's bad programming...) */
      let(&(subExprArray[subexpr]), expr2);
      tokens -= arity;
      if (evalDir == 1) endToken = tokens - 1;
                                    /* Warning: changing loop end variable here! */
      for (k = subexpr + 1; k < tokens; k++) {
        let(&(subExprArray[k]),  subExprArray[k + arity]);
      } /* next k */
    } /* next subexpr */
  } /* next strength */

  if (tokens <= 0) bug(412);
  if (tokens != 1) {
    print2("?Error:  There is no connective between subexpressions");
    for (i = 0; i < tokens - 1; i++) {
      print2(" '%s'", subExprArray[i]);
      if (tokens > 2) print2(",");
    }
    print2(" and '%s'\n", subExprArray[tokens - 1]);
    exit(1);
  }

  /* Final expression */
  let(&expr2, subExprArray[0]);
  if (expr2[0] == '(') {
    /* For the *outermost* expression, don't put parentheses
       (aesthetic convention) */
    let(&expr2, seg(expr2, 2, (long)strlen(expr2) - 1));
  }
  /* Add back any quantifiers */
  let(&expr2, cat(expr2, quantifiers, NULL));


  /* Deallocate memory */
  tokens = (long)strlen(equation1);
  for (i = 0; i < tokens; i++) {
    let(&(subExprArray[i]), "");
  }
  free(subExprArray);
  let(&equation1, "");
  let(&unaryConnectives, "");
  let(&quantifiers, "");

  /* Caller must deallocate this */
  return expr2;

} /* parenthesize */


/* ***Note:  The caller must deallocate returned string */
/* Convert Polish to normal notation */
vstring fromPolish(vstring polishEqn)
{
  /* This function converts a theorem in Polish notation to one
     in parentheses notation */
  vstring stack[MAX_STACK2];
  long i, stackPtr;
  long maxStack = 0;
  vstring stackEntry = "";
  vstring ch = "";
  vstring polishEqn1 = "";
  let(&polishEqn1, polishEqn); /* In case temp alloc string is passed in */

  stackPtr = 0;
  for (i = len(polishEqn1); i >=1; i--) {
    let(&ch, mid(polishEqn1, i, 1));
    if (ch[0] == NEG_OPER || ch[0] == NOT_OPER) {
      if (stackPtr > 0) {
        let(&(stack[stackPtr]), cat(ch, stack[stackPtr], NULL));
      } else {
        print2("?Error 8: Stack underflow at %ld\n", i);
        exit(0);
      }
    } else {
      if (instr(1, ALL_BIN_CONNECTIVES, ch)) {
        if (stackPtr > 1) {
          stackPtr--;
          let(&(stack[stackPtr]), cat("(", stack[stackPtr + 1], ch,
              stack[stackPtr], ")", NULL));
        } else {
          print2("?Error 9:  Stack underflow at %ld\n", i);
          exit(0);
        }
      } else { /* Variable assumed */
        stackPtr++;
        if (stackPtr >= MAX_STACK2) {
          print2(
           "?Error 12:  Stack overflow - increase MAX_STACK2 and recompile\n");
          exit(0);
        }
        if (stackPtr > maxStack) {
          maxStack = stackPtr;
          stack[stackPtr] = "";
        }
        let(&(stack[stackPtr]), ch);
      }
    }
  } /* next i */
  if (stackPtr != 1) {
    print2("?Error 10: Stack not emptied\n");
    exit(0);
  }
  /* Deallocate vstring array */
  for (i = 2; i <= maxStack; i++) {
    let(&(stack[i]), "");
  }
  let(&ch, "");
  let(&stackEntry, "");
  let(&polishEqn1, "");
  return (stack[stackPtr]);
} /* fromPolish */

/* Convert a printable string to internal upper ASCII */
/* This function converts ascii "&a", "&b", ... to 'a'+128, 'b'+128,... */
/* Use like any vstring function (left, right,...) */
/* This function (used to parse lattice.c Hasse diagrams only)
   does not (and needs not) deal with the metalogical
   TRUE_CONST and FALSE_CONST */
vstring unPrintableString(vstring sin)
{
  vstring sout;
  long i, j, n, cc;
  /*unsigned char c;*/
  j = (long)strlen(sin);
  n = 0;
  for (i = 0; i < j; i++) if (sin[i] == '&') n++;
  sout = tempAlloc(j - n + 1);
  sout[j - n] = 0;
  n = 0;
  for (i = 0; i < j; i++) {
    if (sin[i] == '&') {
      cc = sin[i + 1];
      cc += 128;
      sout[i - n] = (char)cc;
      n++;
      i++;
    } else {
      sout[i - n] = sin[i];
    }
  }
  return sout;
}

/* Return a printable string */
/* This function converts ascii 'a'+128, 'b'+128,... to "&a", "&b", ... */
/* It also converts FALSE_CONST and TRUE_CONST to "F" and "T" - which
   could be ambigous with node names but usually shouldn't cause user
   confusion */
/* Use like any vstring function (left, right,...) */
vstring printableString(vstring sin)
{
  vstring sout;
  long i, j, k, n;
  j = (long)strlen(sin);
  n = 0;
  for (i = 0; i < j; i++) {
    /* If k is eliminated below, it introduces a bug in the lcc compiler
       with the optimization option */
    k = (unsigned char)(sin[i]);
    /* FALSE_CONST and TRUE_CONST will normally be less than 127
       (e.g. 1 and 2) but since it is not strictly required we
       AND them in for extra safety */
    if (k > 127 && k != FALSE_CONST && k != TRUE_CONST) n++;
  }
  sout = tempAlloc(j + n + 1);
  sout[j + n] = 0;
  n = 0;
  for (i = 0; i < j; i++) {
    k = (unsigned char)(sin[i]);
    if (k == FALSE_CONST) {
      sout[i + n] = 'F';
      bug(260); /* No code should currently use this */
    } else {
      if (k == TRUE_CONST) {
        sout[i + n] = 'T';
        bug(261); /* No code should currently use this */
      } else {
    if (k > 127) {
      sout[i + n] = '&';
      n++;
      sout[i + n] = (char)(k - 128);
    } else {
      sout[i + n] = sin[i];
    }
  }
    }
  }
  return (sout);
}



/***********************************************************************/
/************ Start of "vstring" body stuff ****************************/
/************ Do not touch anything from here to end of program ********/
/***********************************************************************/

/*****************************************************************************/
/*       Copyright (C) 1999  NORMAN D. MEGILL  <nm at alum.mit.edu>          */
/*             License terms:  GNU General Public License                    */
/*****************************************************************************/

/**************************************************************************

Variable-length string handler
------------------------------

     This collection of string-handling functions emulate most of the
string functions of VMS BASIC.  The objects manipulated by these functions
are strings of a special type called 'vstring' which
have no pre-defined upper length limit but are dynamically allocated
and deallocated as needed.  To use the vstring functions within a program,
all vstrings must be initially set to the null string when declared or
before first used, for example:

        vstring string1 = "";
        vstring stringArray[] = {"","",""};

        vstring bigArray[100][10]; /- Must be initialized before using -/
        int i,j;
        for (i=0; i<100; i++)
          for (j=0; j<10; j++)
            bigArray[i][j] = ""; /- Initialize -/


     After initialization, vstrings should be assigned with the 'let(&'
function only; for example the statements

        let(&string1,"abc");
        let(&string1,string2);
        let(&string1,left(string2,3));

all assign the second argument to 'string1'.  The 'let(&' function must
not be used to initialize a vstring for the first time.

     The 'cat' function emulates the '+' concatenation operator in BASIC.
It has a variable number of arguments, and the last argument should always
be NULL.  For example,

        let(&string1,cat("abc","def",NULL));

assigns "abcdef" to 'string1'.  Warning: 0 will work instead of NULL on the
VAX but not on the Macintosh, so always use NULL.

     All other functions are generally used exactly like their BASIC
equivalents.  For example, the BASIC statement

        let string1$=left$("def",len(right$("xxx",2)))+"ghi"+string2$

is emulated in c as

        let(&string1,cat(left("def",len(right("xxx",2))),"ghi",string2,NULL));

Note that ANSI c does not allow "$" as part of an identifier
name, so the names in c have had the "$" suffix removed.

     The string arguments of the vstring functions may be either standard c
strings or vstrings (except that the first argument of the 'let(&' function
must be a vstring).  The standard c string functions may use vstrings or
vstring functions as their string arguments, as long as the vstring variable
itself (which is a char * pointer) is not modified and no attempt is made to
increase the length of a vstring.  Caution must be excercised when
assigning standard c string pointers to vstrings or the results of
vstring functions, as the memory space may be deallocated when the
'le(&t' function is next executed.  For example,

        char *stdstr; /- A standard c string pointer -/
         ...
        stdstr=left("abc",2);  /- DO NOT DO THIS -/

will assign "ab" to 'stdstr', but this assignment will be lost when the
next 'let(&' function is executed.  To be safe, use 'strcpy':

        char stdstr1[80]; /- A fixed length standard c string -/
         ...
        strcpy(stdstr1,left("abc",2));

Here, of course, the user must ensure that the string copied to 'stdstr1'
does not exceed 79 characters in length.  IT IS SAFEST NOT TO USE ANY
STANDARD C STRING FUNCTIONS WITH VSTRINGS OR VSTRING FUNCTIONS UNLESS YOU
REALLY UNDERSTAND WHAT YOU ARE DOING.

     The vstring functions ('left', 'right', 'cat', etc.) allocate temporary
memory whenever they are called.  This temporary memory is deallocated
whenever a 'let(&' assignment is made.  The user should be aware of this
when using vstring functions outside of 'let(&' assignments; for example

        for (i=0; i<10000; i++)
          print2("%s\n",left(string1,70));

will allocate another 70 bytes or so of memory each 'left' call
and eventually overflow the temporary string stack.
If necessary, dummy 'let(&' assignments can be made periodically to clear
this temporary memory:

        for (i=0; i<10000; i++)
          {
          print2("%s\n",left(string1,70));
          let(&dummy,"");
          }

It should be noted that the 'linput' function assigns its target string
with 'let(&' and thus has the same deallocation effect as 'let(&'.

************************************************************************/


static void freeTempAlloc(void)
{
  /* All memory previously allocated with tempAlloc is deallocated. */
  /* EXCEPT:  When startTempAllocStack != 0, the freeing will start at
     startTempAllocStack. */
  int i;
  for (i = startTempAllocStack; i < tempAllocStackTop; i++) {
    free(tempAllocStack[i]);
  }
  tempAllocStackTop = startTempAllocStack;
} /* freeTempAlloc */


static void pushTempAlloc(void *mem)
{
  if (tempAllocStackTop >= (MAX_ALLOC_STACK-1)) {
    printf("*** FATAL ERROR ***  Temporary string stack overflow\n");
    fflush(stdout);
    bug(2201);
  }
  tempAllocStack[tempAllocStackTop++] = mem;
} /* pushTempAlloc */


static void* tempAlloc(long size)  /* String memory allocation/deallocation */
{
  void* memptr = malloc((size_t)size);
  if (!memptr || size == 0) {
    printf("*** FATAL ERROR ***  Temporary string allocation failed\n");
    fflush(stdout);
    bug(2202);
  }
  pushTempAlloc(memptr);
  return memptr;
} /* tempAlloc */


/* Make string have temporary allocation to be released by next let() */
/* Warning:  after makeTempAlloc() is called, the vstring may NOT be
   assigned again with let() */
void makeTempAlloc(vstring s)
{
  pushTempAlloc(s);
} /* makeTempAlloc */


/* 8-Jul-2013 Wolf Lammen - rewritten to simplify it */
void let(vstring *target, vstring source)        /* String assignment */
/* This function must ALWAYS be called to make assignment to */
/* a vstring in order for the memory cleanup routines, etc. */
/* to work properly.  If a vstring has never been assigned before, */
/* it is the user's responsibility to initialize it to "" (the */
/* null string). */
{

  size_t sourceLength = strlen(source);  /* Save its length */
  size_t targetLength = strlen(*target); /* Save its length */
  if (targetLength < sourceLength) { /* Old string has not enough room for new one */
    /* Free old string space and allocate new space */
    if (targetLength)
      free(*target);  /* Free old space */
    *target = malloc(sourceLength + 1); /* Allocate new space */
    if (!*target) {
      printf("*** FATAL ERROR ***  String memory couldn't be allocated\n");
      fflush(stdout);
      bug(2204);
    }
  }
  if (sourceLength) {
    strcpy(*target, source);
  } else {
    /* Empty strings could still be temporaries, so always assign a constant */
    if (targetLength) {
      free(*target);
    }
    *target= "";
  }

  freeTempAlloc(); /* Free up temporary strings used in expression computation */

} /* let */

vstring cat(vstring string1,...)        /* String concatenation */
#define MAX_CAT_ARGS 50
{
  va_list ap;   /* Declare list incrementer */
  vstring arg[MAX_CAT_ARGS];    /* Array to store arguments */
  size_t argPos[MAX_CAT_ARGS]; /* Array of argument positions in result */
  vstring result;
  int i;
  int numArgs = 0;        /* Define "last argument" */

  size_t pos = 0;
  char* curArg = string1;

  va_start(ap, string1); /* Begin the session */
  do {
        /* User-provided argument list must terminate with 0 */
    if (numArgs >= MAX_CAT_ARGS) {
      printf("*** FATAL ERROR ***  Too many cat() arguments\n");
      fflush(stdout);
      bug(2206);
    }
    arg[numArgs] = curArg;
    argPos[numArgs] = pos;
    pos += strlen(curArg);
  } while (++numArgs, (curArg = va_arg(ap,char *)) != 0);
  va_end(ap);           /* End var args session */

  /* Allocate the memory for it */
  result = tempAlloc((long)pos+1);
  /* Move the strings into the newly allocated area */
  for (i = 0; i < numArgs; ++i)
    strcpy(result + argPos[i], arg[i]);
  return result;
} /* cat */


/* 20-Oct-2013 Wolf Lammen - allow unlimited input line lengths */
/* Input a line from the user or from a file */
/* Returns 1 if a (possibly empty) line was successfully read, 0 if EOF */
int linput(FILE *stream, const char* ask, vstring *target)
{                           /* Note: "vstring *target" means "char **target" */
  /*
    BASIC:  linput "what"; a$
    c:      linput(NULL, "what?", &a);

    BASIC:  linput #1, a$                         (error trap on EOF)
    c:      if (!linput(file1, NULL, &a)) break;  (break on EOF)

  */
  /* This function prints a prompt (if 'ask' is not NULL), gets a line from
    the stream, and assigns it to target using the let(&...) function.
    0 is returned when end-of-file is encountered.  The vstring
    *target MUST be initialized to "" or previously assigned by let(&...)
    before using it in linput. */
  char f[10001]; /* Read in chunks up to 10000 characters */
  int result = 0;
  int eol_found = 0;
  if (ask) {
    printf("%s", ask);
    fflush(stdout);
  }
  if (stream == NULL) stream = stdin;
  while (!eol_found && fgets(f, sizeof(f), stream))
  {
    size_t endpos = strlen(f) - 1;
    eol_found = (f[endpos] == '\n');
    /* If the last line in the file has no newline, eol_found will be 0 here.
       The fgets() above will return 0 and prevent another loop iteration. */
    if (eol_found)
      f[endpos] = 0; /* The return string will have any newline stripped. */
    if (result)
      /* Append additional parts of the line to *target */
      /* The let() reallocates *target and copies the concatenation of the
         old *target and the additional input f[] to it */
      let(target /* = &(*target) */, cat(*target, f, NULL));
    else
      /* This is the first time through the loop, and normally
         the only one unless the input line overflows f[] */
      let(target, f);  /* Allocate *target and copy f to it */
    result = 1;
  }
  return result;
} /* linput */


/* Find out the length of a string */
long len(vstring s)
{
  return ((long)strlen(s));
} /* len */


/* Extract sin from character position start to stop into sout */
vstring seg(vstring sin, long start, long stop)
{
  if (start < 1) start = 1;
  return mid(sin, start, stop - start + 1);
} /* seg */


/* Extract sin from character position start for length len */
vstring mid(vstring sin, long start, long length)
{
  vstring sout;
  if (start < 1) start = 1;
  if (length < 0) length = 0;
  sout=tempAlloc(length + 1);
  strncpy(sout,sin + start - 1, (size_t)length);
  sout[length] = 0;
  return (sout);
} /* mid */


/* Extract leftmost n characters */
vstring left(vstring sin,long n)
{
  return mid(sin, 1, n);
} /* left */


/* Extract after character n */
vstring right(vstring sin, long n)
{
  return seg(sin, n, (long)(strlen(sin)));
} /* right */


/* Emulate VMS BASIC edit$ command */
vstring edit(vstring sin,long control)
#define isblank_(c) ((c==' ') || (c=='\t'))
    /* 11-Sep-2009 nm Added _ to fix '"isblank" redefined' compiler warning */
{
  /* EDIT$ (from VMS BASIC manual)
       Syntax:  str-vbl = EDIT$(str-exp, int-exp)
       Values   Effect
       1        Trim parity bits
       2        Discard all spaces and tabs
       4        Discard characters: CR, LF, FF, ESC, RUBOUT, and NULL
       8        Discard leading spaces and tabs
       16       Reduce spaces and tabs to one space
       32       Convert lowercase to uppercase
       64       Convert [ to ( and ] to )
       128      Discard trailing spaces and tabs
       256      Do not alter characters inside quotes

       (non-BASIC extensions)
       512      Convert uppercase to lowercase
       1024     Tab the line (convert spaces to equivalent tabs)
       2048     Untab the line (convert tabs to equivalent spaces)
       4096     Convert VT220 screen print frame graphics to -,|,+ characters

       (Added 10/24/03:)
       8192     Discard CR only (to assist DOS-to-Unix conversion)
  */
  vstring sout;
  long i, j, k, m;
  int last_char_is_blank;
  int trim_flag, discardctrl_flag, bracket_flag, quote_flag, case_flag;
  int alldiscard_flag, leaddiscard_flag, traildiscard_flag, reduce_flag;
  int processing_inside_quote=0;
  int lowercase_flag, tab_flag, untab_flag, screen_flag, discardcr_flag;
  unsigned char graphicsChar;

  /* Set up the flags */
  trim_flag = control & 1;
  alldiscard_flag = control & 2;
  discardctrl_flag = control & 4;
  leaddiscard_flag = control & 8;
  reduce_flag = control & 16;
  case_flag = control & 32;
  bracket_flag = control & 64;
  traildiscard_flag = control & 128;
  quote_flag = control & 256;

  /* Non-BASIC extensions */
  lowercase_flag = control & 512;
  tab_flag = control & 1024;
  untab_flag = control & 2048;
  screen_flag = control & 4096; /* Convert VT220 screen prints to |,-,+
                                   format */
  discardcr_flag = control & 8192; /* Discard CR's */

  /* Copy string */
  i = (long)strlen(sin) + 1;
  if (untab_flag) i = i * 7; /* Allow for max possible length */
  sout=tempAlloc(i);
  strcpy(sout,sin);

  /* Discard leading space/tab */
  i=0;
  if (leaddiscard_flag)
    while ((sout[i] != 0) && isblank_(sout[i]))
      sout[i++] = 0;

  /* Main processing loop */
  while (sout[i] != 0) {

    /* Alter characters inside quotes ? */
    if (quote_flag && ((sout[i] == '"') || (sout[i] == '\'')))
       processing_inside_quote = ~ processing_inside_quote;
    if (processing_inside_quote) {
       /* Skip the rest of the code and continue to process next character */
       i++; continue;
    }

    /* Discard all space/tab */
    if ((alldiscard_flag) && isblank_(sout[i]))
        sout[i] = 0;

    /* Trim parity (eighth?) bit */
    if (trim_flag)
       sout[i] = sout[i] & 0x7F;

    /* Discard CR,LF,FF,ESC,BS */
    if ((discardctrl_flag) && (
         (sout[i] == '\015') || /* CR  */
         (sout[i] == '\012') || /* LF  */
         (sout[i] == '\014') || /* FF  */
         (sout[i] == '\033') || /* ESC */
         /*(sout[i] == '\032') ||*/ /* ^Z */ /* DIFFERENCE won't work w/ this */
         (sout[i] == '\010')))  /* BS  */
      sout[i] = 0;

    /* Discard CR */
    if ((discardcr_flag) && (
         (sout[i] == '\015')))  /* CR  */
      sout[i] = 0;

    /* Convert lowercase to uppercase */
    /*
    if ((case_flag) && (islower(sout[i])))
       sout[i] = toupper(sout[i]);
    */
    /* 13-Jun-2009 nm The upper/lower case C functions have odd behavior
       with characters > 127, at least in lcc.  So this was rewritten to
       not use them. */
    if ((case_flag) && (sout[i] >= 'a' && sout[i] <= 'z'))
       sout[i] = (char)(sout[i] - ('a' - 'A'));

    /* Convert [] to () */
    if ((bracket_flag) && (sout[i] == '['))
       sout[i] = '(';
    if ((bracket_flag) && (sout[i] == ']'))
       sout[i] = ')';

    /* Convert uppercase to lowercase */
    /*
    if ((lowercase_flag) && (isupper(sout[i])))
       sout[i] = tolower(sout[i]);
    */
    /* 13-Jun-2009 nm The upper/lower case C functions have odd behavior
       with characters > 127, at least in lcc.  So this was rewritten to
       not use them. */
    if ((lowercase_flag) && (sout[i] >= 'A' && sout[i] <= 'Z'))
       sout[i] = (char)(sout[i] + ('a' - 'A'));

    /* Convert VT220 screen print frame graphics to +,|,- */
    if (screen_flag) {
      graphicsChar = (unsigned char)sout[i]; /* Need unsigned char for >127 */
      /* vt220 */
      if (graphicsChar >= 234 && graphicsChar <= 237) sout[i] = '+';
      if (graphicsChar == 241) sout[i] = '-';
      if (graphicsChar == 248) sout[i] = '|';
      if (graphicsChar == 166) sout[i] = '|';
      /* vt100 */
      if (graphicsChar == 218 /*up left*/ || graphicsChar == 217 /*lo r*/
          || graphicsChar == 191 /*up r*/ || graphicsChar == 192 /*lo l*/)
        sout[i] = '+';
      if (graphicsChar == 196) sout[i] = '-';
      if (graphicsChar == 179) sout[i] = '|';
    }

    /* Process next character */
    i++;
  }
  /* sout[i]=0 is the last character at this point */

  /* Clean up the deleted characters */
  for (j = 0, k = 0; j <= i; j++)
    if (sout[j]!=0) sout[k++]=sout[j];
  sout[k] = 0;
  /* sout[k] = 0 is the last character at this point */

  /* Discard trailing space/tab */
  if (traildiscard_flag) {
    --k;
    while ((k >= 0) && isblank_(sout[k])) --k;
    sout[++k] = 0;
  }

  /* Reduce multiple space/tab to a single space */
  if (reduce_flag) {
    i = j = last_char_is_blank = 0;
    while (i <= k - 1) {
      if (!isblank_(sout[i])) {
        sout[j++] = sout[i++];
        last_char_is_blank = 0;
      } else {
        if (!last_char_is_blank)
          sout[j++]=' '; /* Insert a space at the first occurrence of a blank */
        last_char_is_blank = 1; /* Register that a blank is found */
        i++; /* Process next character */
      }
    }
    sout[j] = 0;
  }

  /* Untab the line */
  if (untab_flag || tab_flag) {

    /*
    DEF FNUNTAB$(L$)      ! UNTAB LINE L$
    I9%=1%
    I9%=INSTR(I9%,L$,CHR$(9%))
    WHILE I9%
      L$=LEFT(L$,I9%-1%)+SPACE$(8%-((I9%-1%) AND 7%))+RIGHT(L$,I9%+1%)
      I9%=INSTR(I9%,L$,CHR$(9%))
    NEXT
    FNUNTAB$=L$
    FNEND
    */

    /***** old code (doesn't handle multiple lines)
    k = (long)strlen(sout);
    for (i = 1; i <= k; i++) {
      if (sout[i - 1] != '\t') continue;
      for (j = k; j >= i; j--) {
        sout[j + 8 - ((i - 1) & 7) - 1] = sout[j];
      }
      for (j = i; j < i + 8 - ((i - 1) & 7); j++) {
        sout[j - 1] = ' ';
      }
      k = k + 8 - ((i - 1) & 7);
    }
    *****/

    /* Untab string containing multiple lines */ /* 9-Jul-2011 nm */
    /* (Currently this is needed by outputStatement() in mmpars.c) */
    k = (long)strlen(sout);
    m = 0;  /* Position on line relative to last '\n' */
    for (i = 1; i <= k; i++) {
      if (sout[i - 1] == '\n') {
        m = 0;
        continue;
      }
      m++; /* Should equal i for one-line string */
      if (sout[i - 1] != '\t') continue;
      for (j = k; j >= i; j--) {
        sout[j + 8 - ((m - 1) & 7) - 1] = sout[j];
      }
      for (j = i; j < i + 8 - ((m - 1) & 7); j++) {
        sout[j - 1] = ' ';
      }
      k = k + 8 - ((m - 1) & 7);
    }
  }

  /* Tab the line */
  /* (Note that this does not [yet?] handle string with multiple lines) */
  if (tab_flag) {

    /*
    DEF FNTAB$(L$)        ! TAB LINE L$
    I9%=0%
    FOR I9%=8% STEP 8% WHILE I9%<LEN(L$)
      J9%=I9%
      J9%=J9%-1% UNTIL ASCII(MID(L$,J9%,1%))<>32% OR J9%=I9%-8%
      IF J9%<=I9%-2% THEN
        L$=LEFT(L$,J9%)+CHR$(9%)+RIGHT(L$,I9%+1%)
        I9%=J9%+1%
      END IF
    NEXT I9%
    FNTAB$=L$
    FNEND
    */

    k = (long)strlen(sout);
    for (i = 8; i < k; i = i + 8) {
      j = i;

      /* 26-May-2016 nm */
      /* gcc m*.c -o metamath.exe -O2 -Wall was giving:
             mmvstr.c:285:9: warning: assuming signed overflow does not occur
             when assuming that (X - c) <= X is always true [-Wstrict-overflow]
         Here we trick gcc into turning off this optimization by moving
         the computation of i - 2 here, then referencing m instead of i - 2
         below.  Note that if "m = i - 2" is moved _after_ the "while", the
         error message returns. */
      m = i - 2;

      while (sout[j - 1] == ' ' && j > i - 8) j--;
      /*if (j <= i - 2) {*/
      if (j <= m) {  /* 25-May-2016 nm */
        sout[j] = '\t';
        j = i;
        while (sout[j - 1] == ' ' && j > i - 8 + 1) {
          sout[j - 1] = 0;
          j--;
        }
      }
    }
    i = k;
    /* sout[i]=0 is the last character at this point */
    /* Clean up the deleted characters */
    for (j = 0, k = 0; j <= i; j++)
      if (sout[j] != 0) sout[k++] = sout[j];
    sout[k] = 0;
    /* sout[k] = 0 is the last character at this point */
  }

  return (sout);
} /* edit */


/* Return a string of the same character */
vstring string(long n, char c)
{
  vstring sout;
  long j = 0;
  if (n < 0) n = 0;
  sout=tempAlloc(n + 1);
  while (j < n) sout[j++] = c;
  sout[j] = 0;
  return (sout);
} /* string */


/* Return a string of spaces */
vstring space(long n)
{
  return (string(n, ' '));
} /* space */


/* Return a character given its ASCII value */
vstring chr(long n)
{
  vstring sout;
  sout = tempAlloc(2);
  sout[0] = (char)(n & 0xFF);
  sout[1] = 0;
  return(sout);
} /* chr */


/* Search for string2 in string1 starting at start_position */
/* If there is no match, 0 is returned */
/* If string2 is "", (length of the string) + 1 is returned */
long instr(long start_position, vstring string1, vstring string2)
{
  char *sp1, *sp2;
  long ls1, ls2;
  long found = 0;
  if (start_position < 1) start_position = 1;
  ls1 = (long)strlen(string1);
  ls2 = (long)strlen(string2);
  if (start_position > ls1) start_position = ls1 + 1;
  sp1 = string1 + start_position - 1;
  while ((sp2 = strchr(sp1, string2[0])) != 0) {
    if (strncmp(sp2, string2, (size_t)ls2) == 0) {
      found = sp2 - string1 + 1;
      break;
    } else
      sp1 = sp2 + 1;
  }
  return (found);
} /* instr */


/* 12-Jun-2011 nm Added rinstr */
/* Search for _last_ occurrence of string2 in string1 */
/* 1 = 1st string character; 0 = not found */
/* ??? Future - this could be made more efficient by searching directly,
   backwards from end of string1 */
long rinstr(vstring string1, vstring string2)
{
  long pos = 0;
  long savePos = 0;

  while (1) {  /* Scan until substring no longer found */
    pos = instr(pos + 1, string1, string2);
    if (!pos) break;
    savePos = pos;
  }
  return (savePos);
} /* rinstr */


/* Translate string in sin to sout based on table.
   Table must be 256 characters long!! <- not true anymore? */
vstring xlate(vstring sin,vstring table)
{
  vstring sout;
  long len_table, len_sin;
  long i, j;
  long table_entry;
  char m;
  len_sin = (long)strlen(sin);
  len_table = (long)strlen(table);
  sout = tempAlloc(len_sin+1);
  for (i = j = 0; i < len_sin; i++)
  {
    table_entry = 0x000000FF & (long)sin[i];
    if (table_entry < len_table)
      if ((m = table[table_entry])!='\0')
        sout[j++] = m;
  }
  sout[j]='\0';
  return (sout);
} /* xlate */


/* Returns the ascii value of a character */
long ascii_(vstring c)
{
  return ((long)c[0]);
} /* ascii_ */


/* Returns the floating-point value of a numeric string */
double val(vstring s)
{
  double v = 0;
  char signFound = 0;
  double power = 1.0;
  long i;
  for (i = (long)strlen(s); i >= 0; i--) {
    switch (s[i]) {
      case '.':
        v = v / power;
        power = 1.0;
        break;
      case '-':
        signFound = 1;
        break;
      case '0': case '1': case '2': case '3': case '4':
      case '5': case '6': case '7': case '8': case '9':
        v = v + ((double)(s[i] - '0')) * power;
        power = 10.0 * power;
        break;
    }
  }
  if (signFound) v = - v;
  return v;
  /*
  return (atof(s));
  */
} /* val */


/* Returns current date as an ASCII string */
vstring date()
{
  vstring sout;
  struct tm *time_structure;
  time_t time_val;
  char *month[12];

  /* (Aggregrate initialization is not portable) */
  /* (It must be done explicitly for portability) */
  month[0] = "Jan";
  month[1] = "Feb";
  month[2] = "Mar";
  month[3] = "Apr";
  month[4] = "May";
  month[5] = "Jun";
  month[6] = "Jul";
  month[7] = "Aug";
  month[8] = "Sep";
  month[9] = "Oct";
  month[10] = "Nov";
  month[11] = "Dec";

  time(&time_val); /* Retrieve time */
  time_structure = localtime(&time_val); /* Translate to time structure */
  sout = tempAlloc(12);
  /* "%02d" means leading zeros with min. field width of 2 */
  /* sprintf(sout,"%d-%s-%02d", */
  sprintf(sout,"%d-%s-%04d", /* 10-Apr-06 nm 4-digit year */
      time_structure->tm_mday,
      month[time_structure->tm_mon],
      /* time_structure->tm_year); */ /* old */
      /* (int)((time_structure->tm_year) % 100)); */ /* Y2K */
      (int)((time_structure->tm_year) + 1900)); /* 10-Apr-06 nm 4-digit yr */
  return(sout);
} /* date */


/* Return current time as an ASCII string */
vstring time_()
{
  vstring sout;
  struct tm *time_structure;
  time_t time_val;
  int i;
  char *format;
  char *format1 = "%d:%d %s";
  char *format2 = "%d:0%d %s";
  char *am_pm[2];
  /* (Aggregrate initialization is not portable) */
  /* (It must be done explicitly for portability) */
  am_pm[0] = "AM";
  am_pm[1] = "PM";

  time(&time_val); /* Retrieve time */
  time_structure = localtime(&time_val); /* Translate to time structure */
  if (time_structure->tm_hour >= 12)
    i = 1;
  else
    i = 0;
  if (time_structure->tm_hour > 12)
    time_structure->tm_hour -= 12;
  if (time_structure->tm_hour == 0)
    time_structure->tm_hour = 12;
  sout = tempAlloc(12);
  if (time_structure->tm_min >= 10)
    format = format1;
  else
    format = format2;
  sprintf(sout,format,
      time_structure->tm_hour,
      time_structure->tm_min,
      am_pm[i]);
  return(sout);
} /* time */


/* Return a number as an ASCII string */
vstring str(double f)
{
  /* This function converts a floating point number to a string in the */
  /* same way that %f in printf does, except that trailing zeroes after */
  /* the one after the decimal point are stripped; e.g., it returns 7 */
  /* instead of 7.000000000000000. */
  vstring s;
  long i;
  s = tempAlloc(50);
  sprintf(s,"%f", f);
  if (strchr(s, '.') != 0) { /* The string has a period in it */
    for (i = (long)strlen(s) - 1; i > 0; i--) {  /* Scan string backwards */
      if (s[i] != '0') break; /* 1st non-zero digit */
      s[i] = 0; /* Delete the trailing 0 */
    }
    if (s[i] == '.') s[i] = 0; /* Delete trailing period */
  }
  return (s);
} /* str */


/* Return a number as an ASCII string */
/* (This may have differed slightly from str() in BASIC but I forgot how.
   It should be considered deprecated.) */
vstring num1(double f)
{
  return (str(f));
} /* num1 */


/* Return a number as an ASCII string surrounded by spaces */
/* (This should be considered deprecated.) */
vstring num(double f)
{
  return (cat(" ",str(f)," ",NULL));
} /* num */



/*** NEW FUNCTIONS ADDED 11/25/98 ***/

/* Emulate PROGRESS "entry" and related string functions */
/* (PROGRESS is a 4-GL database language) */

/* A "list" is a string of comma-separated elements.  Example:
   "a,b,c" has 3 elements.  "a,b,c," has 4 elements; the last element is
   an empty string.  ",," has 3 elements; each is an empty string.
   In "a,b,c", the entry numbers of the elements are 1, 2 and 3 (i.e.
   the entry numbers start a 1, not 0). */

/* Returns a character string entry from a comma-separated
   list based on an integer position. */
/* If element is less than 1 or greater than number of elements
   in the list, a null string is returned. */
vstring entry(long element, vstring list)
{
  vstring sout;
  long commaCount, lastComma, i, length;
  if (element < 1) return ("");
  lastComma = -1;
  commaCount = 0;
  i = 0;
  while (list[i] != 0) {
    if (list[i] == ',') {
      commaCount++;
      if (commaCount == element) {
        break;
      }
      lastComma = i;
    }
    i++;
  }
  if (list[i] == 0) commaCount++;
  if (element > commaCount) return ("");
  length = i - lastComma - 1;
  if (length < 1) return ("");
  sout = tempAlloc(length + 1);
  strncpy(sout, list + lastComma + 1, (size_t)length);
  sout[length] = 0;
  return (sout);
}

/* Emulate PROGRESS lookup function */
/* Returns an integer giving the first position of an expression
   in a comma-separated list. Returns a 0 if the expression
   is not in the list. */
long lookup(vstring expression, vstring list)
{
  long i, exprNum, exprPos;
  char match;

  match = 1;
  i = 0;
  exprNum = 0;
  exprPos = 0;
  while (list[i] != 0) {
    if (list[i] == ',') {
      exprNum++;
      if (match) {
        if (expression[exprPos] == 0) return exprNum;
      }
      exprPos = 0;
      match = 1;
      i++;
      continue;
    }
    if (match) {
      if (expression[exprPos] != list[i]) match = 0;
    }
    i++;
    exprPos++;
  }
  exprNum++;
  if (match) {
    if (expression[exprPos] == 0) return exprNum;
  }
  return 0;
}


/* Emulate PROGRESS num-entries function */
/* Returns the number of items in a comma-separated list.  If the
   list is the empty string, return 0. */
long numEntries(vstring list)
{
  long i, commaCount;
  if (list[0] == 0) {
    commaCount = -1; /* 26-Apr-2006 nm Return 0 if list empty */
  } else {
    commaCount = 0;
    i = 0;
    while (list[i] != 0) {
      if (list[i] == ',') commaCount++;
      i++;
    }
  }
  return (commaCount + 1);
}

/* Returns the character position of the start of the
   element in a list - useful for manipulating
   the list string directly.  1 means the first string
   character. */
/* If element is less than 1 or greater than number of elements
   in the list, a 0 is returned.  If entry is null, a 0 is
   returned. */
long entryPosition(long element, vstring list)
{
  long commaCount, lastComma, i;
  if (element < 1) return 0;
  lastComma = -1;
  commaCount = 0;
  i = 0;
  while (list[i] != 0) {
    if (list[i] == ',') {
      commaCount++;
      if (commaCount == element) {
        break;
      }
      lastComma = i;
    }
    i++;
  }
  if (list[i] == 0) {
    if (i == 0) return 0;
    if (list[i - 1] == ',') return 0;
    commaCount++;
  }
  if (element > commaCount) return (0);
  if (list[lastComma + 1] == ',') return 0;
  return (lastComma + 2);
}


void print2(char* fmt,...)
{
  /* This performs the same operations as printf, except that if a log file is
    open, the characters will also be printed to the log file. */
  va_list ap;
  char printBuffer[10001];

  va_start(ap, fmt);
  vsprintf(printBuffer, fmt, ap); /* Put formatted string into buffer */
  va_end(ap);

  printf("%s", printBuffer); /* Terminal */

  if (fplog != NULL) {
    fprintf(fplog, "%s", printBuffer);  /* Print to log file */
  }
  return;
}


/* Bug check */
void bug(int bugNum)
{
  /*print2("?Error: Program bug # %d\n", bugNum);*/
  fprintf(stderr, "?Error: Program bug # %d\n", bugNum);
  exit(0);
}


/* Opens files with error message; opens output files with
   backup of previous version.   Mode must be "r" or "w". */
FILE *fSafeOpen(vstring fileName, vstring mode)
{
  FILE *fp;
  vstring prefix = "";
  vstring postfix = "";
  vstring bakName = "";
  vstring newBakName = "";
  long v;

  if (!strcmp(mode, "r")) {
    fp = fopen(fileName, "r");
    if (!fp) {
      print2("?Sorry, couldn't open the file \"%s\".\n", fileName);
    }
    return (fp);
  }

  if (!strcmp(mode, "w")) {
    /* See if the file already exists. */
    fp = fopen(fileName, "r");

    if (fp) {
      fclose(fp);

#define VERSIONS 9
      /* The file exists.  Rename it. */

#if defined __WATCOMC__ /* MSDOS */
      /* Make sure file name before extension is 8 chars or less */
      i = instr(1, fileName, ".");
      if (i) {
        let(&prefix, left(fileName, i - 1));
        let(&postfix, right(fileName, i));
      } else {
        let(&prefix, fileName);
        let(&postfix, "");
      }
      let(&prefix, cat(left(prefix, 5), "~", NULL));
      let(&postfix, cat("~", postfix, NULL));
      if (0) goto skip_backup; /* Prevent compiler warning */

#elif defined __GNUC__ /* Assume unix */
      let(&prefix, cat(fileName, "~", NULL));
      let(&postfix, "");

#elif defined THINK_C /* Assume Macintosh */
      let(&prefix, cat(fileName, "~", NULL));
      let(&postfix, "");

#elif defined VAXC /* Assume VMS */
      /* For debugging on VMS: */
      /* let(&prefix, cat(fileName, "-", NULL));
         let(&postfix, "-"); */
      /* Normal: */
      goto skip_backup;

#else /* Unknown; assume unix standard */
      /*if (1) goto skip_backup;*/  /* [if no backup desired] */
      let(&prefix, cat(fileName, "~", NULL));
      let(&postfix, "");

#endif


      /* See if the lowest version already exists. */
      let(&bakName, cat(prefix, str(1), postfix, NULL));
      fp = fopen(bakName, "r");
      if (fp) {
        fclose(fp);
        /* The lowest version already exists; rename all to lower versions. */

        /* If version VERSIONS exists, delete it. */
        let(&bakName, cat(prefix, str(VERSIONS), postfix, NULL));
        fp = fopen(bakName, "r");
        if (fp) {
          fclose(fp);
          remove(bakName);
        }

        for (v = VERSIONS - 1; v >= 1; v--) {
          let(&bakName, cat(prefix, str((double)v), postfix, NULL));
          fp = fopen(bakName, "r");
          if (!fp) continue;
          fclose(fp);
          let(&newBakName, cat(prefix, str((double)(v + 1)), postfix, NULL));
          rename(bakName, newBakName);
        }

      }
      let(&bakName, cat(prefix, str(1), postfix, NULL));
      rename(fileName, bakName);

      /***
      printLongLine(cat("The file \"", fileName,
          "\" already exists.  The old file is being renamed to \"",
          bakName, "\".", NULL), "  ", " ");
      ***/
    } /* End if file already exists */
   /*skip_backup:*/

    fp = fopen(fileName, "w");
    if (!fp) {
      print2("?Sorry, couldn't open the file \"%s\".\n", fileName);
    }

    let(&prefix, "");
    let(&postfix, "");
    let(&bakName, "");
    let(&newBakName, "");

    return (fp);
  } /* End if mode = "w" */

  bug(1510); /* Illegal mode */
  return(NULL);

}

/***********************************************************************/
/************ End of "vstring" body stuff ******************************/
/***********************************************************************/
