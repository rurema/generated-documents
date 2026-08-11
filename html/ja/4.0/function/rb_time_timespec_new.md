# rb_time_timespec_new

### VALUE rb_time_timespec_new(const struct timespec *ts, int offset)

引数 ts、offset を元に [Time](../class/Time.md) オブジェクトを作成して返します。

- **param** `ts` -- timespec 構造体のポインタ

- **param** `offset` -- 協定世界時との時差(秒)。
              -86400 < offset < 86400 の場合は指定した時差に、INT_MAX
              を指定した場合は地方時、INT_MAX-1 を指定した場合は UTC になります。

- **raise** `ArgumentError` -- offset に上述の範囲以外の値を指定した場合に発生します。
