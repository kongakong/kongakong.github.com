-module(sudoku4x4).

 -include_lib("eunit/include/eunit.hrl").

-export([seed_matrix2/0]).
-export([run/0]).
-export([element/3, solve/1, take_row_and_column/4, pick_num/4, pos_to_xy/2]).


%% matrix representation
seed_matrix2() ->
    [0, 0, 1, 0,
     4, 0, 0, 0,
     0, 0, 0, 2,
     0, 4, 0, 0].

matrix2_ans() ->
    [3, 2, 1, 4, 
     4, 1, 2, 3,
     1, 3, 4, 2,
     2, 4, 3, 1].
    

element(X, Y, _) when X < 0; Y < 0 ->
    nil;
element(X, Y, Matrix) ->
    % make sure it is zero-indexed
    lists:nth(X*9 + Y - 1, Matrix).

pos_to_xy(Pos, Len) when Pos rem Len =:= 0 ->
    {(Pos div Len), Len};
pos_to_xy(Pos, Len) ->
    {(Pos div Len) + 1, Pos rem Len}.

take_row_and_column(R, C, AnsMatrix) ->
    SideLen =  round(math:sqrt(length(AnsMatrix))),
    take_row_and_column(R, C, AnsMatrix, SideLen).

take_row_and_column(R, C, AnsMatrix, SideLen) -> 
    % io:format("take_row_and_column: ~p~n", [AnsMatrix]),
    RowVector = [ lists:nth((R-1)*SideLen+X, AnsMatrix) || X <- lists:seq(1, SideLen)],
    ColVector = [ lists:nth((X-1)*SideLen+C, AnsMatrix) || X <- lists:seq(1, SideLen)],
    {RowVector, ColVector}.    

%% pick a number to test for coordinate x,y
pick_num(R, C, AnsMatrix, StartFromThisNum) ->
    SideLen =  round(math:sqrt(length(AnsMatrix))),
    {RV, CV} = take_row_and_column(R, C, AnsMatrix, SideLen),
    pick_num2(R, C, RV, CV, StartFromThisNum, SideLen).
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
    %% round() is needed to convert it to integer
    solve(Seed, 1, [], Seed, 1, round(math:sqrt(length(Seed))), []).

solve_backtrack(Seed, PosInSeed, _Begin, Rest, LastNum, SideLen, []) ->
    solve(Seed, 1, [], Seed, 1, SideLen, []); % initial step
solve_backtrack(Seed, _PosInSeed, Ans, _Rest, _LastNum, SideLen, [LastStep|Tail]) ->
    {LasPosInSeed, LastPosInSeedNum} = LastStep,
    PrevAns = lists:sublist(Ans, 1, LasPosInSeed-1),
    Rest = lists:sublist(Seed, LasPosInSeed, length(Seed)-LasPosInSeed+1),
    solve(Seed, LasPosInSeed, PrevAns, Rest, LastPosInSeedNum, SideLen, Tail).

is_check_point(6, 4) -> 
    {yes, [{1, 6}]};
is_check_point(8, 4) -> 
    {yes, [{1, 6}, {3, 8}]};
is_check_point(14, 4) -> 
    {yes, [{1, 6}, {3, 8}, {9, 14}]};
is_check_point(16, 4) -> 
    {yes, [{1, 6}, {3, 8}, {9, 14}, {11, 16}]};
is_check_point(_,_) ->
    {no, []}.

is_well_formed(M, Pts) when is_list(Pts) ->
    F = fun({X, Y}) -> is_well_formed(M, X, Y) end,
    lists:all(F, Pts).   
is_well_formed(M, 1, 6) ->
    case lists:nth(1, M) + lists:nth(2, M) + lists:nth(5, M) + lists:nth(6, M) of
	10 -> true;
	_ -> false
    end;
is_well_formed(M, 3, 8) ->
    case lists:nth(3, M) + lists:nth(4, M) + lists:nth(7, M) + lists:nth(8, M) of
	10 -> true;
	_ -> false
    end;
is_well_formed(M, 9, 14) ->
    case lists:nth(9, M) + lists:nth(10, M) + lists:nth(13, M) + lists:nth(14, M) of
	10 -> true;
	_ -> false
    end;	
is_well_formed(M, 11, 16) ->
    case lists:nth(11, M) + lists:nth(12, M) + lists:nth(15, M) + lists:nth(16, M) of
	10 -> true;
	_ -> false
    end;    
is_well_formed(_, _, _) ->
    false.


solve(Seed, PosInSeed, Ans, [H|Remain], LastNum, SideLen, Steps) when H =:= 0
    ->
    {R, C} = pos_to_xy(PosInSeed, SideLen),
    CurrentMatrix = lists:sublist(Ans, 1, PosInSeed-1) ++ lists:sublist(Seed, PosInSeed, length(Seed)-PosInSeed+1),
    case pick_num(R, C, CurrentMatrix, LastNum+1) of
      {ok, NewH} ->
            case is_check_point(PosInSeed, SideLen) of
		{yes, Pts} ->
		    ProposedMatrix = lists:sublist(Ans, 1, PosInSeed-1) ++ [NewH] ++ lists:sublist(Seed, PosInSeed+1, length(Seed)-PosInSeed+1),
		    case is_well_formed(ProposedMatrix, Pts) of
			true -> %% move on
			    solve(Seed, PosInSeed+1, Ans++[NewH], Remain, 0, SideLen, [{PosInSeed, NewH}]++Steps);
			false -> %% backtraked
			    solve_backtrack(Seed, -1, Ans, [H]++Remain, -1, SideLen, Steps)
		    end;
		{no, _} -> % continue
		    solve(Seed, PosInSeed+1, Ans++[NewH], Remain, 0, SideLen, [{PosInSeed, NewH}]++Steps)
	     end;
      _ -> %% backtracked
            solve_backtrack(Seed, -1, Ans, [H]++Remain, -1, SideLen, Steps)
    end;
solve(Seed, PosInSeed, Begin, [H|Remain], _TriedNumAtThisPos, SideLen, Steps) -> 
    %% seeded value, move on
    solve(Seed, PosInSeed+1, Begin ++ [H], Remain, 0, SideLen, Steps);
solve(_Seed, EndPos, Ans, _, _, SideLen, _Steps) when EndPos == SideLen*SideLen+1 ->
    Ans.


run() ->    
    Ans = solve(seed_matrix2()),
    io:format("Ans ~p~n", [Ans]).

unit_test() ->
    [?assert(pos_to_xy(1, 4) =:= {1, 1}),
     ?assert(pos_to_xy(4, 4) =:= {1, 4}),
     ?assert(pos_to_xy(7, 4) =:= {2, 3}),
     ?assert(pick_num2(1, 1, [1,0], [0,0], 1, 2) =:= {ok, 2}),
     ?assert(pick_num2(1, 1, [1,0], [1,2], 1, 2) =:= {err, 0}),
     ?assert(pick_num2(1, 1, [1,0], [1,2], 5, 2) =:= {err, 0})
    ].
    


    

