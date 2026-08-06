# Win32::Registry#write_bin

### def write_s(name, value)
### def write_i(name, value)
### def write_bin(name, value)
@todo

レジストリ値 name に value を書き込みます。

レジストリ値の型はそれぞれ REG_SZ(write_s), REG_DWORD(write_i),
REG_BINARY(write_bin) です。
