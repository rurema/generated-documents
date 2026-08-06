# Win32::Registry#read_bin

### def read_s(name)
### def read_i(name)
### def read_bin(name)
@todo

型がそれぞれ REG_SZ(read_s), REG_DWORD(read_i), REG_BINARY(read_bin)
であるレジストリ値 name を読み、その値を返します。

型がマッチしなかった場合、TypeError が発生します。
