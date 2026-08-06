# Gem::Installer#extract_files

### def extract_files
ファイルのインデックスを読み取って、それぞれのファイルを Gem のディレクトリに展開します。

また、ファイルを Gem ディレクトリにインストールしないようにします。

- **raise** `ArgumentError` -- 自身に [Gem::Format](../../../class/Gem=3a=3aFormat.md) がセットされていない場合に発生します。

- **raise** `Gem::InstallError` -- インストール先のパスが不正な場合に発生します。
