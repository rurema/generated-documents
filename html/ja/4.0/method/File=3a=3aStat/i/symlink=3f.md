# File::Stat#symlink?

### def symlink? -> false

シンボリックリンクである時に真を返します。
ただし、File::Statは自動的にシンボリックリンクをたどっていくので常にfalseを返します。


```ruby
require 'fileutils'
outfile = $0 + ".ln"
FileUtils.ln_s($0, outfile)
p File::Stat.new(outfile).symlink? #=> false
p File.lstat(outfile).symlink?     #=> true
p FileTest.symlink?(outfile)       #=> true
```

- **SEE** [File.lstat](../../../method/File/s/lstat.md)
