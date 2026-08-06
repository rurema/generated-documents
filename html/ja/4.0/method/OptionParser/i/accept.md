# OptionParser#accept

### def accept(klass, pat = /.*/){|str| ...}    -> ()

[OptionParser.accept](../../../method/OptionParser/s/accept.md) と同様ですが、登録したブロックはレシーバーに限定されます。

- **param** `klass` -- クラスオブジェクトを与えます。

- **param** `pat` -- match メソッドを持ったオブジェクト([Regexp](../../../class/Regexp.md) オブジェクトなど)を与えます。

```ruby title="例"
require "optparse"
require "time"

opts = OptionParser.new
opts.accept(Time) do |s,|
  begin
    Time.parse(s) if s
  rescue
    raise OptionParser::InvalidArgument, s
  end
end

opts.on("-t", "--time [TIME]", Time) do |time|
  p time.class # => Time
end

opts.parse!(ARGV)
```
