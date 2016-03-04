likes(mary,food).
likes(mary,wine).
likes(john,wine).
likes(john,mary).

male(james1).
male(charles1).
male(charles2).
male(james2).
male(george1).

female(catherine).
female(elizabeth).
female(sophia).

parent(charles1, james1).
parent(elizabeth, james1).
parent(charles2, charles1).
parent(catherine, charles1).
parent(james2, charles1).
parent(sophia, elizabeth).
parent(george1, sophia).

% Used to sort list.
xreverse(Inputlist,Outputlist):-
    reverse(Inputlist,[],Outputlist).    
    reverse([],Outputlist,Outputlist).    

    reverse([Head|Tail],List1,List2):-
        reverse(Tail,[Head|List1],List2).


% Used to remove duplicates from list
make_set([],[]).
   make_set(X,Y) :- setof(Z,member(Z,X),Y).

% combine unique elements from list
xunion([X|Y],Z,W) :- member(X,Z),  xunion(Y,Z,W).
xunion([X|Y],Z,[X|W]) :- \+ member(X,Z), xunion(Y,Z,W).
xunion([],Z,Z).