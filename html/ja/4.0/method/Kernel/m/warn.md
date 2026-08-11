# Kernel?.warn

### module_function def warn(*message, uplevel: nil, category: nil) -> nil

message を 標準エラー出力 [m:$stderr] に出力します。 [m:$VERBOSE]
フラグ が nil のときは何も出力しません。

文字列以外のオブジェクトが引数として与えられた場合には、
to_s メソッドにより文字列に変換してから出力します。

uplevel を指定しない場合は、このメソッドは以下と同じです。

```ruby
$stderr.puts(*message) if !$VERBOSE.nil? && !message.empty?
nil
```

- **param** `message` -- 出力するオブジェクトを任意個指定します。
- **param** `uplevel` -- いくつ前の呼び出し元のファイル名と行番号を表示するかを0以上の数値で指定します。 nil の場合は表示しません。
- **param** `category` -- 警告のカテゴリを指定します。サポートされている category については [Warning.\[\]](../../../method/Warning/s/=5b=5d.md) を参照してください。
- **raise** `IOError` -- 標準エラー出力が書き込み用にオープンされていなければ発生します。
- **raise** `Errno::EXXX` -- 出力に失敗した場合に発生します。

```ruby title="例"
warn "caution!" # => caution!
$VERBOSE = nil
warn "caution!" # 何もしない
```

```ruby title="uplevel の例"
def foo
  warn("test message", uplevel: 0) # => test.rb:2: warning: test message
  warn("test message", uplevel: 1) # => test.rb:6: warning: test message
  warn("test message", uplevel: 2) # => test message
end
foo
```

```ruby title="category の例"
Warning[:deprecated] = true # 非推奨の警告を表示する
warn("deprecated!!", category: :deprecated)
# => deprecated!

Warning[:deprecated] = false # 非推奨の警告を表示しない
warn("deprecated!!", category: :deprecated)
# 警告は出力されない
```

- **SEE** [Warning#warn](../../../method/Warning/i/warn.md), [m:$stderr],[m:$VERBOSE]
