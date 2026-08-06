# Errno::EXXX::Errno

### const Errno -> Integer

Errno::EXXX の各クラスに対応するシステム依存のエラーコード値(整数)です。

```ruby title="例"
p Errno::EAGAIN::Errno            # => 11
p Errno::EWOULDBLOCK::Errno       # => 11
```
