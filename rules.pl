% JavaScript

pl('JavaScript', 'oop').
pl('JavaScript', 'prototype').
pl('JavaScript', 'script').
pl('JavaScript', 'dynamic').
pl('JavaScript', 'functional').

% PHP
pl('PHP', 'oop').
pl('PHP', 'dynamic').

% Java
pl('Java', 'oop').
pl('Java', 'structured').
pl('Java', 'imperative').
pl('Java', 'functional').
pl('Java', 'crossplatform').

% C#

pl('C#', 'oop').
pl('C#', 'procedural').
pl('C#', 'imperative').
pl('C#', 'functional').
pl('C#', 'event-based').
pl('C#', 'reflective').

% C++
pl('C++','oop').
pl('C++', 'procedural').
pl('C++', 'meta-programming').

% D
pl('D', 'procedural').
pl('D', 'oop').
pl('D', 'functional').

% Python 
pl('Python', 'oop').
pl('Python', 'imperative').
pl('Python', 'functional').
pl('Python', 'procedural').
pl('Python', 'reflective').

% Go
pl('Go', 'compiled').
pl('Go', 'concurrent').
pl('Go', 'imperative').
pl('Go', 'imperative').
pl('Go', 'structured').

% Ruby
pl('Ruby', 'oop').
pl('Ruby', 'imperative').
pl('Ruby', 'functional').
pl('Ruby', 'reflective').

% Lisp
pl('Lisp', 'functional').
pl('Lisp', 'procedural').
pl('Lisp', 'reflective').
pl('Lisp', 'meta').

% Prolog
pl('Prolog', 'Logic programming').


influenced('JavaScript', 'C').
influenced('JavaScript', 'Scheme').
influenced('JavaScript', 'Perl').
influenced('JavaScript', 'Python').
influenced('JavaScript', 'Java').

influenced('PHP', 'Perl').
influenced('PHP', 'C').
influenced('PHP', 'C++').
influenced('PHP', 'Java').
influenced('PHP', 'Tcl').

influenced('Java', 'Objective-C').
influenced('Java', 'Object Pascal').
influenced('Java', 'Oberton').
influenced('Java', 'C++').
influenced('Java', 'C#').
influenced('Java', 'Smalltalk').
influenced('Java', 'Modula-3').

influenced('C#', 'C++').
influenced('C#', 'Java').
influenced('C#', 'Delphi').
influenced('C#', 'Modula').
influenced('C#', 'Smalltalk').

influenced('C++', 'C').
influenced('C++', 'Simula').
influenced('C++', 'ALGOL 86').
influenced('C++', 'Ada').

influenced('D', 'C').
influenced('D', 'C++').
influenced('D', 'C#').
influenced('D', 'Java').
influenced('D', 'Python').
influenced('D', 'Ruby').

influenced('Python', 'ABC').
influenced('Python', 'ALGOL 68').
influenced('Python', 'C').
influenced('Python', 'C++').
influenced('Python', 'Dylan').
influenced('Python', 'Haskell').
influenced('Python', 'Java').
influenced('Python', 'Lisp').
influenced('Python', 'Modula-3').
influenced('Python', 'Perl').

influenced('Go', 'C').
influenced('Go', 'occam').
influenced('Go', 'Limbo').
influenced('Go', 'Modula').
influenced('Go', 'Oberton').
influenced('Go', 'Pascal').

influenced('Ruby', 'Ada').
influenced('Ruby', 'C++').
influenced('Ruby', 'Lua').
influenced('Ruby', 'Lisp').
influenced('Ruby', 'Perl').
influenced('Ruby', 'Python').
influenced('Ruby', 'Smalltalk').

influenced('Lisp', 'IPL').

influenced('Prolog', 'PLANNER').




affected('JavaScript', 'Objective-J').
affected('JavaScript', 'Dart').
affected('JavaScript', 'TypeScript').

affected('Java','C#').
affected('Java', 'Groovy').
affected('Java', 'JavaScript').
affected('Java', 'PHP').
affected('Java', 'Scala').
affected('Java', 'Python').

affected('C#', 'F#').
affected('C#', 'Nemerle').
affected('C#', 'Vala').
affected('C#', 'Windows PowerShell').

affected('C++','Perl').
affected('C++','Lua').
affected('C++','Pike').
affected('C++','Ada 95').
affected('C++','Java').
affected('C++','PHP').
affected('C++','D').
affected('C++','C99').
affected('C++','C#').
affected('C++','Falcon').

affected('D', 'MiniD').
affected('D', 'Vala').
affected('D', 'Swift').

affected('Python', 'D').
affected('Python', 'F#').
affected('Python', 'Falcon').
affected('Python', 'Go').
affected('Python', 'Groovy').
affected('Python', 'JavaScript').
affected('Python', 'Julia').
affected('Python', 'Ruby').
affected('Python', 'Swift').

affected('Ruby', 'Clojure').
affected('Ruby', 'D').
affected('Ruby', 'Falcon').
affected('Ruby', 'Groovy').
affected('Ruby', 'Julia').
affected('Ruby', 'Swift').

affected('Lisp', 'Falcon').
affected('Lisp', 'Forth').
affected('Lisp', 'Haskell').
affected('Lisp', 'JavaScript').
affected('Lisp', 'Julia').
affected('Lisp', 'Lua').
affected('Lisp', 'Mathematica').
affected('Lisp', 'Perl').
affected('Lisp', 'Python').
affected('Lisp', 'R').
affected('Lisp', 'Ruby').
affected('Lisp', 'Small').
affected('Lisp', 'Tcl').

affected('Prolog', 'Visual Prolog').
affected('Prolog', 'Erlang').
affected('Prolog', 'XSB').




is_oop(X) :-
	pl(X, 'oop').

is_prototype(X) :- 
	pl(X, 'prototype').

is_script(X) :-
	pl(X, 'script').

is_dynamic(X) :-
	pl(X, 'dynamic').

parent(X) :-
	influenced(X, Y), write(Y).

children(X) :- 
	affected(X, Y), write(Y).

взаимноПовлияли :- 
	influenced(X, Y), affected(Y, X), write(X), write(' <=> '), write(Y), nl, fail.

всеЯзыкиПрограммирования :-
	influenced(X, Y), affected(A, B), X\=Y, A\=B, X\=A, Y\=B, write(X), write(' '), write(Y), write(' '),  write(A), write(' '), write(B), nl, fail.

allPL :-
	pl(Lang, _), write(Lang), write(' '), fail.