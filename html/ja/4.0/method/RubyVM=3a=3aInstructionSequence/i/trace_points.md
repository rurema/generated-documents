# RubyVM::InstructionSequence#trace_points

### def trace_points -> [[Integer, Symbol]]
{: since="2.5.0"}

`self` が表す命令シーケンス内のトレースポイント(イベントが発生しうる位置)の一覧を返します。

配列の要素は `[行番号, イベントを表す Symbol]` という 2 要素の配列です。
イベントを表す Symbol は `:class`、`:call`、`:b_call`、`:line`、`:end`、`:return`、`:b_return` のいずれかです。

```ruby title="例"
iseq = RubyVM::InstructionSequence.compile(<<~RUBY)
  def hello
    puts "hi"
  end
RUBY
p iseq.trace_points # => [[1, :line]]
```
