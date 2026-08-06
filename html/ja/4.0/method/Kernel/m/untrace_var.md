# Kernel?.untrace_var

### module_function def untrace_var(varname, hook = nil) -> [String|Proc]

グローバル変数 varname に関連付けられたフックを解除します。

hook が指定された場合にはそのフックだけを解除します。
省略するか nil を与えた場合は
varname のフックを全て解除します。

- **param** `varname` -- グローバル変数名を文字列か [Symbol](../../../class/Symbol.md) で指定します。
- **param** `hook` -- 文字列または [Proc](../../../class/Proc.md) オブジェクトです。
- **return** -- 解除されたフックの配列を返します。

```ruby title="例"
trace_var(:$v){|val| print "hookA.#{val.inspect},\n" }
block = proc{|val| print "hookB.#{val.inspect}," }
trace_var(:$v,&block)
$v = 'str'        #=> hookB."str",hookA."str",

untrace_var(:$v,block)
$v = 'str'        #=> hookA."str",

trace_var(:$v){|val| print "hookC.#{val.inspect}," }
p untrace_var(:$v) #=> [#<Proc:0x02b68f58 ..:9>, #<Proc:0x02b6978c ..:3>]
$v = 'str'        # なにも出力されない
```

- **SEE** [Kernel?.trace_var](../../../method/Kernel/m/trace_var.md)
