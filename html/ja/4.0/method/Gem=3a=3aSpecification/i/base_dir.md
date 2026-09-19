# Gem::Specification#base_dir

### def base_dir -> String
{: since="1.9.3"}

gem をインストールするベースディレクトリのフルパスを返します。

例えば `/usr/local/lib/ruby/gems/3.4` のようなパスです。
[Gem::Specification#loaded_from](../../../method/Gem=3a=3aSpecification/i/loaded_from.md) が設定されていない場合は [Gem?.dir](../../../method/Gem/m/dir.md) を返します。

- **SEE** [Gem::Specification#loaded_from](../../../method/Gem=3a=3aSpecification/i/loaded_from.md), [Gem?.dir](../../../method/Gem/m/dir.md)
