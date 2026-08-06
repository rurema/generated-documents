# ObjectSpace?.memsize_of_all

### module_function def memsize_of_all(klass = nil) -> Integer

すべての生存しているオブジェクトが消費しているメモリ使用量をバイト単位で返します。

- **param** `klass` -- 指定したクラスのインスタンスのメモリ使用量を返します。省略
             した場合はすべてのクラスのインスタンスのメモリ使用量を返し
             ます。

本メソッドは以下のような Ruby のコードで定義できます。

```ruby title="例"
def memsize_of_all klass = false
  total = 0
  ObjectSpace.each_object{|e|
    total += ObjectSpace.memsize_of(e) if klass == false || e.kind_of?(klass)
  }
  total
end
```

戻り値の内容は完全ではない事に注意してください。この内容はあくまでもヒントとして扱う必要があります。特に T_DATA の値は正しくないでしょう。

また、同様に戻り値の内容は malloc されたメモリの合計でもない事に注意してください。

本メソッドは C Ruby 以外では動作しません。
