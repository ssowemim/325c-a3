
%QUESTION ONE
% Used to sort list.
xreverse(Inputlist,Outputlist):- reverse(Inputlist,[],Outputlist).    
reverse([],Outputlist,Outputlist).    

reverse([Head|Tail],List1,List2):- reverse(Tail,[Head|List1],List2).

%QUESTION TWO
% Used to remove duplicates from list; this one was complicated
set([], []).
set([H|T], [H|T1]) :- remv(H, T, T2),set(T2, T1).

remv(_, [], []).
remv(X, [X|T], T1) :- remv(X, T, T1).
remv(X, [H|T], [H|T1]) :- X \= H,remv(X, T, T1).

%QUESTION THREE
%combine two seperate lists
xappend([],L,L). 
xappend([H|T],L2,[H|L3])  :-  xappend(T,L2,L3).

% combine unique elements from list
xunion(L1,L2,L3) :- xappend(L1,L2,L), set(L,L3).

%QUESTION FOUR
