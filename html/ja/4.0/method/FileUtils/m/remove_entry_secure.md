# FileUtils?.remove_entry_secure

### module_function def remove_entry_secure(path, force = false) -> ()

ファイル path を削除します。path がディレクトリなら再帰的に削除します。

[FileUtils?.rm_r](../../../method/FileUtils/m/rm_r.md) および [FileUtils?.remove_entry](../../../method/FileUtils/m/remove_entry.md) には
TOCTTOU (time-of-check to time-of-use)脆弱性が存在します。
このメソッドはそれを防ぐために新設されました。
[FileUtils?.rm_r](../../../method/FileUtils/m/rm_r.md) および [FileUtils?.remove_entry](../../../method/FileUtils/m/remove_entry.md) は以下の条件が満たされるときにはセキュリティホールになりえます。

  - 親ディレクトリが全ユーザから書き込み可能 (/tmp を含む)
  - path 以下のいずれかのディレクトリが全ユーザから書き込み可能
  - システムがシンボリックリンクを持つ

この脆弱性を防ぐため、remove_entry_secure は削除前に path 以下のディレクトリのオーナーとパーミッションを変更し、上記の条件を回避します。
ただし remove_entry_secure は親ディレクトリが以下の条件を満たすことを仮定しています。

  - UNIX システムおよびそれに類する環境では、sticky ビットが立っていること。
  - 全ユーザが書き込み可能であるのは、直接の親ディレクトリのみであること。
    例えば、/var/tmp のパーミッションが 1777 であるのは問題ありませんが、
    その場合 / や /var が全ユーザから書き込み可能であってはなりません。

この条件が満たされない場合 remove_entry_secure は安全ではありません。

- **param** `path` -- 削除するパス。

- **param** `force` -- 真のときは削除中に発生した [StandardError](../../../class/StandardError.md) を無視します。
