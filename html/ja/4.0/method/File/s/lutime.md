# File.lutime

### def File.lutime(atime, mtime, *filename)    -> Integer

ファイルの最終アクセス時刻と更新時刻を変更します。
シンボリックリンクに対しては [File.utime](../../../method/File/s/utime.md)　と違って、シンボリックそのものを変更します。

- **param** `atime` -- 最終アクセス時刻を [Time](../../../class/Time.md) か、起算時からの経過秒数を数値で指定します。

- **param** `mtime` -- 更新時刻を [Time](../../../class/Time.md) か、起算時からの経過秒数を数値で指定します。

- **param** `filename` -- ファイル名を表す文字列を指定します。複数指定できます。

- **return** -- 変更したファイルの数を返します。

- **raise** `Errno::EXXX` -- 変更に失敗した場合に発生します。

- **SEE** [File.utime](../../../method/File/s/utime.md)
