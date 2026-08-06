# Module#private_constant

### def private_constant(*name) -> self

name で指定した定数の可視性を private に変更します。

- **param** `name` -- 0 個以上の [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) を指定します。

- **raise** `NameError` -- 存在しない定数を指定した場合に発生します。

- **return** -- self を返します。

- **SEE** [Module#public_constant](../../../method/Module/i/public_constant.md)

```ruby title="例"
module Api
  VERSION = '1.0'
  class Client; end
  SECRET = 'token'
  class Internal; end

  private_constant :SECRET
  private_constant :Internal
end

p Api::VERSION  # => "1.0"
p Api::Client   # => Api::Client
Api::SECRET     # ~> NameError: private constant Api::SECRET referenced
Api::Internal   # ~> NameError: private constant Api::Internal referenced
```
