# WEBrick::HTTPResponse#set_error

### def set_error(status, backtrace = false)    -> ()

自身の内容(エンティティボディ)を指定された status のエラーページにします。

- **param** `status` -- [WEBrick::HTTPStatus::Status](../../../class/WEBrick=3a=3aHTTPStatus=3a=3aStatus.md) のサブクラスか一般の例外クラスを指定します。

- **param** `backtrace` -- true を指定した場合バックトレースをエラーページに出力します。
