/* { dg-do compile } */
/* { dg-options "-O2 -fdump-ipa-icf"  } */

#include <math.h>

__attribute__ ((noinline))
float foo()
{
  return sin(12.4f);
}

__attribute__ ((noinline))
float bar()
{
  return sin(12.4f);
}

int main()
{
  foo();
  bar();

  return 0;
}

/* { dg-final { scan-ipa-dump "Semantic equality hit:bar->foo" "icf"  } } */
/* { dg-final { scan-ipa-dump "Equal symbols: 1" "icf"  } } */
/* { dg-final { cleanup-ipa-dump "icf" } } */
