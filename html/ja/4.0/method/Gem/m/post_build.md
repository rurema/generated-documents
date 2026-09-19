# Gem?.post_build

### module_function def post_build {|installer| ... } -> [Proc]
{: since="1.9.3"}

[Gem::Installer#install](../../../method/Gem=3a=3aInstaller/i/install.md) でファイルの展開と拡張ライブラリのビルドが終わった後、実行可能ファイルや gemspec を書き込む前に呼び出すフックを登録します。

ブロックが偽を返した場合、インストールされたファイルは削除され、インストールは中止されます。

- **param** `installer` -- インストールを行っている [Gem::Installer](../../../class/Gem=3a=3aInstaller.md) のインスタンスです。
- **return** -- 登録済みのフック(`Proc`)の配列です。
- **SEE** [Gem::Installer#install](../../../method/Gem=3a=3aInstaller/i/install.md), [Gem?.post_build_hooks](../../../method/Gem/m/post_build_hooks.md)
