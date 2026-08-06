# Zlib::GzipFile#finish

### def finish -> IO

GzipFile オブジェクトをクローズします。[Zlib::GzipFile#close](../../../method/Zlib=3a=3aGzipFile/i/close.md)と違い、このメソッドは関連付けられている IO オブジェクトの close メソッドを呼び出しません。関連付けられている IO オブジェクトを返します。
