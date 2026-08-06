# Dir.for_fd

### def Dir.for_fd(fd)    -> Dir

整数のディレクトリファイルディスクリプタ fd が指すディレクトリを表す、新しい [Dir](../../../class/Dir.md) オブジェクトを返します。

返される [Dir](../../../class/Dir.md) オブジェクトには対応するパスがないため、
[Dir#path](../../../method/Dir/i/path.md) は nil を返します。

このメソッドは POSIX 2008 で定義された fdopendir() を使用します。
POSIX 非対応のプラットフォームでは実装されておらず、
[NotImplementedError](../../../class/NotImplementedError.md) が発生します。

- **param** `fd` -- ディレクトリを指すファイルディスクリプタを整数で指定します。

```ruby title="例"
require 'tmpdir'

Dir.mktmpdir do |tmpdir|
  d0 = Dir.new(tmpdir)
  d1 = Dir.for_fd(d0.fileno)

  p d1.class  # => Dir
  p d0.path   # => tmpdir のパス
  p d1.path   # => nil
  d0.close
end
```

- **SEE** [Dir#fileno](../../../method/Dir/i/fileno.md), [Dir#path](../../../method/Dir/i/path.md), [Dir.fchdir](../../../method/Dir/s/fchdir.md)
