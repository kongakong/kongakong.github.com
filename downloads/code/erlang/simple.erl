-module(simple).


solve_next([], []) ->
    solve_next([], 1, []);
solve_next(Ans, Steps) ->
    solve_next(Ans, 1, Steps).
solve_next(Ans, Num, Steps)->
    solve_next().

solve([N1, N2, N3, N4]=Ans, Steps) when N1 + N2 + N3 + N4 = 10 ->
    Ans; % done
solve(Ans, Steps) ->
    solve_next(Ans, Steps).
