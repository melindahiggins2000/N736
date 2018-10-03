* ==========================================;
* N736 Lesson 07 - 09/18/2017
*
* Univariate Stats
* working with the HELP dataset
* ==========================================;

* create a library - change to your directory
* where you have downloaded the help.sas7bdat dataset;
LIBNAME L7 'C:\MyGithub\N736Fall2017_lesson07';

* make a copy in the WORK library;
DATA work.help;
  SET L7.help;
  RUN;

* get univariate stats;
proc univariate data=help plots;
  var age;
  run;

* get univariate stats
* can change the percentile algorithm
* default is PCTLDEF=5, but there are
* options 1,2,3,4 or 5 - see help for more details;

proc univariate data=help plots pctldef=1;
  var age;
  run;

* try algorithm 3;
  proc univariate data=help plots pctldef=3;
  var age;
  run;

* get univariate stats
* add histogram
* and overlay normal curve;

proc univariate data=help plots pctldef=1;
  var age;
  histogram age / normal;
  run;

* get other probability plots;

proc univariate data=help plots pctldef=1;
  var age;
  ppplot age;
  probplot age;
  qqplot age;
  run;

* some plots - boxplot;
* to get a boxplot of 1 variable
* we have to create a dummy variable
* that is a constant, x=1, then we can use
* this variable to trick SAS into making 1 boxplot;

data help2;
  set help;
  x=1;
  run;

proc boxplot data=help2;
  plot age*x;
  run;

* boxplot of age by racegrp
* using proc sgplot and VBOX option;

PROC SGPLOT DATA=help;
  VBOX age / category = racegrp;
RUN;

* can change the percentile method if you want;

PROC SGPLOT DATA=help;
  VBOX age / category = racegrp percentile=3;
RUN;

* other summaries;

proc means data=help;
  var age;
  run;

* ages by race;

proc means data=help;
  var age;
  class racegrp;
  run;

* categorical data;

proc freq data=help;
  tables racegrp / plots=freqplot;
  run;



