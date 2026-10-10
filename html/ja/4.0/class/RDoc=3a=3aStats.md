# class RDoc::Stats < Object

RDoc のステータスを管理するクラスです。

```ruby title="例"
require 'rdoc'
require 'tmpdir'

Dir.mktmpdir do |dir|
  path = File.join(dir, "foo.rb")
  File.write(path, <<~RUBY)
    class Foo
      # documented
      def a(x); end
      def b(y); end
    end
  RUBY

  rdoc = RDoc::RDoc.new
  rdoc.document(['--quiet', '-o', File.join(dir, 'out'), path])
  stats = rdoc.stats

  p stats.num_files
  # => 1
  p stats.files_so_far
  # => 1
  stats.summary
  p stats.fully_documented?
  # => false
end
```

## Class Methods

- [new](../method/RDoc=3a=3aStats/s/new.md)

## Instance Methods

- [coverage_level](../method/RDoc=3a=3aStats/i/coverage_level.md)
- [coverage_level=](../method/RDoc=3a=3aStats/i/coverage_level=3d.md)
- [files_so_far](../method/RDoc=3a=3aStats/i/files_so_far.md)
- [fully_documented?](../method/RDoc=3a=3aStats/i/fully_documented=3f.md)
- [num_files](../method/RDoc=3a=3aStats/i/num_files.md)
- [report](../method/RDoc=3a=3aStats/i/report.md)
- [summary](../method/RDoc=3a=3aStats/i/summary.md)
