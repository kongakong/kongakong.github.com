-module(sudoku9x9v2).

 -include_lib("eunit/include/eunit.hrl").

-export([seed_matrix/0, matrix_ans/0]).
-export([run/0]).
-export([solve/1, solve/7,take_row_and_column/3, pick_num/4, pos_to_xy/2]).

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
  


pos_to_xy(Pos, Len) when Pos rem Len =:= 0 ->
    {(Pos div Len), Len};
pos_to_xy(Pos, Len) ->
    {(Pos div Len) + 1, Pos rem Len}.


take_row_and_column(R, C, AnsMatrix) -> 
    % io:format("take_row_and_column: ~p~n", [AnsMatrix]),
    RowVector = [ lists:nth((R-1)*?SIDELEN+X, AnsMatrix) || X <- lists:seq(1, ?SIDELEN)],
    ColVector = [ lists:nth((X-1)*?SIDELEN+C, AnsMatrix) || X <- lists:seq(1, ?SIDELEN)],
    {RowVector, ColVector}.    

%% pick a number to test for coordinate x,y
pick_num(R, C, AnsMatrix, StartFromThisNum) ->
    {RV, CV} = take_row_and_column(R, C, AnsMatrix),
    pick_num2(R, C, RV, CV, StartFromThisNum, ?SIDELEN).
pick_num2(R, C, RV, CV, Num, Bound) when Num =< Bound ->
    F = fun(X) -> X == Num end,
    InRow = lists:any(F, RV),
    InCol = lists:any(F, CV),
    case { InRow, InCol } of 
	{false, false} -> {ok, Num};
	_ -> pick_num2(R, C, RV, CV, Num+1, Bound)
    end;
pick_num2(_R, _C, _RV, _CV, _Num, _Bound) ->
    {err, 0}.
    

solve(Seed) ->
    solve(Seed, 1, [], Seed, 0, ?SIDELEN, [], 0).

%% Seed - original array
%% CurrentPos - current pos in the array
%% Steps 
%% templ: solve_backtrack(Seed, CurrenPos, Ans, RestAns, LastTriedNum, SideLen, Steps, LastBacktrackPos)

solve_backtrack(Seed, _PosInSeed, _Begin, _Rest, _LastNum, SideLen, [], LastBacktrackPos) ->
    solve(Seed, 1, [], Seed, 0, SideLen, [], LastBacktrackPos); % the very first stage; should become no solution
solve_backtrack(Seed, _PosInSeed, Ans, _Rest, _LastNum, SideLen, [{LastBacktrackPos, _LastTriedNum}|Tail], LastBacktrackPos) ->
    solve_backtrack(Seed, _PosInSeed, Ans, _Rest, _LastNum, SideLen, Tail, 0);
solve_backtrack(Seed, _PosInSeed, Ans, _Rest, _LastNum, SideLen, [{_Skip, SideLen}|Tail], LastBacktrackPos) ->
    %% already exhausted possible combination; keep bracktracking
    [{LasPosInSeed, LastPosInSeedNum}| RestSteps ] = Tail,
    PrevAns = lists:sublist(Ans, 1, LasPosInSeed-1),
    Rest = lists:sublist(Seed, LasPosInSeed, length(Seed)-LasPosInSeed+1),
    io:format("solve_backtrack (1) to prev pt ~p with num ~p, steps ~p ~n", [LasPosInSeed, LastPosInSeedNum, [{LasPosInSeed, SideLen}] ++ Tail]),
    io:format("solve_backtrack (1) last num ~p sidelen ~p~n", [LastPosInSeedNum, SideLen]),
    solve(Seed, LasPosInSeed, PrevAns, Rest, LastPosInSeedNum, SideLen, RestSteps);
solve_backtrack(Seed, _PosInSeed, Ans, _Rest, _LastNum, SideLen,  [{LasPosInSeed, LastPosInSeedNum}|Tail], LastBacktrackPos) ->
    PrevAns = lists:sublist(Ans, 1, LasPosInSeed-1),
    Rest = lists:sublist(Seed, LasPosInSeed, length(Seed)-LasPosInSeed+1),
    io:format("solve_backtrack (2) to prev pt ~p with num ~p, steps ~p ~n", [LasPosInSeed, LastPosInSeedNum, [{LasPosInSeed, LastPosInSeedNum}]++Tail]),
    io:format("solve_backtrack (2) last num ~p sidelen ~p~n", [LastPosInSeedNum, SideLen]),
    solve(Seed, LasPosInSeed, PrevAns, Rest, LastPosInSeedNum, SideLen, Tail).


solve(_Seed, EndPos,[N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81]=Ans, [], _, SideLen, _Steps) when
    (N1 + N2 + N3 + N10 + N11 + N12 + N19 + N20 + N21 == 45) andalso 
    (N28 + N29 + N30 + N37 + N38 + N39 + N46 + N47 + N48 == 45) andalso 
    (N55 + N56 + N57 + N64 + N65 + N66 + N73 + N74 + N75 == 45) andalso
    (N4 + N5 + N6 + N13 + N14 + N15 + N22 + N23 + N24 == 45) andalso 
    (N31 + N32 + N33 + N40 + N41 + N42 + N49 + N50 + N51 == 45) andalso 
    (N58 + N59 + N60 + N67 + N68 + N69 + N76 + N77 + N78 == 45) andalso 
    (N7 + N8 + N9 + N16 + N17 + N18 + N25 + N26 + N27 == 45) andalso 
    (N34 + N35 + N36 + N43 + N44 + N45 + N52 + N53 + N54 == 45) andalso 
    (N61 + N62 + N63 + N70 + N71 + N72 + N79 + N80 + N81 == 45)
->
    %% solution found
    Ans;
solve(Seed, EndPos, [N1, N2, N3, _N4, _N5, _N6, _N7, _N8, _N9, N10, N11, N12, _N13, _N14, _N15, _N16, _N17, _N18, N19, N20, N21|_IGNORE]= Ans, Rest, _, SideLen, Steps) when
            N1 + N2 + N3 + N10 + N11 + N12 + N19 + N20 + N21 /= 45 andalso
N1 /= 0 andalso N2 /= 0 andalso N3 /= 0 andalso N10 /= 0 andalso N11 /= 0 andalso N12 /= 0 andalso N19 /= 0 andalso N20 /= 0 andalso N21 /= 0 
->
    io:format("checkpoint 21~n"),
    solve_backtrack(Seed, EndPos, Ans, Rest, 0, SideLen, Steps);
    
solve(Seed, EndPos, [_N1, _N2, _N3, _N4, _N5, _N6, _N7, _N8, _N9, _N10, _N11, _N12, _N13, _N14, _N15, _N16, _N17, _N18, _N19, _N20, _N21, _N22, _N23, _N24, _N25, _N26, _N27, N28, N29, N30, _N31, _N32, _N33, _N34, _N35, _N36, N37, N38, N39, _N40, _N41, _N42, _N43, _N44, _N45, N46, N47, N48|_IGNORE]= Ans, Remain, _, SideLen, Steps) when
            N28 + N29 + N30 + N37 + N38 + N39 + N46 + N47 + N48 /= 45 andalso
N28 /= 0 andalso N29 /= 0 andalso N30 /= 0 andalso N37 /= 0 andalso N38 /= 0 andalso N39 /= 0 andalso N46 /= 0 andalso N47 /= 0 andalso N48 /= 0 
    ->
io:format("checkpoint 47~n"),
        solve_backtrack(Seed, EndPos, Ans, Remain, 0, SideLen, Steps);
    
solve(Seed, EndPos, [_N1, _N2, _N3, _N4, _N5, _N6, _N7, _N8, _N9, _N10, _N11, _N12, _N13, _N14, _N15, _N16, _N17, _N18, _N19, _N20, _N21, _N22, _N23, _N24, _N25, _N26, _N27, _N28, _N29, _N30, _N31, _N32, _N33, _N34, _N35, _N36, _N37, _N38, _N39, _N40, _N41, _N42, _N43, _N44, _N45, _N46, _N47, _N48, _N49, _N50, _N51, _N52, _N53, _N54, N55, N56, N57, _N58, _N59, _N60, _N61, _N62, _N63, N64, N65, N66, _N67, _N68, _N69, _N70, _N71, _N72, N73, N74, N75|_Rest]= Ans, Remain, _, SideLen, Steps) when
            N55 + N56 + N57 + N64 + N65 + N66 + N73 + N74 + N75 /= 45 andalso
%EndPos == 76 andalso
N55 /= 0 andalso N56 /= 0 andalso N57 /= 0 andalso N64 /= 0 andalso N65 /= 0 andalso N66 /= 0 andalso N73 /= 0 andalso N74 /= 0 andalso N75 /= 0 
    ->
        solve_backtrack(Seed, EndPos, Ans, Remain, 0, SideLen, Steps);
    
solve(Seed, EndPos, [_N1, _N2, _N3, N4, N5, N6, _N7, _N8, _N9, _N10, _N11, _N12, N13, N14, N15, _N16, _N17, _N18, _N19, _N20, _N21, N22, N23, N24|_Rest]= Ans, Remain, _, SideLen, Steps) when
            N4 + N5 + N6 + N13 + N14 + N15 + N22 + N23 + N24 /= 45 andalso
N4 /= 0 andalso N5 /= 0 andalso N6 /= 0 andalso N13 /= 0 andalso N14 /= 0 andalso N15 /= 0 andalso N22 /= 0 andalso N23 /= 0 andalso N24 /= 0 
    ->
        solve_backtrack(Seed, EndPos, Ans, Remain, 0, SideLen, Steps);
    
solve(Seed, EndPos, [_N1, _N2, _N3, _N4, _N5, _N6, _N7, _N8, _N9, _N10, _N11, _N12, _N13, _N14, _N15, _N16, _N17, _N18, _N19, _N20, _N21, _N22, _N23, _N24, _N25, _N26, _N27, _N28, _N29, _N30, N31, N32, N33, _N34, _N35, _N36, _N37, _N38, _N39, N40, N41, N42, _N43, _N44, _N45, _N46, _N47, _N48, N49, N50, N51|_Rest]= Ans, Remain, _, SideLen, Steps) when
            N31 + N32 + N33 + N40 + N41 + N42 + N49 + N50 + N51 /= 45 andalso
N31 /= 0 andalso N32 /= 0 andalso N33 /= 0 andalso N40 /= 0 andalso N41 /= 0 andalso N42 /= 0 andalso N49 /= 0 andalso N50 /= 0 andalso N51 /= 0 
    ->
        solve_backtrack(Seed, EndPos, Ans, Remain, 0, SideLen, Steps);
    
solve(Seed, EndPos, [_N1, _N2, _N3, _N4, _N5, _N6, _N7, _N8, _N9, _N10, _N11, _N12, _N13, _N14, _N15, _N16, _N17, _N18, _N19, _N20, _N21, _N22, _N23, _N24, _N25, _N26, _N27, _N28, _N29, _N30, _N31, _N32, _N33, _N34, _N35, _N36, _N37, _N38, _N39, _N40, _N41, _N42, _N43, _N44, _N45, _N46, _N47, _N48, _N49, _N50, _N51, _N52, _N53, _N54, _N55, _N56, _N57, N58, N59, N60, _N61, _N62, _N63, _N64, _N65, _N66, N67, N68, N69, _N70, _N71, _N72, _N73, _N74, _N75, N76, N77, N78|_Rest]= Ans, Remain, _, SideLen, Steps) when
            N58 + N59 + N60 + N67 + N68 + N69 + N76 + N77 + N78 /= 45 andalso
N58 /= 0 andalso N59 /= 0 andalso N60 /= 0 andalso N67 /= 0 andalso N68 /= 0 andalso N69 /= 0 andalso N76 /= 0 andalso N77 /= 0 andalso N78 /= 0 
    ->
        solve_backtrack(Seed, EndPos, Ans, Remain, 0, SideLen, Steps);
    
solve(Seed, EndPos, [_N1, _N2, _N3, _N4, _N5, _N6, N7, N8, N9, _N10, _N11, _N12, _N13, _N14, _N15, N16, N17, N18, _N19, _N20, _N21, _N22, _N23, _N24, N25, N26, N27|_Rest]= Ans, Remain, _, SideLen, Steps) when
            N7 + N8 + N9 + N16 + N17 + N18 + N25 + N26 + N27 /= 45 andalso
N7 /= 0 andalso N8 /= 0 andalso N9 /= 0 andalso N16 /= 0 andalso N17 /= 0 andalso N18 /= 0 andalso N25 /= 0 andalso N26 /= 0 andalso N27 /= 0 
    ->
        solve_backtrack(Seed, EndPos, Ans, Remain, 0, SideLen, Steps);
    
solve(Seed, EndPos, [_N1, _N2, _N3, _N4, _N5, _N6, _N7, _N8, _N9, _N10, _N11, _N12, _N13, _N14, _N15, _N16, _N17, _N18, _N19, _N20, _N21, _N22, _N23, _N24, _N25, _N26, _N27, _N28, _N29, _N30, _N31, _N32, _N33, N34, N35, N36, _N37, _N38, _N39, _N40, _N41, _N42, N43, N44, N45, _N46, _N47, _N48, _N49, _N50, _N51, N52, N53, N54|_Rest]= Ans, Remain, _, SideLen, Steps) when
            N34 + N35 + N36 + N43 + N44 + N45 + N52 + N53 + N54 /= 45 andalso
N34 /= 0 andalso N35 /= 0 andalso N36 /= 0 andalso N43 /= 0 andalso N44 /= 0 andalso N45 /= 0 andalso N52 /= 0 andalso N53 /= 0 andalso N54 /= 0 
    ->
        solve_backtrack(Seed, EndPos, Ans, Remain, 0, SideLen, Steps);

solve(Seed, PosInSeed, Ans, [H|Rest], LastNum, SideLen, [{LastPos,PrevLastNum}|Steps]) when H =:= 0 andalso LastNum >= SideLen
 ->
    %% should not move forth if the number to try has exceeded the limit
     NewH = LastNum + 1,
     io:format("move on (-1) from pos ~p and ans is ~w (Rest ~w)~n", [PosInSeed, Ans++[H]++Rest, [H]++Rest]),
     % solve(Seed, PosInSeed+1, Ans++[NewH], Rest, 0, SideLen, [{PosInSeed, NewH}]++Steps);
     io:format("solve backtracked~n"),
     solve_backtrack(Seed, LastPos, Ans, [H]++Rest, PrevLastNum+1, SideLen, Steps);
solve(Seed, PosInSeed, Ans, [H|Rest], LastNum, SideLen, Steps) when H =:= 0
 ->
    %% should not move forth if the number to try has exceeded the limit
     NewH = LastNum + 1,
     io:format("move on (1) from pos ~p and ans is ~w (Rest ~w)~n", [PosInSeed, Ans++[H]++Rest, [H]++Rest]),
     solve(Seed, PosInSeed+1, Ans++[NewH], Rest, 0, SideLen, [{PosInSeed, NewH}]++Steps);
solve(Seed, PosInSeed, Begin, [H|Rest], _TriedNumAtThisPos, SideLen, Steps) when H /= 0 -> 
     %% move on
     io:format("move on (2) from pos ~p and ans is ~p~n", [PosInSeed, Begin++[H|Rest]]),
     solve(Seed, PosInSeed+1, Begin ++ [H], Rest, 0, SideLen, Steps);

solve(Seed, PosInSeed, Begin, [], TriedThisNum, SideLen, Steps) ->
     %  to the end but no solution; backtrack
    io:format("backtracked (1) at ~p ans ~p ~n", [PosInSeed, Begin]),
    solve_backtrack(Seed, -1, Begin, [], -1, SideLen, Steps);
solve(Seed, PosInSeed, Begin, Rest, _TriedNumAtThisPos, SideLen, Steps) ->
    %% time to backtrack?
	io:format("backtracked (3) at ~p ans ~p ~n", [PosInSeed, Begin ++ Rest]),
    solve_backtrack(Seed, -1, Begin, Rest, -1, SideLen, Steps).

run() ->    
    Ans = solve(seed_matrix()),
    io:format("Ans ~p~n", [Ans]).

unit_test() ->
    [?assert(pos_to_xy(1, 4) =:= {1, 1}),
     ?assert(pos_to_xy(4, 4) =:= {1, 4}),
     ?assert(pos_to_xy(7, 4) =:= {2, 3}),
     ?assert(pick_num2(1, 1, [1,0], [0,0], 1, 2) =:= {ok, 2}),
     ?assert(pick_num2(1, 1, [1,0], [1,2], 1, 2) =:= {err, 0}),
     ?assert(pick_num2(1, 1, [1,0], [1,2], 5, 2) =:= {err, 0})
    ].
   
