# Net::HTTP#max_retries=

### def max_retries=(times)

冪等なリクエストが [Net::ReadTimeout](../../../class/Net=3a=3aReadTimeout.md)、[IOError](../../../class/IOError.md)、[EOFError](../../../class/EOFError.md)、
[Errno::ECONNRESET](../../../class/Errno=3a=3aECONNRESET.md)、[Errno::ECONNABORTED](../../../class/Errno=3a=3aECONNABORTED.md)、[Errno::EPIPE](../../../class/Errno=3a=3aEPIPE.md)、
[OpenSSL::SSL::SSLError](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLError.md)、[Timeout::Error](../../../class/Timeout=3a=3aError.md) のいずれかで失敗した場合に再試行する最大回数を設定します。

デフォルトは 1 です。

- **param** `times` -- 再試行する最大回数を 0 以上の整数で指定します。
             負の値を指定した場合は [ArgumentError](../../../class/ArgumentError.md) が発生します。

```ruby title="例"
http = Net::HTTP.new(hostname)
http.max_retries = 2   # => 2
http.max_retries       # => 2
```

- **SEE** [Net::HTTP#max_retries](../../../method/Net=3a=3aHTTP/i/max_retries.md)
