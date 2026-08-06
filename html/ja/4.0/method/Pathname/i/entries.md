# Pathname#entries

### def entries -> [Pathname]

self に含まれるファイルエントリ名を元にした [Pathname](../../../class/Pathname.md) オブジェクトの配列を返します。

- **raise** `Errno::EXXX` -- self が存在しないパスであったりディレクトリでなければ例外が発生します。

```ruby title="例"
require 'pathname'
require 'pp'

pp Pathname('/usr/local').entries
# => [#<Pathname:.>,
#     #<Pathname:..>,
#     #<Pathname:bin>,
#     #<Pathname:etc>,
#     #<Pathname:include>,
#     #<Pathname:lib>,
#     #<Pathname:opt>,
#     #<Pathname:sbin>,
#     #<Pathname:share>,
#     #<Pathname:var>]
```

- **SEE** [Dir.entries](../../../method/Dir/s/entries.md)
