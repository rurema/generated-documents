# FIX2ULONG

### unsigned long FIX2ULONG(VALUE x)

Fixnum を unsigned long に変換します。
範囲のチェックは行われません。負の Fixnum を渡した場合は例外にはならず、
2 の補数表現をそのまま unsigned long として解釈した大きな値を返します。
