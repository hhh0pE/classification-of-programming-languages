% Programming Language
% pl('C++').
% pl('Java').
% pl('Go').
% pl('Haskell').
% pl('Prolog').
% pl('PHP').
% pl('C').
% pl('Basic').
% pl('C#').
% pl('JavaScript').

pl('JavaScript', 'oop').
pl('JavaScript', 'prototype').
pl('JavaScript', 'script').
pl('JavaScript', 'dynamic').

pl('PHP', 'oop').
pl('PHP', 'dynamic').

is_oop(X) :-
	pl(X, 'oop').

is_prototype(X) :- 
	pl(X, 'prototype').

is_script(X) :-
	pl(X, 'script').

is_dynamic(X) :-
	pl(X, 'dynamic').