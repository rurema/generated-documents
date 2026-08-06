# SystemCallError#errno

### def errno -> Integer | nil

レシーバに対応するシステム依存のエラーコードを返します。

エラーコードを渡さない形式で生成した場合は nil を返します。

```ruby
begin
  raise Errno::ENOENT
rescue Errno::ENOENT => err
  p err.errno                 # => 2
  p Errno::ENOENT::Errno      # => 2
end

begin
  raise SystemCallError, 'message'
rescue SystemCallError => err
  p err.errno                 # => nil
end
```

なお、例外を発生させずにエラーコードを得るには、
[Errno::EXXX::Errno](../../../method/Errno=3a=3aEXXX/c/Errno.md) 定数を使います。
