# OptionParser.reject

### def OptionParser.reject(klass)    -> ()

[OptionParser.accept](../../../method/OptionParser/s/accept.md) メソッドで登録したブロックを削除します。

- **param** `klass` -- 削除したいクラスオブジェクトを指定します。

```ruby title="例"
require "optparse"
require "time"

def parse(option_parser)
  option_parser.on("-t", "--time [TIME]", Time) do |time|
    p time.class
  end
  option_parser.parse(ARGV)
end

OptionParser.accept(Time) do |s,|
  begin
    Time.parse(s) if s
  rescue
    raise OptionParser::InvalidArgument, s
  end
end

opts1 = OptionParser.new
parse(opts1) # => Time
OptionParser.reject(Time)
opts2 = OptionParser.new
parse(opts2) # => unsupported argument type: Time (ArgumentError)
```
