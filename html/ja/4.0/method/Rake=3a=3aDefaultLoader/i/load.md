# Rake::DefaultLoader#load

### def load(filename)

与えられたファイルをロードします。

- **param** `filename` -- ロードするファイル名を指定します。

```ruby
require 'rake'

loader = Rake::DefaultLoader.new
p loader.load("path/to/Rakefile") # => true
```
