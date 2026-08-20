# class Symbol < Object

シンボルを表すクラス。シンボルは任意の文字列と一対一に対応するオブジェクトです。

文字列の代わりに用いることもできますが、必ずしも文字列と同じ振る舞いをするわけではありません。
同じ内容のシンボルはかならず同一のオブジェクトです。

シンボルオブジェクトは以下のようなリテラルで得られます。

```ruby
:symbol
:'symbol'
%s!symbol! # %記法
```

生成されたシンボルの一覧は [Symbol.all_symbols](../method/Symbol/s/all_symbols.md) で得られます。
一番目のリテラルでシンボルを表す場合、`:` の後には識別子、メソッド名(`!`,`?`,`=` などの接尾辞を含む)、変数名
(`$`などの接頭辞を含む)、再定義できる演算子のいずれかに適合するものしか書くことはできません(そうでなければ文法エラーになります)。
そうでない文字列をシンボルにしたい場合は残りの表記か [String#intern](../method/String/i/intern.md) を使用してください。

### シンボルの実装と用途
#### 実装

Rubyの内部実装では、メソッド名や変数名、定数名、クラス名などの`名前`を整数で管理しています。これは名前を直接文字列として処理するよりも速度面で有利だからです。そしてその整数をRubyのコード上で表現したものがシンボルです。

シンボルは、ソース上では文字列のように見え、内部では整数として扱われる、両者を仲立ちするような存在です。

名前を管理するという役割上、シンボルと文字列は一対一に対応します。
また、文字列と違い、immutable (変更不可)であり、同値ならば必ず同一です。

```ruby
p "abc" == "abc" # => true
p "abc".equal?("abc") # => false
p :abc == :abc # => true
p :abc.equal?(:abc) # => true ←同値ならば同一
```

#### 用途

実用面では、シンボルは文字の意味を明確にします。`名前`を指し示す時など、文字列そのものが必要なわけではない時に用います。


  - ハッシュのキー { :key => "value" }
  - アクセサの引数で渡すインスタンス変数名 attr_reader :name
  - メソッド引数で渡すメソッド名 __send__ :to_s
  - C の enum 的な使用 (値そのものは無視してよい場合)

シンボルを使うメリットは

  - 新しく文字列を生成しない分やや効率がよく、比較も高速。
  - 文字の意味がはっきりするのでコードが読みやすくなる
  - immutable なので内容を書き換えられる心配がない

大抵のメソッドはシンボルの代わりに文字列を引数として渡すこともできるようになっています。

[Symbol](../class/Symbol.md) クラスのメソッドには、[String](../class/String.md) クラスのメソッドと同名で似た働きをするものもあります。

#### GC

内部的にシンボルは

- シンボルの情報を記録するテーブル
- そのテーブルの要素を指し示すポインタ

の2つにより実装されています。そのため同じシンボル（同じ文字列から作られたシンボル）を複製しても同じ要素へのポインタが使われるだけなのでメモリ使用量は普通の文字列と比べて少ないです。

Ruby 2.2 以降では、テーブルに記録された情報は Ruby によって GC されます。すなわち、ある使わなくなったシンボルのテーブル上の情報は GC によって削除されます。

Ruby 2.1 系まではこの機能がなかったため、ユーザからの入力をシンボルに変換するようなプログラムは DoS 攻撃に対して弱い可能性がありましたが、そのような問題は Ruby 2.2 以降では解消しています。

ただし拡張ライブラリ内で [rb_intern](../function/rb_intern.md) によって生成されたシンボルに関するテーブル上の情報はGCされませんので注意してください。

## Class Methods

- [all_symbols](../method/Symbol/s/all_symbols.md)
- [json_create](../method/Symbol/s/json_create.md)

## Instance Methods

- [<=>](../method/Symbol/i/=3c=3d=3e.md)
- [==](../method/Symbol/i/=3d=3d.md)
- [=~](../method/Symbol/i/=3d=7e.md)
- [\[\]](../method/Symbol/i/=5b=5d.md)
- [slice](../method/Symbol/i/slice.md)
- [capitalize](../method/Symbol/i/capitalize.md)
- [casecmp](../method/Symbol/i/casecmp.md)
- [casecmp?](../method/Symbol/i/casecmp=3f.md)
- [downcase](../method/Symbol/i/downcase.md)
- [empty?](../method/Symbol/i/empty=3f.md)
- [encoding](../method/Symbol/i/encoding.md)
- [end_with?](../method/Symbol/i/end_with=3f.md)
- [id2name](../method/Symbol/i/id2name.md)
- [to_s](../method/Symbol/i/to_s.md)
- [inspect](../method/Symbol/i/inspect.md)
- [intern](../method/Symbol/i/intern.md)
- [to_sym](../method/Symbol/i/to_sym.md)
- [length](../method/Symbol/i/length.md)
- [size](../method/Symbol/i/size.md)
- [match](../method/Symbol/i/match.md)
- [match?](../method/Symbol/i/match=3f.md)
- [name](../method/Symbol/i/name.md)
- [next](../method/Symbol/i/next.md)
- [succ](../method/Symbol/i/succ.md)
- [start_with?](../method/Symbol/i/start_with=3f.md)
- [swapcase](../method/Symbol/i/swapcase.md)
- [to_json](../method/Symbol/i/to_json.md)
- [to_proc](../method/Symbol/i/to_proc.md)
- [upcase](../method/Symbol/i/upcase.md)
