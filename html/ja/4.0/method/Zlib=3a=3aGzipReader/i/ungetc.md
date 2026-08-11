# Zlib::GzipReader#ungetc

### def ungetc(char) -> nil

IO クラスの同名メソッド [IO#ungetc](../../../method/IO/i/ungetc.md) と同じです。

IO クラスの同名メソッドと同じですが、gzip ファイル中にエラーがあった場合 [Zlib::Error](../../../class/Zlib=3a=3aError.md) 例外や
[Zlib::GzipFile::Error](../../../class/Zlib=3a=3aGzipFile=3a=3aError.md) 例外が発生します。

gzip ファイルのフッターの処理に注意して下さい。
gzip ファイルのフッターには圧縮前データのチェックサムが記録されています。GzipReader オブジェクトは、次の時に展開したデータとフッターの照合を行い、エラーがあった場合は
Zlib::GzipFile::NoFooter, Zlib::GzipFile::CRCError,
Zlib::GzipFile::LengthError 例外を発生させます。

  - EOF (圧縮データの最後) を越えて読み込み要求を受けた時。
    すなわち [Zlib::GzipReader#read](../../../method/Zlib=3a=3aGzipReader/i/read.md),
    [Zlib::GzipReader#gets](../../../method/Zlib=3a=3aGzipReader/i/gets.md) メソッド等が nil を返す時。
  - EOF まで読み込んだ後、[Zlib::GzipFile#close](../../../method/Zlib=3a=3aGzipFile/i/close.md) メソッドが
    呼び出された時。
  - EOF まで読み込んだ後、[Zlib::GzipReader#unused](../../../method/Zlib=3a=3aGzipReader/i/unused.md) メソッドが
    呼び出された時。

- **param** `char` -- 読み戻したい1文字かそのコードポイントを指定します。

- **raise** `Zlib::Error` -- [Zlib::Error](../../../class/Zlib=3a=3aError.md) を参照
- **raise** `Zlib::GzipFile::Error` -- [Zlib::GzipFile::Error](../../../class/Zlib=3a=3aGzipFile=3a=3aError.md)を参照
- **raise** `Zlib::GzipFile::NoFooter` -- [Zlib::GzipFile::NoFooter](../../../class/Zlib=3a=3aGzipFile=3a=3aNoFooter.md)を参照
- **raise** `Zlib::GzipFile::CRCError` -- [Zlib::GzipFile::CRCError](../../../class/Zlib=3a=3aGzipFile=3a=3aCRCError.md)を参照
- **raise** `Zlib::GzipFile::LengthError` -- [Zlib::GzipFile::LengthError](../../../class/Zlib=3a=3aGzipFile=3a=3aLengthError.md)を参照

```ruby
require 'zlib'

=begin
# hoge.gz がない場合はこれで作成する。
Zlib::GzipWriter.open('hoge.gz') { |gz|
  gz.print 'hogefuga'
}
=end

Zlib::GzipReader.open('hoge.gz') { |gz|
  begin
    c1 = gz.getc
    c2 = gz.getc
    break if c2.nil?
    printf "%c -> %c\n", c1, c2
    gz.ungetc(c2)
  end while true
}

# => h -> o
# => o -> g
# => g -> e
# => e -> f
# => f -> u
# => u -> g
# => g -> a
```
  
- **SEE** [IO#ungetc](../../../method/IO/i/ungetc.md)
