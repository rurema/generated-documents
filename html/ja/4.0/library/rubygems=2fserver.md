# library rubygems/server

Gem パッケージを配布したり Gem パッケージに同梱されているドキュメントを参照するための簡易ウェブサーバを動かすためのライブラリです。

[rubygems/commands/server_command](../library/rubygems=2fcommands=2fserver_command.md) を使用して起動するウェブサーバの本体です。

このライブラリを使用したウェブサーバは以下の設定で動作します。

- **`"/"`**:
  インストールされている Gem パッケージの一覧を表示します。
- **`"/specs.#{Gem.marshal_version}.gz"`**:
  インストールされている全バージョンの情報 (パッケージ名、バージョン、プラットフォーム) を返します。
- **"/latest_specs.#{Gem.marshal_version}.gz"**:
  インストールされている最新バージョンの情報 (パッケージ名、バージョン、プラットフォーム) を返します。
- **"/quick/index", "/quick/index.rz", "/quick/latest_index", "/quick/latest_index.rz"**:
  インストールされている Gem パッケージの一覧を返します。
- **`"/gems/"`**:
  ダウンロード可能な Gem パッケージの一覧を表示します。

以下のインデックスはレガシーなものです。

- **`"/Marshal.#{Gem.marshal_version}"`**:
  インストールされている Gem パッケージの [Gem::SourceIndex](../class/Gem=3a=3aSourceIndex.md) を [Marshal](../class/Marshal.md) の形式でダンプしたものを返します。
- **`"/yaml"`**:
  インストールされている Gem パッケージの [Gem::SourceIndex](../class/Gem=3a=3aSourceIndex.md) を YAML 形式でダンプしたメタデータを返します。この機能は非推奨です。
