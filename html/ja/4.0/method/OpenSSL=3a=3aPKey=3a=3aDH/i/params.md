# OpenSSL::PKey::DH#params

### def params -> {String => OpenSSL::BN}

鍵パラメータと鍵対を {"パラメータ名" => パラメータ値} というハッシュテーブルで返します。

ハッシュテーブルのキーは "p", "g", "pub_key", "priv_key" の4つです。
自身が内部に鍵対を持っていない場合は、 "pub_key" と "priv_key" に対応する値は 0 となります。
