extern int test1( int );

extern "C" {
  extern int test2( int );
}

extern "C" {
  extern int test3( int );
}

int main()
{
  test1(30);
  test2(30);
  test3(30);
}
