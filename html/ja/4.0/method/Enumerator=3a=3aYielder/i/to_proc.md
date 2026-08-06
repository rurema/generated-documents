# Enumerator::Yielder#to_proc

### def to_proc -> Proc

[Enumerator.new](../../../method/Enumerator/s/new.md) で使うメソッドです。

引数を [Enumerator::Yielder#yield](../../../method/Enumerator=3a=3aYielder/i/yield.md) に渡す [Proc](../../../class/Proc.md) を返します。
これは Enumerator::Yielder オブジェクトを他のメソッドにブロック引数として直接渡すために使えます。

```ruby title="例"
text = <<-END
Hello
こんにちは
END

enum = Enumerator.new do |y|
  text.each_line(&y)
end

enum.each do |line|
  p line
end
# => "Hello\n"
#    "こんにちは\n"
```
