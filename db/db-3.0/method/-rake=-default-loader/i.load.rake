names=load
visibility=public
kind=defined
source_location=manual/api/rake/Rake__DefaultLoader.md

### def load(filename)

与えられたファイルをロードします。

- **param** `filename` -- ロードするファイル名を指定します。

```ruby
require 'rake'

loader = Rake::DefaultLoader.new
p loader.load("path/to/Rakefile") # => true
```
