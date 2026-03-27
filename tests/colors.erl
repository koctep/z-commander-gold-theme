%% Comments should render in the comment color.
%% Numbers should render in dark pink.

-module(colors).
-export([format_sample/2, sample/0]).

-define(TIMEOUT, 42).
-define(HEX_VALUE, 16#FF).

format_sample(Name, Retries) when Retries > 0 ->
    io_lib:format("~ts:~B:~B:~B", [Name, Retries, ?TIMEOUT, ?HEX_VALUE]);
format_sample(_Name, _Retries) ->
    <<"inactive">>.

sample() ->
    Name = <<"Commander Gold">>,
    receive
        _Msg -> ok
    end,
    Retries = 3,
    Active = true,
    #{name => Name, retries => Retries, active => Active, result => format_sample(Name, Retries)}.
