# ARGF.class#internal_encoding

### def internal_encoding -> Encoding | nil
{: since="1.9.1"}

ARGF から読み込んだ文字列の内部エンコーディングを返します。
内部エンコーディングが指定されていない場合は nil を返します。

まだ読み込み処理を始めていない場合は [Encoding.default_external](../../../method/Encoding/s/default_external.md) を返します。

[ARGF.class#set_encoding](../../../method/ARGF=2eclass/i/set_encoding.md) で設定します。

```ruby title="例"
# $ ruby -Eutf-8 test.rb

# test.rb
p ARGF.internal_encoding          # => #<Encoding:UTF-8>
ARGF.set_encoding('utf-8','ascii')
p ARGF.internal_encoding          # => #<Encoding:US-ASCII>
```

```ruby title="例"
ARGF.binmode
p ARGF.internal_encoding          # => nil
```

- **SEE** [IO](../../../class/IO.md), [ARGF.class#external_encoding](../../../method/ARGF=2eclass/i/external_encoding.md)
