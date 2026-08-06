# SafeStringValue

### MACRO SafeStringValue(v)

[StringValue](../function/StringValue.md) と同じく、val が String でなければ to_str メソッドを使って String に変換します。同時に rb_check_safe_str() によるチェックも行います。
