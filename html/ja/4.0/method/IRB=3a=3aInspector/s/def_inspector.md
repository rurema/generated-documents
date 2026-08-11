# IRB::Inspector.def_inspector

### def IRB::Inspector.def_inspector(key, arg = nil) { |v| ... } -> object

新しい実行結果の出力方式を定義します。

- **param** `key` -- conf.inspect_mode や IRB.conf[:INSPECT_MODE] に指定するキーオブジェクトを指定します。配列を指定した場合は配列中の要素全てが対象になります。

- **param** `arg` -- ブロックを指定する場合には、inspect_mode の初期化のための手続きオブジェクトを指定します。あらかじめ require が必要な場合などに、proc { require "foo" } といった指定を行います。
           ブロックを指定しない場合には、実行結果の出力のための手続きオブジェクトを指定します。

```console title="例"
# .irbrc
IRB::Inspector.def_inspector([:test]){ |v| v.to_s * 2 }

$ irb --inspect test
irb(main):001:0> :abc # => abcabc
```

- **SEE** [irb#inspect_mode](../../../library/irb.md#inspect_mode)
