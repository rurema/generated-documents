# Kernel?.eval

### module_function def eval(expr) -> object
### module_function def eval(expr, bind, fname = "(eval)", lineno = 1) -> object

文字列 expr を Ruby プログラムとして評価してその結果を返します。第2引数に
[Binding](../../../class/Binding.md) オブジェクトを与えた場合、そのオブジェクトを生成したコンテキストで文字列を評価します。

expr の中のローカル変数の扱いはブロックの場合と同じです。すなわち、eval
実行前に定義されていた変数を eval の中で参照・変更でき、その変更は
eval 実行後にも引き継がれます。

fname と lineno が与えられた場合には、ファイル
fname の行番号 lineno から文字列 expr が書かれているかのようにコンパイルされます。スタックトレースの表示などを差し替えることができます。

bind によらずに特定のオブジェクトのコンテキストで expr を評価したい場合、
[Module#module_eval](../../../method/Module/i/module_eval.md), [BasicObject#instance_eval](../../../method/BasicObject/i/instance_eval.md) が使えます。

- **param** `expr` --  評価する文字列です。
- **param** `bind` --  評価コンテキストです。
- **param** `fname` -- スタックトレースに表示するファイル名です。
- **param** `lineno` -- 文字列 expr が書かれていると想定する先頭の行番号を整数で指定します。

```ruby title="例"
a = nil
eval('a = RUBY_RELEASE_DATE')
p a #=> "2007-03-13"

eval('def fuga;p 777 end')
p fuga #=> 777

eval('raise RuntimeError', binding, 'XXX.rb', 4)
#=> XXX.rb:4: RuntimeError (RuntimeError)
#       from ..:9
```

- **SEE** [Kernel?.binding](../../../method/Kernel/m/binding.md),[Module#module_eval](../../../method/Module/i/module_eval.md),[BasicObject#instance_eval](../../../method/BasicObject/i/instance_eval.md),[Object#method](../../../method/Object/i/method.md),[Object#send](../../../method/Object/i/send.md)
