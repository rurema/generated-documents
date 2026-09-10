# OpenSSL::SSL::SSLContext#enable_fallback_scsv

### def enable_fallback_scsv -> nil

この `self` に対して TLS_FALLBACK_SCSV を有効にします。

TLS_FALLBACK_SCSV は、クライアントがプロトコルバージョンのダウングレードを再試行していることをサーバに通知し、ダウングレード攻撃を検知できるようにする仕組みです。詳しくは [RFC:7507] を参照してください。
