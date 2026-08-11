# Dir.empty?

### def Dir.empty?(path_name)    -> bool

path_name で与えられたディレクトリが空の場合に真を返します。
ディレクトリでない場合や空でない場合に偽を返します。

```ruby title="例"
p Dir.empty?('.')    # => false
p Dir.empty?(IO::NULL) # => false
require 'tmpdir'
p Dir.mktmpdir { |dir| Dir.empty?(dir) } # => true
```

- **param** `path_name` -- 確認したいディレクトリ名。
