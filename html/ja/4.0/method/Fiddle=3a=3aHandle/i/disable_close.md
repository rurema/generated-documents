# Fiddle::Handle#disable_close

### def disable_close    -> nil

GC によるオブジェクトの回収時に self をクローズしない([Fiddle::Handle#close](../../../method/Fiddle=3a=3aHandle/i/close.md))
ように設定します。

デフォルトでは close しません。

- **SEE** [Fiddle::Handle#enable_close](../../../method/Fiddle=3a=3aHandle/i/enable_close.md), [Fiddle::Handle#close_enabled?](../../../method/Fiddle=3a=3aHandle/i/close_enabled=3f.md)
