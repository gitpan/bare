#!perl -w

use strict;
use Test::More tests => 6;

use lib "./blib/lib";

{
  use bare qw( foo bar );
  foo=2;
  bar=4;
  ok(foo==2);
  ok(bar==4);
}

use utf8;
use bare qw(şkí);
şkí=3;
ok(şkí==3);
ok(foo);

{ 
  local $foo=5;
  ok(foo==5);
}

ok(foo==2);


