-module(t2).

%% API exports
-export([test/0]).

-define(T, test).
-record(?T, { key :: integer(), val :: any()}).

%%====================================================================
%% API functions
%%====================================================================
-spec test() -> ok | {error, any()}.
test() ->
  Options = [{type, set}
            ,{ram_copies, node()}
            ,{attributes, record_info(fields, ?T)}
            ],
  case mnesia:create_table(?T, Options) of
    {atomic, ok} ->
      ok;
    Error ->
      {error, Error}
  end.

%%====================================================================
%% Internal functions
%%====================================================================
