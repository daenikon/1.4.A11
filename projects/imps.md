# Image Processing Server
- lua!

## Openresty
There's no `openresty` ebuild :(
Therefore [manual build](http://openresty.org/en/download.html) is needed.
- [instructions to build](http://openresty.org/en/installation.html)

### Prerequisites
- `dev-lang/perl` (version 5.6.1+)
- `dev-libs/libpcre`
- `dev-libs/openssl`

### Build
1. [Download](http://openresty.org/en/download.html)
2. `tar -xvf openresty-VERSION.tar.gz`
3. `./configure --with-pcre-jit --with-ipv6` (for modern enough enviroment, luajit is now default)
4. `make -j[val]`
5. `doas make install`

### .bashrc
- `export PATH=/usr/local/openresty/bin:$PATH`
to use `resty` and other

### Location
- `/usr/local/openresty/`


## Magick
- `luarocks install magick`
