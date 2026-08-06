# Fiddle::CStruct.malloc

### def Fiddle::CStruct.malloc -> Fiddle::CStruct

構造体のためのメモリを確保し、Fiddle::CStruct の(子孫クラスの)
オブジェクトで返します。

C における

```c
return (struct foo*)malloc(sizeof(struct foo));
```

というコードと対応していると言えます。
