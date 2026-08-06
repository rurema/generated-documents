# IO#getbyte

### def getbyte   -> Integer | nil

IO から1バイトを読み込み整数として返します。
既に EOF に達していれば nil を返します。

```ruby
f = File.new("testfile")
p f.getbyte #=> 84
p f.getbyte #=> 104
```
