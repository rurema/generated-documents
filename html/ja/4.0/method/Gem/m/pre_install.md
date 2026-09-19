# Gem?.pre_install

### module_function def pre_install {|installer| ... } -> [Proc]
{: since="1.9.1"}

[Gem::Installer#install](../../../method/Gem=3a=3aInstaller/i/install.md) が処理を始める前に呼び出すフックを登録します。

ブロックが偽を返した場合、インストールは中止されます。

- **param** `installer` -- インストールを行おうとしている [Gem::Installer](../../../class/Gem=3a=3aInstaller.md) のインスタンスです。
- **return** -- 登録済みのフック(`Proc`)の配列です。
- **SEE** [Gem::Installer#install](../../../method/Gem=3a=3aInstaller/i/install.md), [Gem?.pre_install_hooks](../../../method/Gem/m/pre_install_hooks.md)
