names=add_loader
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Application.md

### def add_loader(ext, loader)

与えられた拡張子で終わるファイル名のファイルをロードするためのローダーを
自身に追加します。

- **param** `ext` -- 拡張子を指定します。

- **param** `loader` -- ローダーを指定します。

```ruby title="例"
require "rake/loaders/makefile"

# Rakefile での記載例とする

task default: :test
task :test

makefile =<<-EOS
<< <<-'SAMPLE_MF'
# Comments
a: a1 a2 a3 a4
EOS
IO.write("sample.mf", makefile)
Rake.application.add_loader("mf", Rake::MakefileLoader.new)
Rake.application.add_import("sample.mf")
p Rake::Task.task_defined?("a") # => false
Rake.application.load_imports
p Rake::Task.task_defined?("a") # => true
```










