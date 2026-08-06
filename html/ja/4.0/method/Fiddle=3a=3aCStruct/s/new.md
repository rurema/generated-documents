# Fiddle::CStruct.new

### def Fiddle::CStruct.new(addr) -> Fiddle::CStruct

addr のアドレスが指すメモリを構造体のアドレスとみなし、構造体を作ります。

C におけるキャストと似ています。

```c
return (struct foo*)addr;
```

というコードと対応していると言えます。

- **param** `addr` -- アドレス
