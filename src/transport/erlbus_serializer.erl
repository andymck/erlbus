%%%-------------------------------------------------------------------
%%% @doc
%%% This is an Erlang clone of the original
%%% `Phoenix.Transports.Serializer' module.
%%% Copyright (c) 2014 Chris McCord
%%% @reference See
%%% <a href="https://github.com/phoenixframework/phoenix">Phoenix</a>
%%% @end
%%%-------------------------------------------------------------------
-module(erlbus_serializer).

%% Translates a `erlbus_broadcast:broadcast()' to fastlane format
-callback fastlane(erlbus_broadcast:broadcast()) -> term().

%% Encodes `erlbus_broadcast:message()' to transport representation
-callback encode(erlbus_broadcast:message() | erlbus_broadcast:reply()) -> term().

%% Decodes data into `erlbus_broadcast:message()' spec
-callback decode(binary(), [{atom(), term()}]) -> erlbus_broadcast:message().
