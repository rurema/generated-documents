# Gem?.done_installing

### module_function def done_installing {|installer, specs| ... } -> [Proc]
{: since="2.0.0"}

[Gem::DependencyInstaller](../../../class/Gem=3a=3aDependencyInstaller.md) によるインストールが完了した後に呼び出すフックを登録します。

ブロックには、インストールを行った [Gem::DependencyInstaller](../../../class/Gem=3a=3aDependencyInstaller.md) のインスタンスと、インストールされた [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) の配列が渡されます。

- **param** `installer` -- インストールを行った [Gem::DependencyInstaller](../../../class/Gem=3a=3aDependencyInstaller.md) のインスタンスです。
- **param** `specs` -- インストールされた [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) の配列です。
- **return** -- 登録済みのフック(`Proc`)の配列です。
- **SEE** [Gem::DependencyInstaller#install](../../../method/Gem=3a=3aDependencyInstaller/i/install.md), [Gem?.done_installing_hooks](../../../method/Gem/m/done_installing_hooks.md)
