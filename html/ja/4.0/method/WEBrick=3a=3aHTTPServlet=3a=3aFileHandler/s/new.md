# WEBrick::HTTPServlet::FileHandler.new

### def WEBrick::HTTPServlet::FileHandler.new(server, root, options = {}, default = WEBrick::Config::FileHandler)

FileHandler サーブレットを生成します。ユーザが直接使うことはあまりありません。

- **param** `server` -- [WEBrick::GenericServer](../../../class/WEBrick=3a=3aGenericServer.md) のサブクラスのインスタンスを指定します。

- **param** `root` -- サーブレットにルートディレクトリとして認識させる、ローカルのファイルシステムのディレクトリを文字列で与える。

- **param** `options` -- 設定を保存したハッシュ、

- **param** `default` -- デフォルトの設定を保存したハッシュを与える。
