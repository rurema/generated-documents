# class OpenSSL::SSL::SSLContext < Object

SSL コンテキストクラス。

SSL コネクション([OpenSSL::SSL::SSLSocket](../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md) や [OpenSSL::SSL::SSLServer](../class/OpenSSL=3a=3aSSL=3a=3aSSLServer.md))
オブジェクトを生成するためのファクトリクラスです。
コネクションを生成するために必要なパラメータ(プロトコルのバージョン、証明書の情報、認証の要件など)を保持します。

コネクションを1度生成して以降は、コンテキストが保持しているパラメータを変更できません。一部のパラメータが共有されるため、安全性のため
[Object#freeze](../method/Object/i/freeze.md) によってオブジェクトを変更不可能にします。
ただしこの凍結は完全ではなく、この後もセッション管理機能によってオブジェクトのキャッシュ領域にセッションを追加したり削除したりできます。

### Constants

verify_mode= と options= で指定できる定数に関しては [OpenSSL::SSL](../class/OpenSSL=3a=3aSSL.md) を参照してください。

## Class Methods

- [new](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/s/new.md)

## Instance Methods

- [ca_file](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_file.md)
- [ca_file=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_file=3d.md)
- [ca_path](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_path.md)
- [ca_path=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_path=3d.md)
- [cert](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert.md)
- [cert=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert=3d.md)
- [cert_store](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert_store.md)
- [cert_store=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert_store=3d.md)
- [ciphers](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ciphers.md)
- [ciphers=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ciphers=3d.md)
- [client_ca](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_ca.md)
- [client_ca=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_ca=3d.md)
- [client_cert_cb](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_cert_cb.md)
- [client_cert_cb=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_cert_cb=3d.md)
- [extra_chain_cert](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/extra_chain_cert.md)
- [extra_chain_cert=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/extra_chain_cert=3d.md)
- [flush_sessions](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/flush_sessions.md)
- [key](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/key.md)
- [key=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/key=3d.md)
- [options](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/options.md)
- [options=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/options=3d.md)
- [renegotiation_cb](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/renegotiation_cb.md)
- [renegotiation_cb=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/renegotiation_cb=3d.md)
- [servername_cb](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/servername_cb.md)
- [servername_cb=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/servername_cb=3d.md)
- [session_add](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_add.md)
- [session_cache_mode](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode.md)
- [session_cache_mode=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode=3d.md)
- [session_cache_size](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_size.md)
- [session_cache_size=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_size=3d.md)
- [session_cache_stats](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_stats.md)
- [session_get_cb](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_get_cb.md)
- [session_get_cb=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_get_cb=3d.md)
- [session_id_context](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_id_context.md)
- [session_id_context=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_id_context=3d.md)
- [session_new_cb](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_new_cb.md)
- [session_new_cb=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_new_cb=3d.md)
- [session_remove](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_remove.md)
- [session_remove_cb](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_remove_cb.md)
- [session_remove_cb=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_remove_cb=3d.md)
- [set_params](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md)
- [ssl_timeout](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ssl_timeout.md)
- [timeout](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/timeout.md)
- [ssl_timeout=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ssl_timeout=3d.md)
- [timeout=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/timeout=3d.md)
- [ssl_version=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ssl_version=3d.md)
- [tmp_dh_callback](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/tmp_dh_callback.md)
- [tmp_dh_callback=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/tmp_dh_callback=3d.md)
- [verify_callback](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_callback.md)
- [verify_callback=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_callback=3d.md)
- [verify_depth](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_depth.md)
- [verify_depth=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_depth=3d.md)
- [verify_mode](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode.md)
- [verify_mode=](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode=3d.md)

## Constants

- [DEFAULT_CERT_STORE](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/DEFAULT_CERT_STORE.md)
- [DEFAULT_PARAMS](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/DEFAULT_PARAMS.md)
- [METHODS](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/METHODS.md)
- [SESSION_CACHE_BOTH](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_BOTH.md)
- [SESSION_CACHE_CLIENT](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_CLIENT.md)
- [SESSION_CACHE_NO_AUTO_CLEAR](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_NO_AUTO_CLEAR.md)
- [SESSION_CACHE_NO_INTERNAL](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_NO_INTERNAL.md)
- [SESSION_CACHE_NO_INTERNAL_LOOKUP](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_NO_INTERNAL_LOOKUP.md)
- [SESSION_CACHE_NO_INTERNAL_STORE](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_NO_INTERNAL_STORE.md)
- [SESSION_CACHE_OFF](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_OFF.md)
- [SESSION_CACHE_SERVER](../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_SERVER.md)
