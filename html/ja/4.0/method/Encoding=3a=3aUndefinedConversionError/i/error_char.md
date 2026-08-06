# Encoding::UndefinedConversionError#error_char

### def error_char -> String

エラーを発生させた1文字を文字列で返します。

```ruby title="例"
ec = Encoding::Converter.new("UTF-8", "EUC-JP")
begin
  ec.convert("\u{a0}")
rescue Encoding::UndefinedConversionError
  puts $!.error_char.dump   #=> "\u{a0}"
end
```
