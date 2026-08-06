# ENV.each_key

### def ENV.each_key              -> Enumerator
### def ENV.each_key {|key| ... } -> self

key を引数としてブロックを評価します。

```ruby
ENV['FOO'] = 'bar'
ENV.each_key do |key|
  p "key #{key} detected" if key == 'FOO'
end
# "key FOO detected"
```
