# Net::POP3#delete_all

### def delete_all -> ()
### def delete_all {|popmail| .... } -> ()

サーバ上のメールを全て消去します。

ブロックを与えられたときは消去する前に各メールを引数としてブロックを呼びだします。
メールは [Net::POPMail](../../../class/Net=3a=3aPOPMail.md) のインスタンスとして渡されます。

```ruby title="使用例"
require 'net/pop'

n = 1
pop.delete_all do |m|
  File.open("inbox/#{n}") {|f| f.write m.pop }
  n += 1
end
```
