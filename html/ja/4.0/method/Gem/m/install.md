# Gem?.install

### module_function def install(name, version = Gem::Requirement.default, *options) -> [Gem::Specification]
{: since="2.0.0"}

Gem `name` をインストールします。

irb などから対話的に Gem をインストールするためのヘルパーメソッドです。内部で [Gem::DependencyInstaller](../../../class/Gem=3a=3aDependencyInstaller.md) のインスタンスを生成し、[Gem::DependencyInstaller#install](../../../method/Gem=3a=3aDependencyInstaller/i/install.md) を呼び出します。

- **param** `name` -- インストールする Gem の名前です。
- **param** `version` -- インストールする Gem のバージョンの要求です。省略した場合は [Gem::Requirement.default](../../../method/Gem=3a=3aRequirement/s/default.md) になります。
- **param** `options` -- [Gem::DependencyInstaller.new](../../../method/Gem=3a=3aDependencyInstaller/s/new.md) に渡すオプションのハッシュです。
- **return** -- インストールされた [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) の配列です。
- **SEE** [Gem::DependencyInstaller.new](../../../method/Gem=3a=3aDependencyInstaller/s/new.md), [Gem::DependencyInstaller#install](../../../method/Gem=3a=3aDependencyInstaller/i/install.md)
