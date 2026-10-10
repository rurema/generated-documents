# class Gem::Package < Object

`.gem` ファイルを読み書きするクラスです。

`.gem` ファイルは、gemspec を gzip 圧縮した `metadata.gz`、ファイル本体の tar を gzip 圧縮した `data.tar.gz`、チェックサムの `checksums.yaml.gz` を含む tar アーカイブです。
[Gem::Specification](../class/Gem=3a=3aSpecification.md) から `.gem` ファイルを作ることも、既存の `.gem` ファイルを検証して展開することもできます。

以下の例は、`lib/example.rb` があるディレクトリで実行することを前提にしています。

```ruby title="例: gem を作って読む"
require 'rubygems/package'

spec = Gem::Specification.new do |s|
  s.name = 'example'
  s.version = '1.0'
  s.summary = 'An example gem'
  s.authors = ['Example Author']
  s.license = 'MIT'
  s.homepage = 'https://example.com/example'
  s.required_ruby_version = '>= 3.0'
  s.files = ['lib/example.rb']
end
Gem::Package.build(spec) # => "example-1.0.gem"

package = Gem::Package.new('example-1.0.gem')
package.spec.name  # => "example"
package.contents   # => ["lib/example.rb"]
package.files      # => ["metadata.gz", "data.tar.gz", "checksums.yaml.gz"]
package.extract_files('out') # out/lib/example.rb に展開します
```

## Class Methods

- [build](../method/Gem=3a=3aPackage/s/build.md)
- [new](../method/Gem=3a=3aPackage/s/new.md)
- [raw_spec](../method/Gem=3a=3aPackage/s/raw_spec.md)

## Instance Methods

- [build](../method/Gem=3a=3aPackage/i/build.md)
- [checksums](../method/Gem=3a=3aPackage/i/checksums.md)
- [contents](../method/Gem=3a=3aPackage/i/contents.md)
- [copy_to](../method/Gem=3a=3aPackage/i/copy_to.md)
- [data_mode](../method/Gem=3a=3aPackage/i/data_mode.md)
- [data_mode=](../method/Gem=3a=3aPackage/i/data_mode=3d.md)
- [dir_mode](../method/Gem=3a=3aPackage/i/dir_mode.md)
- [dir_mode=](../method/Gem=3a=3aPackage/i/dir_mode=3d.md)
- [extract_files](../method/Gem=3a=3aPackage/i/extract_files.md)
- [files](../method/Gem=3a=3aPackage/i/files.md)
- [prog_mode](../method/Gem=3a=3aPackage/i/prog_mode.md)
- [prog_mode=](../method/Gem=3a=3aPackage/i/prog_mode=3d.md)
- [security_policy](../method/Gem=3a=3aPackage/i/security_policy.md)
- [security_policy=](../method/Gem=3a=3aPackage/i/security_policy=3d.md)
- [spec](../method/Gem=3a=3aPackage/i/spec.md)
- [spec=](../method/Gem=3a=3aPackage/i/spec=3d.md)
- [verify](../method/Gem=3a=3aPackage/i/verify.md)
