# Module#remove_method

### def remove_method(*name) -> self

インスタンスメソッド name をモジュールから削除します。

Ruby 1.8 以降は複数のメソッド名を指定して一度に削除できます。

- **param** `name` -- 0 個以上の [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) を指定します。

- **raise** `NameError` -- 指定したメソッドが定義されていない場合に発生します。

```ruby title="例"
class C
  def foo
  end

  remove_method :foo
  remove_method :no_such_method   # ~> NameError
end
```

- **SEE** [Module#undef_method](../../../method/Module/i/undef_method.md)
