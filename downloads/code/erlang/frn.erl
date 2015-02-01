-module(frn).

-export([discount_margin/4, discount_margin/5, test/0]).

% Simple margin = ((M − Pd ) / (100 × T) )+ Mq
% 
% where
% Pd = the dirty price, or P plus the accrued interest AI 
% M = the par value
% T = the number of years from settlement to maturity 
% Mq = the quoted margin


% A positive simple margin signifies that the FRN’s yield is higher than that of a comparable money market security.
discount_margin(ParValue, DirtyPrice, Years, QuotedMargin) ->
    (ParValue - DirtyPrice) / (100.0 * Years) + QuotedMargin.
discount_margin(ParValue, Price, AccruedInterest, Years, QuotedMargin) ->
    discount_margin(ParValue, Price + AccruedInterest, Years, QuotedMargin).


test() ->
    discount_margin(100, 98, 10, 0.05). % 0.0502
