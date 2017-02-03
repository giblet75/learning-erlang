-module(time).
-export([swedish_date/0]).
-include_lib("eunit/include/eunit.hrl").

swedish_date() -> swedish_date(date()).
two_digit_number(N) when N < 10 -> "0" ++ integer_to_list(N);
two_digit_number(N) when N > 99 -> lists:nthtail(length(integer_to_list(N)) - 2, integer_to_list(N));
two_digit_number(N) -> integer_to_list(N).
swedish_date({Y,M,D}) -> two_digit_number(Y) ++ two_digit_number(M) ++ two_digit_number(D).

