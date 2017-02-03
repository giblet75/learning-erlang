-module(mathStuff).
-export([perimeter/1]).
-import(math, [pi/0]).
-include_lib("eunit/include/eunit.hrl").

perimeter({square, Side}) -> 4 * Side;
perimeter({circle, Radius}) -> 2 * pi() * Radius;
perimeter({triangle, A, B, C}) -> A + B + C.

perimeter_test_() -> 
   [?_assert(perimeter({square, 2}) =:= 8),
	?_assert(perimeter({circle, 2}) =:= 4 * pi()),
	?_assert(perimeter({triangle, 1, 2, 3}) =:= 6)
   ].
