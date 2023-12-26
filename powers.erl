-module(powers).
-export([raise/2]).

-spec(raise(number(), integer()) -> number()).

raise(_, 0) -> 1;

raise(X, 1) -> X;

raise(X, N) when N > 0 -> X * raise(X, N - 1);

raise(X, N) when N < 0 -> 1 / raise(X, -N).


% Eshell V10.6.4  (abort with ^G)
% c(powers).
% {ok,powers}
% powers:raise(5, 1).
% 5
% powers:raise(2, 3).
% 8
% powers:raise(1.2, 3).
% 1.728
% powers:raise(2, 6).
% 64
% powers:raise(2, -3).7
% 0.125
