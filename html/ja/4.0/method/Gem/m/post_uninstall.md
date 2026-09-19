# Gem?.post_uninstall

### module_function def post_uninstall {|uninstaller| ... } -> [Proc]
{: since="1.9.1"}

[Gem::Uninstaller#uninstall](../../../method/Gem=3a=3aUninstaller/i/uninstall.md) が完了した後に呼び出すフックを登録します。

ブロックには [Gem::Uninstaller](../../../class/Gem=3a=3aUninstaller.md) のインスタンスが渡されます。アンインストールされた [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) は、そのインスタンスの `spec` から取得できます。

- **param** `uninstaller` -- アンインストールを行った [Gem::Uninstaller](../../../class/Gem=3a=3aUninstaller.md) のインスタンスです。
- **return** -- 登録済みのフック(`Proc`)の配列です。
- **SEE** [Gem::Uninstaller#uninstall](../../../method/Gem=3a=3aUninstaller/i/uninstall.md), [Gem?.post_uninstall_hooks](../../../method/Gem/m/post_uninstall_hooks.md)
