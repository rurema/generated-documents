# Zlib::GzipReader#getc

### def getc -> Integer | nil

IO クラスの同名メソッド[IO#getc](../../../method/IO/i/getc.md)と同じです。

但し、gzip ファイル中にエラーがあった場合 [Zlib::Error](../../../class/Zlib=3a=3aError.md) 例外や
[Zlib::GzipFile::Error](../../../class/Zlib=3a=3aGzipFile=3a=3aError.md) 例外が発生します。

gzip ファイルのフッターの処理に注意して下さい。
gzip ファイルのフッターには圧縮前データのチェックサムが記録されています。GzipReader オブジェクトは、次の時に展開したデータとフッターの照合を行い、エラーがあった場合は
[Zlib::GzipFile::NoFooter](../../../class/Zlib=3a=3aGzipFile=3a=3aNoFooter.md), [Zlib::GzipFile::CRCError](../../../class/Zlib=3a=3aGzipFile=3a=3aCRCError.md),
[Zlib::GzipFile::LengthError](../../../class/Zlib=3a=3aGzipFile=3a=3aLengthError.md) 例外を発生させます。

  - EOF (圧縮データの最後) を越えて読み込み要求を受けた時。
    すなわち [Zlib::GzipReader#read](../../../method/Zlib=3a=3aGzipReader/i/read.md),
    [Zlib::GzipReader#gets](../../../method/Zlib=3a=3aGzipReader/i/gets.md) メソッド等が nil を返す時。
  - EOF まで読み込んだ後、[Zlib::GzipFile#close](../../../method/Zlib=3a=3aGzipFile/i/close.md) メソッドが
    呼び出された時。
  - EOF まで読み込んだ後、[Zlib::GzipReader#unused](../../../method/Zlib=3a=3aGzipReader/i/unused.md) メソッドが
    呼び出された時。

- **raise** `Zlib::Error` -- [Zlib::Error](../../../class/Zlib=3a=3aError.md) を参照
- **raise** `Zlib::GzipFile::Error` -- [Zlib::GzipFile::Error](../../../class/Zlib=3a=3aGzipFile=3a=3aError.md)を参照
- **raise** `Zlib::GzipFile::NoFooter` -- [Zlib::GzipFile::NoFooter](../../../class/Zlib=3a=3aGzipFile=3a=3aNoFooter.md)を参照
- **raise** `Zlib::GzipFile::CRCError` -- [Zlib::GzipFile::CRCError](../../../class/Zlib=3a=3aGzipFile=3a=3aCRCError.md)を参照
- **raise** `Zlib::GzipFile::LengthError` -- [Zlib::GzipFile::LengthError](../../../class/Zlib=3a=3aGzipFile=3a=3aLengthError.md)を参照

```ruby
require 'zlib'

=begin
# hoge.gz がない場合は下記で作成できる。
Zlib::GzipWriter.open('hoge.gz') { |gz|
  gz.puts 'hoge'
}
=end

Zlib::GzipReader.open('hoge.gz') { |gz|
  while c = gz.getc
    puts c
  end
}
# => 104
# => 111
# => 103
# => 101
# => 10
```

- **SEE** [IO#getc](../../../method/IO/i/getc.md)
