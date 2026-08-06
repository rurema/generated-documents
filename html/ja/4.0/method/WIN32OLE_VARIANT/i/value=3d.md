# WIN32OLE_VARIANT#value=

### def value=(val)

WIN32OLE_VARIANTの値を再設定します。

指定した値でselfを再設定します。指定値が元のVARIANT型に合わない場合は元のVARIANT型に合うように引数を変換します。変換は、引数を一度VARIANT型に変換してからCOMのVARIANT型変換関数（VariantChangeTypeEx）を呼び出すことで実現します。

- **param** `val` -- 設定値を指定します。
- **raise** `WIN32OLERuntimeError` -- selfが配列型です。あるいは、型変換に失敗し
                            ました。

```ruby
obj = WIN32OLE_VARIANT.new(1) # VARIANT型にWIN32OLE::VARIANT::VT_I4を設定
obj.value = 3.2      # 3.2から新たなVARIANT型を作成し、それをVT_I4に変換
p obj.value # => 3   # VT_I4に変換した結果が設定される
```

selfが配列型のWIN32OLE_VARIANTの場合、バイト配列かつ引数が文字列の場合を除いて[WIN32OLERuntimeError](../../../class/WIN32OLERuntimeError.md)を通知します。配列型の場合は、
[WIN32OLE_VARIANT#\[\]=](../../../method/WIN32OLE_VARIANT/i/=5b=5d=3d.md)を利用してください。
