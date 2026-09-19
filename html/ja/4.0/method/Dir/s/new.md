# Dir.new

### def Dir.new(path)                                                      -> Dir
### def Dir.new(path, encoding: Encoding.find("filesystem"))               -> Dir

path に対するディレクトリストリームをオープンして返します。

- **param** `path` -- ディレクトリのパスを文字列で指定します。

- **param** `encoding` -- ディレクトリのエンコーディングを文字列か
                [Encoding](../../../class/Encoding.md) オブジェクトで指定します。省略した場合はファイルシステムのエンコーディングと同じになります。

- **raise** `Errno::EXXX` -- オープンに失敗した場合に発生します。

```ruby title="例"
require 'tmpdir'

Dir.mktmpdir do |tmpdir|
  d = Dir.new(tmpdir)
  p d.class         # => Dir
  p d.read.encoding # => #<Encoding:UTF-8>
  d.close

  d = Dir.new(tmpdir, encoding: Encoding::UTF_8)
  p d.class         # => Dir
  p d.read.encoding # => #<Encoding:UTF-8>
  d.close
end
```

- **SEE** [Dir.open](../../../method/Dir/s/open.md)
