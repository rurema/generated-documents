# Gem?.post_install

### module_function def post_install {|installer| ... } -> [Proc]
{: since="1.9.1"}

[Gem::Installer#install](../../../method/Gem=3a=3aInstaller/i/install.md) が完了した後に呼び出すフックを登録します。

- **param** `installer` -- インストールを行った [Gem::Installer](../../../class/Gem=3a=3aInstaller.md) のインスタンスです。
- **return** -- 登録済みのフック(`Proc`)の配列です。
- **SEE** [Gem::Installer#install](../../../method/Gem=3a=3aInstaller/i/install.md), [Gem?.post_install_hooks](../../../method/Gem/m/post_install_hooks.md)
