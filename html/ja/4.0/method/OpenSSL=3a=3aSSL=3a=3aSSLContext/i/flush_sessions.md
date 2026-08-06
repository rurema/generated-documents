# OpenSSL::SSL::SSLContext#flush_sessions

### def flush_sessions(time=nil) -> self

自身が保持しているセッションキャッシュを破棄します。

time に nil を渡すと現在時刻で期限切れになっているキャッシュを破棄します。

time に [Time](../../../class/Time.md) オブジェクトを渡すと、その時刻で時間切れになるキャッシュを破棄します。

- **param** `time` -- キャッシュ破棄の基準時刻
- **SEE** [OpenSSL::SSL::SSLContext#session_cache_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode=3d.md)
