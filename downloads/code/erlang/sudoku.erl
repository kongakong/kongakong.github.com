-module(sudoku).
%% matrix representation

-export([null_matrix/0, seed_matrix1/0, seed_matrix2/0]).
-export([element/3, solve/1, take_row_and_column/4, test/0, pos_to_xy/2]).

%% topleft, topmid, topright
%% centerleft, centermid, centerright
%% buttomleft, buttommid, buttomright

-define(TOPLEFT, (0, 0)). % (x, y)
-define(TOPMID, (3, 0)).
-define(TOPRIGHT, (6, 0)).


null_matrix() -> 
    [0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0].

seed_matrix1() ->
   [0, 1, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 2, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 3, 0,
    0, 0, 0, 4, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0].  

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

pos_to_xy(Pos, Len) ->
    {(Pos div Len) + 1, Pos rem Len}.

take_row_and_column(R, C, AnsMatrix) ->
    SideLen =  round(math:sqrt(length(AnsMatrix))),
    take_row_and_column(R, C, AnsMatrix, SideLen).

take_row_and_column(R, C, AnsMatrix, SideLen) -> 
    RowVector = [ lists:nth((R-1)*SideLen+X, AnsMatrix) || X <- lists:seq(1, SideLen)],
    ColVector = [ lists:nth((X-1)*SideLen+C, AnsMatrix) || X <- lists:seq(1, SideLen)],
    {RowVector, ColVector}.    

%% pick a number to test for coordinate x,y
pick_num(C, R, AnsMatrix) ->
    SideLen =  round(math:sqrt(length(AnsMatrix))),
    {RV, CV} = take_row_and_column(R, C, AnsMatrix, SideLen),
    pick_num2(C, R, RV, CV, 1, SideLen+1).
pick_num2(C, R, RV, CV, Num, Break) ->
    F = fun(X) -> X /= Num end,
    InRow = lists:any(F, RV),
    InCol = lists:any(F, RV),
    case { InRow, InCol} of 
	{false, false} -> {ok, Num};
	_ -> pick_num2(C, R, RV, CV, Num+1, Break)
    end;
pick_num2(_C, _R, _RV, _CV, Break, Break) ->
    {err, 0}.
    
solve(Seed) ->
    %% round is needed to convert it to integer
    solve(Seed, 1, [], Seed, 1, round(math:sqrt(length(Seed)))).

solve(Seed, PosInSeed, Begin, [H|Remind], _, SideLen) when H =:= 0
    ->
    {C, R} = pos_to_xy(PosInSeed, SideLen),
    CurrentMatrix = lists:sublist(Begin, 1, PosInSeed-1) ++ lists:sublist(Seed, PosInSeed, length(Seed)-PosInSeed),
    io:format("~p ", [ CurrentMatrix ]),
    {ok, NewH} = pick_num(C, R, CurrentMatrix),
    solve(Seed, PosInSeed+1, Begin++[NewH], Remind, NewH, SideLen);
solve(Seed, PosInSeed, Begin, [H|Remind], _TriedNumAtThisPos, SideLen) -> 
    %% seeded value, move on
    solve(Seed, PosInSeed+1, Begin ++ [H], Remind, 0, SideLen);
solve(_Seed, EndPos, Ans, _, _, SideLen) 
  when EndPos =:= SideLen*SideLen ->
    %% finally
    Ans.


test() ->    
    solve(seed_matrix2()).

    

