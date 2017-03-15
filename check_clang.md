```r


R Under development (unstable) (2017-03-14 r72351) -- "Unsuffered Consequences"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> # Copyright (C) 2013 - 2017  Metrum Research Group, LLC
> #
> # This file is part of mrgsolve.
> #
> # mrgsolve is free software: you can redistribute it and/or modify it
> # under the terms of the GNU General Public License as published by
> # the Free Software Foundation, either version 2 of the License, or
> # (at your option) any later version.
> #
> # mrgsolve is distributed in the hope that it will be useful, but
> # WITHOUT ANY WARRANTY; without even the implied warranty of
> # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> # GNU General Public License for more details.
> #
> # You should have received a copy of the GNU General Public License
> # along with mrgsolve.  If not, see <http://www.gnu.org/licenses/>.
> 
> Sys.setenv("R_TESTS" = "")
> library(testthat)
> library(mrgsolve)
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:209:12: runtime error: call to function (unknown) through pointer to incorrect function type 'void *(*)(SEXPREC *)'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x2b4540): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:209:12 in 
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:209:12: runtime error: call to function (unknown) through pointer to incorrect function type 'void *(*)(SEXPREC *)'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x2b4540): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:209:12 in 
> 
> test_check("mrgsolve", reporter="summary")

Attaching package: 'dplyr'

The following object is masked from 'package:testthat':

    matches

The following objects are masked from 'package:stats':

    filter, lag

The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union

test-annot: ..................................................
test-cache: ...
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:80:20: runtime error: call to function (unknown) through pointer to incorrect function type 'unsigned long (*)()'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x124d20): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:80:20 in 
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:86:20: runtime error: call to function (unknown) through pointer to incorrect function type 'unsigned long (*)()'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x124d60): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:86:20 in 
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:209:12: runtime error: call to function (unknown) through pointer to incorrect function type 'void *(*)(SEXPREC *)'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x2b4540): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:209:12 in 
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:227:12: runtime error: call to function (unknown) through pointer to incorrect function type 'int *(*)(int)'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x2b56c0): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:227:12 in 
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:203:12: runtime error: call to function (unknown) through pointer to incorrect function type 'const char *(*)(SEXPREC *)'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x2b4560): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:203:12 in 
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:209:12: runtime error: call to function (unknown) through pointer to incorrect function type 'void *(*)(SEXPREC *)'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x2b4540): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:209:12 in 
Testing carry_out: ......
Testing carry_out of tran / PK dosing items: ..........
Testing data_set: ...............
Data set record sorting: /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:149:12: runtime error: call to function (unknown) through pointer to incorrect function type 'SEXPREC *(*)(const char *, int)'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x126720): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:149:12 in 
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:131:12: runtime error: call to function (unknown) through pointer to incorrect function type 'SEXPREC *(*)(SEXPREC *)'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x2b4b40): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:131:12 in 
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:137:12: runtime error: call to function (unknown) through pointer to incorrect function type 'std::__1::basic_string<char> (*)(const std::__1::basic_string<char> &)'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x124e00): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:137:12 in 
/mnt/Rlibs/Rcpp/include/Rcpp/routines.h:125:12: runtime error: call to function (unknown) through pointer to incorrect function type 'SEXPREC *(*)()'
(/mnt/Rlibs/Rcpp/libs/Rcpp.so+0x2b4ae0): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior /mnt/Rlibs/Rcpp/include/Rcpp/routines.h:125:12 in 
..
Tests for dataobject - data: ..
......Use dplyr generics on mrgsims objects: ...............
Testing infusion inputs: 
Test $ENV: ....................
...................odeproblem.cpp:213:3: runtime error: call to function (unknown) through pointer to incorrect function type 'void (*)(databox &, const double *, double, double)'
(/tmp/RtmpVVOsCn/mrgsolve-so-0.8.5-x86_64-pc-linux-gnu/FOO/FOO-so-7585f76c29c.so+0xff0): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior odeproblem.cpp:213:3 in 
odeproblem.cpp:186:3: runtime error: call to function (unknown) through pointer to incorrect function type 'void (*)(std::__1::vector<double, std::__1::allocator<double> > &, const double *, const double *, std::__1::vector<double, std::__1::allocator<double> > &, std::__1::vector<double, std::__1::allocator<double> > &, std::__1::vector<double, std::__1::allocator<double> > &, std::__1::vector<double, std::__1::allocator<double> > &, databox &, std::__1::vector<double, std::__1::allocator<double> > &, resim &)'
(/tmp/RtmpVVOsCn/mrgsolve-so-0.8.5-x86_64-pc-linux-gnu/FOO/FOO-so-7585f76c29c.so+0x1000): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior odeproblem.cpp:186:3 in 
odeproblem.cpp:163:3: runtime error: call to function (unknown) through pointer to incorrect function type 'void (*)(const double *, const double *, double *, const std::__1::vector<double, std::__1::allocator<double> > &, const double *)'
(/tmp/RtmpVVOsCn/mrgsolve-so-0.8.5-x86_64-pc-linux-gnu/FOO/FOO-so-7585f76c29c.so+0x1010): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior odeproblem.cpp:163:3 in 
odeproblem.cpp:208:3: runtime error: call to function (unknown) through pointer to incorrect function type 'void (*)(const double *, const std::__1::vector<double, std::__1::allocator<double> > &, const double *, const std::__1::vector<double, std::__1::allocator<double> > &, const std::__1::vector<double, std::__1::allocator<double> > &, databox &, const std::__1::vector<double, std::__1::allocator<double> > &, std::__1::vector<double, std::__1::allocator<double> > &, resim &)'
(/tmp/RtmpVVOsCn/mrgsolve-so-0.8.5-x86_64-pc-linux-gnu/FOO/FOO-so-7585f76c29c.so+0x10b0): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior odeproblem.cpp:208:3 in 
odeproblem.cpp:203:3: runtime error: call to function (unknown) through pointer to incorrect function type 'void (*)(std::__1::vector<double, std::__1::allocator<double> > &, const double *, const double *, std::__1::vector<double, std::__1::allocator<double> > &, std::__1::vector<double, std::__1::allocator<double> > &, std::__1::vector<double, std::__1::allocator<double> > &, std::__1::vector<double, std::__1::allocator<double> > &, databox &, std::__1::vector<double, std::__1::allocator<double> > &, resim &)'
(/tmp/RtmpVVOsCn/mrgsolve-so-0.8.5-x86_64-pc-linux-gnu/FOO/FOO-so-7585f76c29c.so+0x1000): note: (unknown) defined here
SUMMARY: AddressSanitizer: undefined-behavior odeproblem.cpp:203:3 in 
CMTN block gives compartment numbers: ..
Fixed parameters: ...
Infusions: ..........
Infusions that end too close to observations.: ..
Infusion with ss flag: .
test-initials: ..............
Loading a model via mread: 
Running a 1 cmt PK model with initial value of 1000: ......
Test knobs: .....
Testing matlist operations: ..........
test-annot: .....
test-modlib models: ........................
test-modspec: ...................................
Testing new model specification file: ............................
valid_data_set tests: .........................
Testing NMXML functionality: 
Testing obsonly and obsaug arguments: .........
Test opts: ..
Compare PKMODEL with equivalent ODEs.: ...
Testing that plots can be generated from output objects: 
PLUGIN: Rcpp: ...
.Rename via carry.out #30: .......
test-request: ........
Testing various request settings: ............
R RNG respected via set.seed(): ....
.......test-update: ...........
Updates: general and simulation times: .....
Test updates: parameters and initials: ....................
Test updates: solver settings: .......
Test updates: events: ...
Testing parameter updates via data: 
Testing parameter updates via idata: ..
Events-based sim same results as data set-based sim: .
Time-varying data items passed in via data set: .
util functions: ....
Test utils: .....................
Set F via F_CMT: ......
Set ALAG via ALAG_CMT: ............

DONE ===========================================================================
```
