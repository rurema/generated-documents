# Regexp.timeout=

### def Regexp.timeout=(seconds)

正規表現のマッチにかける時間の上限を秒数で設定します。

`nil` を指定すると上限を設定しない状態に戻します。

この設定はプロセス全体に影響します。個々の正規表現オブジェクトごとに設定したい場合は
[Regexp.new](../../../method/Regexp/s/new.md) の `timeout` キーワード引数を使用してください。

上限を超えた場合は [Regexp::TimeoutError](../../../class/Regexp=3a=3aTimeoutError.md) が発生します。

- **param** `seconds` -- 上限の秒数を数値で指定します。`nil` を指定すると上限なしになります。

```ruby
Regexp.timeout = 0.5
p Regexp.timeout # => 0.5

# バックトラックが多く発生し、線形時間で処理できない正規表現の例
/^((a|a)+)\1$/ =~ ("a" * 30 + "x") # ~> Regexp::TimeoutError
```

- **SEE** [Regexp.timeout](../../../method/Regexp/s/timeout.md), [Regexp#timeout](../../../method/Regexp/i/timeout.md), [Regexp::TimeoutError](../../../class/Regexp=3a=3aTimeoutError.md)
