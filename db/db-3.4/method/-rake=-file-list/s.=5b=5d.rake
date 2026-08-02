names=[]
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name==5b=5d=1.9.3
until_by_name=

### def Rake::FileList.[](*args) -> Rake::FileList

与えられたパターンをもとにして自身を初期化します。

- **param** `args` -- パターンを指定します。

```ruby
require 'rake'

file_list1 = FileList.new('lib/**/*.rb', 'test/test*.rb')
file_list2 = FileList['lib/**/*.rb', 'test/test*.rb']

p file_list1 == file_list2 # => true
```

