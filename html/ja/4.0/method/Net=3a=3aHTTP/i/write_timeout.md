# Net::HTTP#write_timeout

### def write_timeout -> Numeric|nil

書き込み([man:write(2)]) 一回でブロックしてよい最大秒数を返します。

この秒数たっても書き込めなければ例外 [Net::WriteTimeout](../../../class/Net=3a=3aWriteTimeout.md)
を発生します。

Windows では Net::WriteTimeout は発生しません。

デフォルトは 60 (秒)です。

- **SEE** [Net::HTTP#open_timeout](../../../method/Net=3a=3aHTTP/i/open_timeout.md), [Net::HTTP#read_timeout](../../../method/Net=3a=3aHTTP/i/read_timeout.md), [Net::HTTP#write_timeout=](../../../method/Net=3a=3aHTTP/i/write_timeout=3d.md)
