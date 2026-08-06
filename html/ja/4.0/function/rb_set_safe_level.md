# rb_set_safe_level

### void rb_set_safe_level(int level)

セーフレベルを level に上げます。
level が現在のセーフレベルより低い場合は例外 SecurityError が発生します。
