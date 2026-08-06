# StringScanner::Version

### const Version -> String

[StringScanner](../../../class/StringScanner.md) クラスのバージョンを文字列で返します。
この文字列は [Object#freeze](../../../method/Object/i/freeze.md) されています。

```ruby title="例"
require 'strscan'

p StringScanner::Version         # => "0.7.0"
p StringScanner::Version.frozen? # => true
```
