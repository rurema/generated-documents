# library rdoc/generator

[RDoc](../class/RDoc.md) が解析したソースコードを [RDoc::CodeObject](../class/RDoc=3a=3aCodeObject.md) のツリーからその他の形式に出力するためのサブライブラリです。

[RDoc](../class/RDoc.md) には HTML 向けのジェネレータの
[RDoc::Generator::Darkfish](../class/RDoc=3a=3aGenerator=3a=3aDarkfish.md) と ri 向けのジェネレータの
[RDoc::Generator::RI](../class/RDoc=3a=3aGenerator=3a=3aRI.md) が付属しています。

### ジェネレータの登録

[RDoc::RDoc.add_generator](../method/RDoc=3a=3aRDoc/s/add_generator.md) を呼び出す事でジェネレータの登録が行えます。

```ruby
class My::Awesome::Generator
  RDoc::RDoc.add_generator self
end
```

### rdoc のオプションの追加

[rdoc](../library/rdoc.md) ではオプションの処理の前に [RDoc::Options](../class/RDoc=3a=3aOptions.md) は各ジェネレータの #setup_options メソッドを実行します。ジェネレータは 第一引数で渡される [RDoc::Options#option_parser](../method/RDoc=3a=3aOptions/i/option_parser.md) に対して rdoc コマンドのオプションを追加できます。[rdoc/options#custom_options](../library/rdoc=2foptions.md#custom_options) の例と
[OptionParser](../class/OptionParser.md) も併せて参照してください。

### ジェネレータのインストール

ソースコードを解析した後は [RDoc::RDoc](../class/RDoc=3a=3aRDoc.md) オブジェクトはジェネレータのコンストラクタの引数に `RDoc::Store` オブジェクトと
[RDoc::Options](../class/RDoc=3a=3aOptions.md) オブジェクトを渡して初期化します。

`RDoc::Store` オブジェクトは解析したソースコードに関する情報を保持しています。[RDoc](../class/RDoc.md) 3 以前は [RDoc::TopLevel](../class/RDoc=3a=3aTopLevel.md) オブジェクトがこの情報を保持しています。ジェネレータを [RDoc](../class/RDoc.md) 3 以前のものから更新する際には、[RDoc::TopLevel](../class/RDoc=3a=3aTopLevel.md) を使って記述された処理を置き換える必要があります。

[RDoc](../class/RDoc.md) は出力を行う際にジェネレータの generate メソッドを呼び出します。`RDoc::Store` や [RDoc::CodeObject](../class/RDoc=3a=3aCodeObject.md) のツリーのメソッドを使って要求される形式のフォーマットを出力してください。
