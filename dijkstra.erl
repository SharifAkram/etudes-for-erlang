-module(dijkstra).
-export([gcd/2]).

-spec(gcd(number(), number()) -> number()).

gcd(M, N) ->
        if
            M == N -> M;
    M > N -> gcd(M - N, N);
    true -> gcd(M, N - M)
        end.


% c(dijkstra).
% dijkstra:gcd(12, 8).
% 4
% dijkstra:gcd(14, 21).
% 7
% dijkstra:gcd(125, 46).
% 1
% dijkstra:gcd(120, 36).
% 12
