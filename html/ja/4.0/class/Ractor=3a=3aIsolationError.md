# class Ractor::IsolationError < Ractor::Error

shareable にできないオブジェクトを shareable にしようとした場合に発生します。


```ruby
Ractor.make_shareable(proc { }) # ~> Ractor::IsolationError
```


- **SEE** [Ractor](../class/Ractor.md), [Ractor.make_shareable](../method/Ractor/s/make_shareable.md)
