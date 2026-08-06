# RDoc::Options#extra_accessor_flags

### def extra_accessor_flags -> {String => String}

コマンドライン引数の --accessor オプションで指定したアクセサがキー、アクセサの種類が値のハッシュを返します。

値は r、w、rw のいずれかです。それぞれ attr_reader、attr_writer、
attr_accessor に対応します。
