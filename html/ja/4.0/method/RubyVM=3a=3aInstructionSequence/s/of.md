# RubyVM::InstructionSequence.of

### def RubyVM::InstructionSequence.of(body) -> RubyVM::InstructionSequence

引数 body で指定した [Proc](../../../class/Proc.md)、[Method](../../../class/Method.md) オブジェクトを元に
[RubyVM::InstructionSequence](../../../class/RubyVM=3a=3aInstructionSequence.md) オブジェクトを作成して返します。

- **param** `body` -- [Proc](../../../class/Proc.md)、[Method](../../../class/Method.md) オブジェクトを指定します。

例1:irb で実行した場合

```console
# proc
> p = proc { num = 1 + 2 }
> RubyVM::InstructionSequence.of(p)
> # => <RubyVM::InstructionSequence:block in irb_binding@(irb)>

# method
> def foo(bar); puts bar; end
> RubyVM::InstructionSequence.of(method(:foo))
> # => <RubyVM::InstructionSequence:foo@(irb)>
```

例2: [RubyVM::InstructionSequence.compile_file](../../../method/RubyVM=3a=3aInstructionSequence/s/compile_file.md) を使用した場合

```console
# /tmp/iseq_of.rb
def hello
  puts "hello, world"
end

$a_global_proc = proc { str = 'a' + 'b' }

# irb
> require '/tmp/iseq_of.rb'

# hello メソッド
> RubyVM::InstructionSequence.of(method(:hello))
> # => #<RubyVM::InstructionSequence:0x007fb73d7cb1d0>

# グローバル proc
> RubyVM::InstructionSequence.of($a_global_proc)
> # => #<RubyVM::InstructionSequence:0x007fb73d7caf78>
```
