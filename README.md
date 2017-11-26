t2
=====

An OTP library

Test
-----

    $ rebar3 dialyzer

What to expect
--------------

When ```{user_properties, []}``` is included in ```mnesia:create_table/2``` options ```dialyzer``` will warn:

    src/t2.erl
      13: Function test/0 has no local return


