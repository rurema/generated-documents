# Method#source_location

### def source_location -> [String, Integer] | nil

ソースコードのファイル名と行番号を配列で返します。

その手続オブジェクトが ruby で定義されていない(つまりネイティブである)場合は nil を返します。

- **SEE** [Proc#source_location](../../../method/Proc/i/source_location.md)

```ruby title="例"
# ------- /tmp/foo.rb ---------
class Foo
  def foo; end
end
# ----- end of /tmp/foo.rb ----

require '/tmp/foo'

m = Foo.new.method(:foo) # => #<Method: Foo#foo>
p m.source_location # => ["/tmp/foo.rb", 2]

p method(:puts).source_location # => nil
```
