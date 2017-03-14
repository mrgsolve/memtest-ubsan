```r
> system("RD CMD config CXX")
g++ -fsanitize=address,undefined,bounds-strict -fno-omit-frame-pointer -fno-sanitize=object-size,vptr
> system("RD CMD config CXXFLAGS")
-pipe -Wall -pedantic -O2 -mtune=native
> system("RD CMD config LDFLAGS")
-L/usr/local/lib
> system("RD CMD config CC")
gcc -std=gnu99 -fsanitize=address,undefined -fno-omit-frame-pointer
> Sys.getenv("ASAN_OPTIONS")
[1] "alloc_dealloc_mismatch=0:detect_leaks=0:detect_odr_violation=0"

```
