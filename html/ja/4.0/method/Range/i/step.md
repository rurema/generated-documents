# Range#step

### def step(s = 1) {|item| ... } -> self
### def step(s = 1) -> Enumerator
### def step(s = 1) -> Enumerator::ArithmeticSequence
### def %(s)        -> Enumerator
### def %(s)        -> Enumerator::ArithmeticSequence

範囲内の要素を s おきに繰り返します。

- **param** `s` -- 次のステップへ遷移するたびに加算されるものを指定します。
- **return** -- ブロックを指定した時は self を返します。
- **return** -- ブロックを指定しなかった時かつ数値の Range の時は [Enumerator::ArithmeticSequence](../../../class/Enumerator=3a=3aArithmeticSequence.md) を返します。
- **return** -- ブロックを指定しなかったその他の Range の時は [Enumerator](../../../class/Enumerator.md) を返します。(例: String の Range)

```ruby title="例"
(1..10).step(3) {|v| p v}
# => 1
#    4
#    7
#    10

("a".."f").step(2) {|v| p v}
# => "a"
#    "c"
#    "e"

(10..0).step(-3) {|v| p v}
# => 10
#     7
#     4
#     1
```


非数値の Range では、イテレーションに「要素 + s」を使用します。
（文字列またはシンボルの Range で s に数値を指定した場合を除きます）

```ruby title="数値以外の Range に対する例"
# Time の Range は each でイテレートできない
(Time.utc(2024, 12, 25)...Time.utc(2024, 12, 26)).each { |t| p t }
# => 'Range#each': can't iterate from Time (TypeError)

# step は使用可能
(Time.utc(2024, 12, 25)...Time.utc(2024, 12, 26)).step(60*60*6) { |t| p t }
# => 2024-12-25 00:00:00 UTC
#    2024-12-25 06:00:00 UTC
#    2024-12-25 12:00:00 UTC
#    2024-12-25 18:00:00 UTC

p ("a"..).step("*").take(3) # => ["a", "a*", "a**"]
```
