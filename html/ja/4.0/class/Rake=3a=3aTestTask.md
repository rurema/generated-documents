# class Rake::TestTask < Rake::TaskLib

ユニットテストを実行するためのタスクを作成するクラスです。

```ruby title="例"
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end
```

以下に test ターゲットの使用例を示します。

```console title="例"
rake test                           # run tests normally
rake test TEST=just_one_file.rb     # run just one test file.
rake test TESTOPTS="-v"             # run in verbose mode
rake test TESTOPTS="--runner=fox"   # use the fox test runner
```

## Class Methods

- [new](../method/Rake=3a=3aTestTask/s/new.md)

## Instance Methods

- [define](../method/Rake=3a=3aTestTask/i/define.md)
- [libs](../method/Rake=3a=3aTestTask/i/libs.md)
- [libs=](../method/Rake=3a=3aTestTask/i/libs=3d.md)
- [loader](../method/Rake=3a=3aTestTask/i/loader.md)
- [loader=](../method/Rake=3a=3aTestTask/i/loader=3d.md)
- [name](../method/Rake=3a=3aTestTask/i/name.md)
- [name=](../method/Rake=3a=3aTestTask/i/name=3d.md)
- [options](../method/Rake=3a=3aTestTask/i/options.md)
- [options=](../method/Rake=3a=3aTestTask/i/options=3d.md)
- [pattern](../method/Rake=3a=3aTestTask/i/pattern.md)
- [pattern=](../method/Rake=3a=3aTestTask/i/pattern=3d.md)
- [ruby_opts](../method/Rake=3a=3aTestTask/i/ruby_opts.md)
- [ruby_opts=](../method/Rake=3a=3aTestTask/i/ruby_opts=3d.md)
- [test_files=](../method/Rake=3a=3aTestTask/i/test_files=3d.md)
- [verbose](../method/Rake=3a=3aTestTask/i/verbose.md)
- [verbose=](../method/Rake=3a=3aTestTask/i/verbose=3d.md)
- [warning](../method/Rake=3a=3aTestTask/i/warning.md)
- [warning=](../method/Rake=3a=3aTestTask/i/warning=3d.md)
