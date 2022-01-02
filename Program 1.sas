libname grp1 "/home/u60029575/GRIP1";
data student;
input Hours 1-4 Scores 5-7 ;       /*** Reading Of data ***/
datalines ;
2.5 21
5.1 47
3.2 27
8.5 75
3.5 30
1.5 20
9.2 88
5.5 60
8.3 81
2.7 25
7.7 85
5.9 62
4.5 41
3.3 42
1.1 17
8.9 95
2.5 30
1.9 24
6.1 67
7.4 69
2.7 30
4.8 54
3.8 35
6.9 76
7.8 86
;

proc reg;             /*** Fitting Of Simple Regression  Model ***/
model scores = Hours;
run;

                      /*** ***/
                      

proc glimmix;
class;
model scores = Hours/solution;
run;