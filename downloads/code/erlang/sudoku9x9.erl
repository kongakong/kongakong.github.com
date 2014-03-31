-module(sudoku9x9).

 -include_lib("eunit/include/eunit.hrl").

-export([seed_matrix/0, matrix_ans/0]).
-export([run/0]).
-export([solve/1, take_row_and_column/3, pick_num/4, pos_to_xy/2]).
-export([is_well_formed/2]).

-define(SIDELEN, 9).


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
    


is_check_point(21, 9) ->
    {yes, [{1, 21}]};
is_check_point(24, 9) ->
     {yes, [{1, 21}, {4, 24}]};
is_check_point(27, 9) ->
     {yes, [{1, 21}, {4, 24}, {7, 27}]};
is_check_point(48, 9) ->
     {yes, [{1, 21}, {4, 24}, {7, 27}, {28, 48}]};
is_check_point(51, 9) ->
     {yes, [{1, 21}, {4, 24}, {7, 27}, {28, 48}, {31, 51}]};
is_check_point(54, 9) ->
    {yes, [{1, 21}, {4, 24}, {7, 27}, {28, 48}, {31, 51}, {34, 54}]};
is_check_point(75, 9) ->
    {yes, [{1, 21}, {4, 24}, {7, 27}, {28, 48}, {31, 51}, {34, 54}, {55, 75}]};
is_check_point(78, 9) ->
    {yes, [{1, 21}, {4, 24}, {7, 27}, {28, 48}, {31, 51}, {34, 54}, {55, 75}, {58, 78}]};
is_check_point(81, 9) ->
    {yes, [{1, 21}, {4, 24}, {7, 27}, {28, 48}, {31, 51}, {34, 54}, {55, 75}, {58, 78}, {61 ,81}]};
is_check_point(_,_) ->
    {no, []}.

is_well_formed(M, Pts) when is_list(Pts) ->
    F = fun({X, Y}) -> is_well_formed_checksum(M, X, Y) and is_well_formed_uniq(M, X, Y) end,
    lists:all(F, Pts).

is_well_formed_checksum(M, 1, 21) ->
    case lists:nth(1, M) + lists:nth(2, M) + lists:nth(3, M) + lists:nth(10, M) + lists:nth(11, M) + lists:nth(12, M) + lists:nth(19, M) + lists:nth(20, M) + lists:nth(21, M) of
        45 -> true;
        _ -> false
    end;    
is_well_formed_checksum(M, 28, 48) ->
    case lists:nth(28, M) + lists:nth(29, M) + lists:nth(30, M) + lists:nth(37, M) + lists:nth(38, M) + lists:nth(39, M) + lists:nth(46, M) + lists:nth(47, M) + lists:nth(48, M) of
        45 -> true;
        _ -> false
    end;    
is_well_formed_checksum(M, 55, 75) ->
    case lists:nth(55, M) + lists:nth(56, M) + lists:nth(57, M) + lists:nth(64, M) + lists:nth(65, M) + lists:nth(66, M) + lists:nth(73, M) + lists:nth(74, M) + lists:nth(75, M) of
        45 -> true;
        _ -> false
    end;    
is_well_formed_checksum(M, 4, 24) ->
    case lists:nth(4, M) + lists:nth(5, M) + lists:nth(6, M) + lists:nth(13, M) + lists:nth(14, M) + lists:nth(15, M) + lists:nth(22, M) + lists:nth(23, M) + lists:nth(24, M) of
        45 -> true;
        _ -> false
    end;    
is_well_formed_checksum(M, 31, 51) ->
    case lists:nth(31, M) + lists:nth(32, M) + lists:nth(33, M) + lists:nth(40, M) + lists:nth(41, M) + lists:nth(42, M) + lists:nth(49, M) + lists:nth(50, M) + lists:nth(51, M) of
        45 -> true;
        _ -> false
    end;    
is_well_formed_checksum(M, 58, 78) ->
    case lists:nth(58, M) + lists:nth(59, M) + lists:nth(60, M) + lists:nth(67, M) + lists:nth(68, M) + lists:nth(69, M) + lists:nth(76, M) + lists:nth(77, M) + lists:nth(78, M) of
        45 -> true;
        _ -> false
    end;    
is_well_formed_checksum(M, 7, 27) ->
    case lists:nth(7, M) + lists:nth(8, M) + lists:nth(9, M) + lists:nth(16, M) + lists:nth(17, M) + lists:nth(18, M) + lists:nth(25, M) + lists:nth(26, M) + lists:nth(27, M) of
        45 -> true;
        _ -> false
    end;    
is_well_formed_checksum(M, 34, 54) ->
    case lists:nth(34, M) + lists:nth(35, M) + lists:nth(36, M) + lists:nth(43, M) + lists:nth(44, M) + lists:nth(45, M) + lists:nth(52, M) + lists:nth(53, M) + lists:nth(54, M) of
        45 -> true;
        _ -> false
    end;    
is_well_formed_checksum(M, 61, 81) ->
    case lists:nth(61, M) + lists:nth(62, M) + lists:nth(63, M) + lists:nth(70, M) + lists:nth(71, M) + lists:nth(72, M) + lists:nth(79, M) + lists:nth(80, M) + lists:nth(81, M) of
        45 -> true;
        _ -> false
    end; 
is_well_formed_checksum(_, _, _) ->
    false.

is_well_formed_uniq(M, 1, 21) ->
    [1,2,3,4,5,6,7,8,9]==lists:sort([lists:nth(1, M) , lists:nth(2, M) , lists:nth(3, M) , lists:nth(10, M) , lists:nth(11, M) , lists:nth(12, M) , lists:nth(19, M) , lists:nth(20, M) , lists:nth(21, M)]);  
is_well_formed_uniq(M, 28, 48) ->
    [1,2,3,4,5,6,7,8,9]==lists:sort([lists:nth(28, M) , lists:nth(29, M) , lists:nth(30, M) , lists:nth(37, M) , lists:nth(38, M) , lists:nth(39, M) , lists:nth(46, M) , lists:nth(47, M) , lists:nth(48, M)]);
is_well_formed_uniq(M, 55, 75) ->
    [1,2,3,4,5,6,7,8,9]==lists:sort([lists:nth(55, M) , lists:nth(56, M) , lists:nth(57, M) , lists:nth(64, M) , lists:nth(65, M) , lists:nth(66, M) , lists:nth(73, M) , lists:nth(74, M) , lists:nth(75, M)]);
is_well_formed_uniq(M, 4, 24) ->
    [1,2,3,4,5,6,7,8,9]==lists:sort([lists:nth(4, M) , lists:nth(5, M) , lists:nth(6, M) , lists:nth(13, M) , lists:nth(14, M) , lists:nth(15, M) , lists:nth(22, M) , lists:nth(23, M) , lists:nth(24, M)]);
is_well_formed_uniq(M, 31, 51) ->
    [1,2,3,4,5,6,7,8,9]==lists:sort([lists:nth(31, M) , lists:nth(32, M) , lists:nth(33, M) , lists:nth(40, M) , lists:nth(41, M) , lists:nth(42, M) , lists:nth(49, M) , lists:nth(50, M) , lists:nth(51, M)]);
is_well_formed_uniq(M, 58, 78) ->
    [1,2,3,4,5,6,7,8,9]==lists:sort([lists:nth(58, M) , lists:nth(59, M) , lists:nth(60, M) , lists:nth(67, M) , lists:nth(68, M) , lists:nth(69, M) , lists:nth(76, M) , lists:nth(77, M) , lists:nth(78, M)]);
is_well_formed_uniq(M, 7, 27) ->
    [1,2,3,4,5,6,7,8,9]==lists:sort([lists:nth(7, M) , lists:nth(8, M) , lists:nth(9, M) , lists:nth(16, M) , lists:nth(17, M) , lists:nth(18, M) , lists:nth(25, M) , lists:nth(26, M) , lists:nth(27, M)]);
is_well_formed_uniq(M, 34, 54) ->
    [1,2,3,4,5,6,7,8,9]==lists:sort([lists:nth(34, M) , lists:nth(35, M) , lists:nth(36, M) , lists:nth(43, M) , lists:nth(44, M) , lists:nth(45, M) , lists:nth(52, M) , lists:nth(53, M) , lists:nth(54, M)]);
is_well_formed_uniq(M, 61, 81) ->
   [1,2,3,4,5,6,7,8,9]==lists:sort([ lists:nth(61, M) , lists:nth(62, M) , lists:nth(63, M) , lists:nth(70, M) , lists:nth(71, M) , lists:nth(72, M) , lists:nth(79, M) , lists:nth(80, M) , lists:nth(81, M)]);
is_well_formed_uniq(_, _, _) ->
    false.

solve(Seed) ->
    %% round() is needed to convert it to integer
    solve(Seed, 1, [], Seed, 1, ?SIDELEN, []).

solve_backtrack(Seed, _PosInSeed, _Begin, _Rest, _LastNum, SideLen, []) ->
    solve(Seed, 1, [], Seed, 1, SideLen, []); % initial step
solve_backtrack(Seed, _PosInSeed, Ans, _Rest, _LastNum, SideLen, [LastStep|Tail]) ->
    {LasPosInSeed, LastPosInSeedNum} = LastStep,
    PrevAns = lists:sublist(Ans, 1, LasPosInSeed-1),
    Rest = lists:sublist(Seed, LasPosInSeed, length(Seed)-LasPosInSeed+1),
    solve(Seed, LasPosInSeed, PrevAns, Rest, LastPosInSeedNum, SideLen, Tail).

solve(_Seed, EndPos, Ans, [], _, SideLen, _Steps) when EndPos == SideLen * SideLen + 1  ->
    %% pass the end post
    Ans;
solve(Seed, PosInSeed, Ans, [H|Rest], LastNum, SideLen, Steps) when H =:= 0
    ->
    {R, C} = pos_to_xy(PosInSeed, SideLen),
    CurrentMatrix = lists:sublist(Ans, 1, PosInSeed-1) ++ lists:sublist(Seed, PosInSeed, length(Seed)-PosInSeed+1),
    % io:format("Working on matrix ~p~n", [CurrentMatrix]),
    case pick_num(R, C, CurrentMatrix, LastNum+1) of
      {ok, NewH} ->
            case is_check_point(PosInSeed, SideLen) of
		{yes, Pts} ->
		    ProposedMatrix = lists:sublist(Ans, 1, PosInSeed-1) ++ [NewH] ++ lists:sublist(Seed, PosInSeed+1, length(Seed)-PosInSeed+1),
		    case is_well_formed(ProposedMatrix, Pts) of
			true -> %% move on
			    % io:format("Got it ~p. Next pos ~p~n", [NewH, PosInSeed+1]),
			    solve(Seed, PosInSeed+1, Ans++[NewH], Rest, 0, SideLen, [{PosInSeed, NewH}]++Steps);
			false -> %% backtraked
			    % io:format("backtracked (1) at ~p. Tried ~p at (~p,~p)~n", [ PosInSeed, NewH, R, C ]),
			    solve_backtrack(Seed, -1, Ans, [H]++Rest, -1, SideLen, Steps)
		    end;
		{no, _} -> % continue
		    % io:format("backtracked (2) at ~p. Tried ~p at (~p,~p)~n", [ PosInSeed, NewH, R, C ]),
		    solve(Seed, PosInSeed+1, Ans++[NewH], Rest, 0, SideLen, [{PosInSeed, NewH}]++Steps)
	     end;
      _ -> %% backtracked
	    % io:format("backtracked (3) at ~p. No soln at (~p,~p)~n", [ PosInSeed, R, C ]),
            solve_backtrack(Seed, -1, Ans, [H]++Rest, -1, SideLen, Steps)
    end;
solve(Seed, PosInSeed, Begin, [H|Rest], _TriedNumAtThisPos, SideLen, Steps) -> 
    %% seeded value, keep moving on
    solve(Seed, PosInSeed+1, Begin ++ [H], Rest, 0, SideLen, Steps).

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

    

