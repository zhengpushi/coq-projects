# CoqdocJS Example2

## 1. Introduction

This project is inspired by https://github.com/coq-community/coqdocjs/tree/submodule.

I have been troubled with how to generate linked HTML documents with coqdoc, because default output have poor link and you can't click and jump. Then, a kind expert { Li, Yishuai (https://github.com/liyishuai) } introduce this project to me.

I re-organized the example project, and create this one. This is just to familiarize with this project and make it easy to use.

There are several improvements:

1. support specify the project-logic-name, and you can put your coq source files under src/ directory.
2. support make install, make uninstall. Then, you can distribute several projects easily.



by Zhengpu SHI. (2022.04.15)



## 2. Help

* coq_makefile
  https://coq.inria.fr/distrib/V8.13.2/refman/practical-tools/utilities.html?highlight=coq_makefile
* coqdoc
  https://coq.inria.fr/refman/using/tools/coqdoc.html
* coqdocjs
  https://github.com/coq-community/coqdocjs
  https://github.com/coq-community/coqdocjs/tree/submodule/example
  https://github.com/coq-community/coq-ext-lib
  https://coq-community.org/coq-ext-lib/v0.11.6/toc.html

## 3. What you could do?
1. modify _CoqProject to specify the project-logical-name for CoqIDE only, 
        and the files for Makefile
   (2). modify Makefile.coq.local to specify the project-logical-name for Makefile
   (3). modify html-extra/*.html to your favorite style
   (4). make, optional with "clean/cleanall/html/install/uninstall" flag

## 4. Files
* README，this file
* LICENSE-CoqdocJS，original license file of CoqdocJS project
* Makefile, for make
* _CoqProject, for CoqIDE and coq_makefile
* Makefile.coq.local, for configuration
* src/, your Coq source files
* html-extra/, coqdocjs project files