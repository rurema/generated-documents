# class Rake::InvocationChain < Object

循環したタスクの呼び出しを検出するためのクラスです。

```ruby title="例"
a = Rake::InvocationChain::EMPTY
b = a.append('task_a').append('task_b')
p b.to_s  # => "TOP => task_a => task_b"
  
a.append('task_a').append('task_b').append('task_a') # ~> RuntimeError
```

## Class Methods

- [append](../method/Rake=3a=3aInvocationChain/s/append.md)
- [new](../method/Rake=3a=3aInvocationChain/s/new.md)

## Instance Methods

- [append](../method/Rake=3a=3aInvocationChain/i/append.md)
- [member?](../method/Rake=3a=3aInvocationChain/i/member=3f.md)
- [to_s](../method/Rake=3a=3aInvocationChain/i/to_s.md)

## Constants

- [EMPTY](../method/Rake=3a=3aInvocationChain/c/EMPTY.md)
