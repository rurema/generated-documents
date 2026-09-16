# ERB#make_compiler

### def make_compiler(trim_mode) -> ERB::Compiler
{: since="2.0.0"}

自身のための `ERB::Compiler` オブジェクトを新しく作成して返します。

このメソッドは [ERB.new](../../../method/ERB/s/new.md) から呼び出されます。`ERB` のサブクラスでこのメソッドを再定義すると、
コンパイラの生成方法をカスタマイズできます。

- **param** `trim_mode` -- [ERB.new](../../../method/ERB/s/new.md) に指定した trim_mode を渡します。

```ruby title="例"
require 'erb'
erb = ERB.new('<%= 1 + 1 %>')
p erb.make_compiler(nil).class # => ERB::Compiler
```
