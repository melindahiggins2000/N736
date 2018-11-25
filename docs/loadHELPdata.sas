
* make a copy to WORK;
data helpmkh;
  set library.helpmkh;
  run;

* the formatting is now applied and should work;
proc freq data=helpmkh;
  tables female;
  run;

proc freq data=helpmkh;
  table f1a;
  run;

* see contents and formatting details
  and labelling;
proc contents data=helpmkh;
run;
