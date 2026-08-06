# ENV.reject

### def ENV.reject                     -> Enumerator
### def ENV.reject {|key, value| ... } -> Hash

環境変数のうち、ブロックを評価した値が真であるものをとり除きます。
[Enumerable#reject](../../../method/Enumerable/i/reject.md) と異なり Hash を返します。また、とり除いた結果は実際の環境変数に影響を与えません。

```ruby
ENV['TEST'] = 'foo'
result = ENV.reject { |key, value| key == 'TEST' }
p result['TEST'] # => nil
p ENV['TEST'] # => "foo"
```
