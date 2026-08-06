# ENV.delete_if

### def ENV.delete_if {|key, value| ... } -> ENV
### def ENV.reject! {|key, value| ... }   -> ENV | nil
### def ENV.delete_if  -> Enumerator
### def ENV.reject!    -> Enumerator

key と value を引数としてブロックを評価した値が真である時、環境変数を削除します。

reject! は要素に変化がなければ nil を返します。

```ruby
ENV['FOO'] = 'bar'
p ENV.delete_if { |key, value| key == 'FOO' && value == 'bar' } # => ENV
p ENV.reject! { |key, value| key == 'FOO' && value == 'bar' } # => nil
```
