# ENV.each

### def ENV.each                          -> Enumerator
### def ENV.each_pair                     -> Enumerator
### def ENV.each {|key, value| ... }      -> self
### def ENV.each_pair {|key, value| ... } -> self

key と value を引数としてブロックを評価します。

```ruby
ENV['FOO'] = 'bar'
ENV.each do |key, value|
  p "value is #{value}" if key == 'FOO' # => "value is bar"
end
# => ENV
```
