# OptionParser#require_exact=

### def require_exact           -> bool
### def require_exact=(newstate)

長い形式のオプション([OptionParser#on](../../../method/OptionParser/i/on.md) で登録するロングオプション)の指定を、
省略せずに完全な形で行うことを要求するかどうかを表します。デフォルトは false です。

true を指定すると、一意に補完できる範囲であっても省略した形式のロングオプションを
受け付けなくなり、完全に一致しない場合は例外 [OptionParser::InvalidOption](../../../class/OptionParser=3a=3aInvalidOption.md) が発生します。

- **param** `newstate` -- 完全な形式のみを受け付けるかどうかを true か false で指定します。

- **return** -- 現在の設定を true か false で返します。

```ruby
require "optparse"

opts = OptionParser.new
opts.on("--foobar")

opts.require_exact = false
p opts.parse(["--foo"])   # => []

opts.require_exact = true
begin
  opts.parse(["--foo"])
rescue OptionParser::ParseError => e
  puts e.message   # => invalid option: --foo
end
```
