# OpenSSL::SSL::SSLContext#set_params

### def set_params(params) -> Hash

パラメータをハッシュで設定します。

渡すハッシュテーブルは { パラメータ名のシンボル => パラメータの値 } という形をしていなければなりません。

以下のパラメータを設定できます。
  - :cert ([OpenSSL::SSL::SSLContext#cert=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert=3d.md))
  - :key ([OpenSSL::SSL::SSLContext#key=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/key=3d.md))
  - :client_ca ([OpenSSL::SSL::SSLContext#client_ca=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_ca=3d.md))
  - :ca_file ([OpenSSL::SSL::SSLContext#ca_file=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_file=3d.md))
  - :ca_path ([OpenSSL::SSL::SSLContext#ca_path=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_path=3d.md))
  - :timeout ([OpenSSL::SSL::SSLContext#timeout=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/timeout=3d.md))
  - :verify_mode ([OpenSSL::SSL::SSLContext#verify_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode=3d.md))
  - :verify_depth ([OpenSSL::SSL::SSLContext#verify_depth=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_depth=3d.md))
  - :verify_callback ([OpenSSL::SSL::SSLContext#verify_callback=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_callback=3d.md))
  - :options ([OpenSSL::SSL::SSLContext#options=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/options=3d.md))
  - :cert_store ([OpenSSL::SSL::SSLContext#cert_store=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert_store=3d.md))
  - :extra_chain_cert ([OpenSSL::SSL::SSLContext#extra_chain_cert=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/extra_chain_cert=3d.md))
  - :client_cert_cb ([OpenSSL::SSL::SSLContext#client_cert_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_cert_cb=3d.md))
  - :tmp_dh_callback ([OpenSSL::SSL::SSLContext#tmp_dh_callback=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/tmp_dh_callback=3d.md))
  - :session_id_context ([OpenSSL::SSL::SSLContext#session_id_context=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_id_context=3d.md))
  - :session_get_cb ([OpenSSL::SSL::SSLContext#session_get_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_get_cb=3d.md))
  - :session_new_cb ([OpenSSL::SSL::SSLContext#session_new_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_new_cb=3d.md))
  - :session_remove_cb ([OpenSSL::SSL::SSLContext#session_remove_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_remove_cb=3d.md))
  - :servername_cb ([OpenSSL::SSL::SSLContext#servername_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/servername_cb=3d.md))
指定されなかったパラメータは [OpenSSL::SSL::SSLContext::DEFAULT_PARAMS](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/DEFAULT_PARAMS.md)
の値で初期化されます。
