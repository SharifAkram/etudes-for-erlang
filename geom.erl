-module(geom).
-export([area/3]).

-spec(area(atom(), number(), number()) -> number()).

area(Shape, A, B) when A >= 0, B >= 0 ->
    case Shape of
        rectangle -> A * B;
        triangle -> (A * B) / 2.0;
        ellipse -> math:pi() * A * B
    end.


% Eshell V10.6.4  (abort with ^G)
% c(geom).
% geom:area(rectangle, 7, 3).
% 21
% geom:area(triangle, 7, 3).
% 10.5
% geom:area(ellipse, 7, 3).
% 65.97344572538566
