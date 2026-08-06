# ARGF.class#external_encoding

### def external_encoding -> Encoding
{: since="1.9.1"}

ARGF が処理するファイルに対する外部エンコーディングを返します。
デフォルトは [Encoding.default_external](../../../method/Encoding/s/default_external.md) です。

[ARGF.class#set_encoding](../../../method/ARGF=2eclass/i/set_encoding.md) で設定します。

```ruby title="例"
p ARGF.external_encoding  # =>  #<Encoding:UTF-8>
```

- **SEE** [IO](../../../class/IO.md), [ARGF.class#internal_encoding](../../../method/ARGF=2eclass/i/internal_encoding.md)
