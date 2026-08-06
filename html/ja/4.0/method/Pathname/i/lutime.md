# Pathname#lutime

### def lutime(atime, mtime) -> Integer

File.lutime(atime, mtime, self.to_s) と同じです。

[Pathname#utime](../../../method/Pathname/i/utime.md) と違い、シンボリックリンクそのものの時刻を変更します（リンク先をたどりません）。

- **param** `atime` -- 最終アクセス時刻を [Time](../../../class/Time.md) か、起算時からの経過秒数を数値で指定します。

- **param** `mtime` -- 更新時刻を [Time](../../../class/Time.md) か、起算時からの経過秒数を数値で指定します。


- **SEE** [File.lutime](../../../method/File/s/lutime.md), [Pathname#utime](../../../method/Pathname/i/utime.md)
