# Gem::Specification#spec_name

### def spec_name -> String
{: since="1.9.2"}

gemspec ファイルのデフォルトの名前を返します。

[Gem::Specification#file_name](../../../method/Gem=3a=3aSpecification/i/file_name.md) も参照してください。

```ruby title="例"
spec = Gem::Specification.new { |s| s.name = "rfoo"; s.version = "1.0" }
p spec.spec_name   # => "rfoo-1.0.gemspec"
```

- **SEE** [Gem::Specification#file_name](../../../method/Gem=3a=3aSpecification/i/file_name.md), [Gem::Specification#spec_file](../../../method/Gem=3a=3aSpecification/i/spec_file.md)
