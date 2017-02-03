-module(lists1).
-export([min/1, max/1, min_max/1]).
-include_lib("eunit/include/eunit.hrl").
-compile({no_auto_import, [min/2]}).
-compile({no_auto_import, [max/2]}).

min([H|T]) -> min(H, T).
max([H|T]) -> max(H, T).
min_max([H|T]) -> {min(H, T), max(H, T)}.

min(H, []) -> H;
min(P, [H|T]) when P < H -> min(P, T);
min(_P, [H|T]) -> min(H, T).

max(H, []) -> H;
max(P, [H|T]) when P > H -> max(P, T);
max(_P, [H|T]) -> max(H, T).


min_test_() ->
	[?_assert(min([1,2]) =:= 1),
	 ?_assert(min([0, -1]) =:= -1),
	 ?_assert(min([4]) =:= 4)
	].

max_test_() ->
	[?_assert(max([1,2]) =:= 2),
	 ?_assert(max([0, -1]) =:= 0),
	 ?_assert(max([4]) =:= 4)
	].
min_max_test_() ->
	[?_assert(min_max([1,2]) =:= {1, 2}),
	 ?_assert(min_max([0, -1, 2]) =:= {-1, 2}),
	 ?_assert(min_max([4]) =:= {4, 4})
	].
