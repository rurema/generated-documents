names=load
visibility=public
kind=defined
source_location=manual/api/rake/Rake__DefaultLoader.md
since_by_name=load=1.9.3
until_by_name=

### def load(filename)

与えられたファイルをロードします。

- **param** `filename` -- ロードするファイル名を指定します。

```ruby
require 'rake'

loader = Rake::DefaultLoader.new
p loader.load("path/to/Rakefile") # => true
```
