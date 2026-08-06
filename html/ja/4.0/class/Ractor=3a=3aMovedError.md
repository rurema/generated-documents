# class Ractor::MovedError < Ractor::Error

他の Ractor に移動(move)されたオブジェクトにアクセスした場合に発生します。

[Ractor#send](../method/Ractor/i/send.md) に `move: true` を指定してオブジェクトを送ると、送った側ではそのオブジェクトが [Ractor::MovedObject](../class/Ractor=3a=3aMovedObject.md) に置き換わり、以後アクセスできなくなります。

```ruby
s = +"hello"
r = Ractor.new { Ractor.receive }
r.send(s, move: true)
s.upcase # ~> Ractor::MovedError
```

- **SEE** [Ractor](../class/Ractor.md), [Ractor::MovedObject](../class/Ractor=3a=3aMovedObject.md), [Ractor#send](../method/Ractor/i/send.md)
