# class Regexp::TimeoutError < RegexpError

正規表現のマッチが、設定された時間の上限を超えた場合に発生します。

上限は [Regexp.timeout=](../method/Regexp/s/timeout=3d.md) でプロセス全体に対して、あるいは [Regexp.new](../method/Regexp/s/new.md) の `timeout` キーワード引数で正規表現オブジェクトごとに設定します。

```ruby
Regexp.timeout = 0.5

# バックトラックが多く発生し、線形時間で処理できない正規表現の例
/^((a|a)+)\1$/ =~ ("a" * 30 + "x") # ~> Regexp::TimeoutError
```

- **SEE** [Regexp.timeout=](../method/Regexp/s/timeout=3d.md), [Regexp#timeout](../method/Regexp/i/timeout.md)
