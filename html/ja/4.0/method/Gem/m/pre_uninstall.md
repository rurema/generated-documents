# Gem?.pre_uninstall

### module_function def pre_uninstall {|uninstaller| ... } -> [Proc]
{: since="1.9.1"}

[Gem::Uninstaller#uninstall](../../../method/Gem=3a=3aUninstaller/i/uninstall.md) が処理を始める前に呼び出すフックを登録します。

ブロックには [Gem::Uninstaller](../../../class/Gem=3a=3aUninstaller.md) のインスタンスが渡されます。アンインストールされる予定の [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) は、そのインスタンスの `spec` から取得できます。

- **param** `uninstaller` -- アンインストールを行おうとしている [Gem::Uninstaller](../../../class/Gem=3a=3aUninstaller.md) のインスタンスです。
- **return** -- 登録済みのフック(`Proc`)の配列です。
- **SEE** [Gem::Uninstaller#uninstall](../../../method/Gem=3a=3aUninstaller/i/uninstall.md), [Gem?.pre_uninstall_hooks](../../../method/Gem/m/pre_uninstall_hooks.md)
