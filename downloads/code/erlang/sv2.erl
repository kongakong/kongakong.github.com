-module(sv2).

 -include_lib("eunit/include/eunit.hrl").

-export([seed_matrix/0, matrix_ans/0]).
-export([run/0]).
-export([solve/1]).
-export([make_rect/1]).

-define(SIDELEN, 9).

%%
%% f :: verify
%% f -> fnext
%% f -> backtrack
%%
%% fnext -> find_next_num, f
%% fnext -> backtrack
%%
%% backtrack -> f

%% matrix representation
seed_matrix() ->
   [0, 0, 0, 0, 7, 0, 0, 1, 0,
    0, 0, 7, 1, 0, 5, 3, 0, 0,
    0, 0, 0, 9, 0, 0, 5, 2, 0,
    0, 0, 0, 6, 0, 0, 7, 3, 0,
    4, 0, 0, 0, 0, 0, 0, 0, 9,
    0, 5, 8, 0, 0, 7, 0, 0, 0, 
    0, 2, 1, 0, 0, 9, 0, 0, 0,
    0, 0, 5, 4, 0, 3, 9, 0, 0,
    0, 3, 0, 0, 8, 0, 0, 0, 0]. 

matrix_ans() ->
   [5, 9, 2, 3, 7, 6, 8, 1, 4,
    8, 4, 7, 1, 2, 5, 3, 9, 6, 
    1, 6, 3, 9, 4, 8, 5, 2, 7,
    2, 1, 9, 6, 5, 4, 7, 3, 8,
    4, 7, 6, 8, 3, 1, 2, 5, 9, 
    3, 5, 8, 2, 9, 7, 6, 4, 1,
    7, 2, 1, 5, 6, 9, 4, 8, 3,
    6, 8, 5, 4, 1, 3, 9, 7, 2, 
    9, 3, 4, 7, 8, 2, 1, 6, 5]. 
  
seed_matrix2() ->
   [[0, 0, 0, 0, 7, 0, 0, 1, 0],
   [0, 0, 7, 1, 0, 5, 3, 0, 0],
   [0, 0, 0, 9, 0, 0, 5, 2, 0],
   [0, 0, 0, 6, 0, 0, 7, 3, 0],
   [4, 0, 0, 0, 0, 0, 0, 0, 9],
   [0, 5, 8, 0, 0, 7, 0, 0, 0], 
   [0, 2, 1, 0, 0, 9, 0, 0, 0],
   [0, 0, 5, 4, 0, 3, 9, 0, 0],
   [0, 3, 0, 0, 8, 0, 0, 0, 0]].

make_rect(Seed) ->
    make_rect(Seed, [], [X|| X <- lists:seq(1, ?SIDELEN), not lists:member(X, Seed)]).
make_rect([], Ans, _Available) ->
    Ans;
make_rect([0|Tail], Res, Available) ->    
    Index = random:uniform(length(Available)),
    H = lists:nth(Index, Available),
    make_rect(Tail, Res ++ [H], Available -- [H]);
make_rect([H|Tail], Res, Available) -> 
    make_rect(Tail, Res ++ [H], Available -- [H]).


solve(Seed) ->
    solve(Seed, ok. []).

solve(Seed, ok, _Ans) ->
    [R1, R2, R3, R4, R5, R6, R7, R8, R9] = Seed,
    NR1 = make_rect(R1),
    NR2 = make_rect(R2),
    NR3 = make_rect(R3),
    NR4 = make_rect(R4),
    NR5 = make_rect(R5),
    NR6 = make_rect(R6),
    NR7 = make_rect(R7),
    NR8 = make_rect(R8),
    NR9 = make_rect(R9),
    {Status, Ans} = solve_a(R1, R2, R3, R4, R5, R6, R7, R8, R9),
    solve(Seed, Status, Ans).

solve(Seed, Current, failed, Ans, Tail) ->
    %% back tracked
    Ans.



solve_a([N1,  N2,  N3,  N4,  N5,  N6,  N7,  N8,  N9 ]=R1, 
	[N10, N11, N12, N13, N14, N15, N16, N17, N18]=R2, 
        [N19, N20, N21, N22, N23, N24, N25, N26, N27]=R3,
	[N28, N29, N30, N31, N32, N33, N34, N35, N36]=R4, 
	[N37, N38, N39, N40, N41, N42, N43, N44, N45]=R5,
	[N46, N47, N48, N49, N50, N51, N52, N53, N54]=R6,
	[N55, N56, N57, N58, N59, N60, N61, N62, N63]=R7,
	[N64, N65, N66, N67, N68, N69, N70, N71, N72]=R8,
	[N73, N74, N75, N76, N77, N78, N79, N80, N81]=R9,
       ) when
    
    N1 + N2 + N3 + N10 + N11 + N12 + N19 + N20 + N21 == 45 andalso
    N4 + N5 + N6 + N13 + N14 + N15 + N22 + N23 + N24 == 45 andalso
    N7 + N8 + N9 + N16 + N17 + N18 + N25 + N26 + N27 == 45 andalso
    N28 + N29 + N30 + N31, N32, N33, N34, N35, N36
->
	{ok, [R1, R2, R3]};

solve_a(_,_,_,_)->
    {failed, []}.



    
run() ->    
    Ans = make_rect([0, 1, 2, 0, 0, 0, 0, 3, 0]),
    io:format("Ans ~p~n", [Ans]).

unit_test() ->
    [
     make_rect([0, 1, 2, 0, 0, 0, 0, 3, 0])
    ].
   
