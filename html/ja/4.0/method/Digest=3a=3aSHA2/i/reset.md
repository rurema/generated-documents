# Digest::SHA2#reset

### def reset -> self
{: since=""}

内部状態を初期状態(`new` した直後と同様の状態)に戻し、`self` を返します。

```ruby title="例"
require 'digest/sha2'

digest = Digest::SHA2.new
digest.update("ruby")
digest.reset
p digest.hexdigest # => "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
```

- **SEE** [Digest::Base#reset](../../../method/Digest=3a=3aBase/i/reset.md)
