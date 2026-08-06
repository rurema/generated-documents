# NEWS for Ruby 2.4.0

このドキュメントは前回リリース以降のバグ修正を除くユーザーに影響のある機能の変更のリストです。

それぞれのエントリーは参照情報があるため短いです。
十分な情報と共に書かれた全ての変更のリストは ChangeLog ファイルか bugs.ruby-lang.org の issue を参照してください。

## 2.3.0 以降の変更

### 言語仕様の変更

  - 条件式での多重代入ができるようになりました [feature:10617]
  - [Symbol#to_proc](../method/Symbol/i/to_proc.md) でメソッド呼び出し元での Refinements が有効になりました [feature:9451]
  - [Object#send](../method/Object/i/send.md) や [BasicObject#__send__](../method/BasicObject/i/__send__.md) でメソッドを呼び出したときに Refinements が有効になりました [feature:11476]
  - 後置 rescue をメソッドの引数内に書けるようになりました [feature:12686]
  - トップレベルで return を書けるようになりました [feature:4840]

### 組み込みクラスの更新

  - [Array](../class/Array.md)
    - [Array#concat](../method/Array/i/concat.md) [feature:12333]
      複数の引数を取れるようになりました。
    - [Array#max](../method/Array/i/max.md), [Array#min](../method/Array/i/min.md) [feature:12172]
      この変更は小さな非互換の原因となります:
      [Enumerable#max](../method/Enumerable/i/max.md) だけを再定義しているとき、max を配列に対して呼び出しても無視されます。
      このようなときは [Array#max](../method/Array/i/max.md) も再定義してください。
    - [Array#pack](../method/Array/i/pack.md) [feature:12754]
      既にアロケートされているバッファを再利用するためにオプションキーワード引数 buffer: を取るようになりました。
    - [Array#sum](../method/Array/i/sum.md) [feature:12217]
      [Enumerable#sum](../method/Enumerable/i/sum.md) と違って each メソッドに依存しません。

  - [Comparable](../class/Comparable.md)
    - [Comparable#clamp](../method/Comparable/i/clamp.md) を追加 [feature:10594]

  - [Dir](../class/Dir.md)
    - [Dir.empty?](../method/Dir/s/empty=3f.md) を追加 [feature:10121]

  - [Enumerable](../class/Enumerable.md)
    - [Enumerable#chunk](../method/Enumerable/i/chunk.md) ブロックを省略した場合 [Enumerator](../class/Enumerator.md) を返すようになりました。[feature:2172]
    - [Enumerable#sum](../method/Enumerable/i/sum.md) を追加 [feature:12217]
    - [Enumerable#uniq](../method/Enumerable/i/uniq.md) を追加 [feature:11090]

  - [Enumerator::Lazy](../class/Enumerator=3a=3aLazy.md)
    - [Enumerator::Lazy#chunk_while](../method/Enumerator=3a=3aLazy/i/chunk_while.md) を追加 <https://github.com/ruby/ruby/pull/1186>
    - [Enumerator::Lazy#uniq](../method/Enumerator=3a=3aLazy/i/uniq.md) を追加 [feature:11090]

  - [File](../class/File.md)
    - [File.empty?](../method/File/s/empty=3f.md) を追加 [feature:9969]

  - [Float](../class/Float.md)
    - [Float#ceil](../method/Float/i/ceil.md), [Float#floor](../method/Float/i/floor.md), [Float#truncate](../method/Float/i/truncate.md) は
      [Float#round](../method/Float/i/round.md)と同じように省略可能な桁を指定する引数を受け付けるようになりました。[feature:12245]
    - [Float#round](../method/Float/i/round.md) は half というキーワード引数を受け付けるようになりました。
      half には :even, :up, :down が指定可能です。 [bug:12548] [bug:12958] [feature:12953]

  - [Hash](../class/Hash.md)
    - [Hash#compact](../method/Hash/i/compact.md), [Hash#compact!](../method/Hash/i/compact=21.md) を追加 [feature:11818]
    - [Hash#transform_values](../method/Hash/i/transform_values.md) [Hash#transform_values!](../method/Hash/i/transform_values=21.md) を追加 [feature:12512]

  - [Integer](../class/Integer.md)
    - Fixnum と Bignum は Integer に統合されました [feature:12005]
    - [Integer#ceil](../method/Integer/i/ceil.md), [Integer#floor](../method/Integer/i/floor.md), [Integer#truncate](../method/Integer/i/truncate.md) は
      [Integer#round](../method/Integer/i/round.md) と同じように省略可能な桁を指定する引数を受け付けるようになりました [feature:12245]
    - [Integer#digits](../method/Integer/i/digits.md) を追加。 [feature:12447]
      位置記法のために各桁を展開するためのメソッドです。
    - [Integer#round](../method/Integer/i/round.md) は half というキーワード引数を受け付けるようになりました。
      half には :even, :up, :down が指定可能です。 [bug:12548] [bug:12958] [feature:12953]

  - [IO](../class/IO.md)
    - [IO#gets](../method/IO/i/gets.md), [IO#readline](../method/IO/i/readline.md), [IO#each_line](../method/IO/i/each_line.md), [IO#readlines](../method/IO/i/readlines.md), [IO.foreach](../method/IO/s/foreach.md) は
      chomp というキーワード引数を受け付けるようになりました。[feature:12553]

  - [Kernel](../class/Kernel.md)
    - [Object#clone](../method/Object/i/clone.md) は freeze というキーワード引数を受け付けるようになりました。
      [feature:12300]

  - [MatchData](../class/MatchData.md)
    - [MatchData#named_captures](../method/MatchData/i/named_captures.md) を追加 [feature:11999]
    - [MatchData#values_at](../method/MatchData/i/values_at.md) は named captures をサポートするようになりました [feature:9179]

  - [Module](../class/Module.md)
    - [Module#refine](../method/Module/i/refine.md) 引数としてモジュールを許可するようになりました [feature:12534]
    - [Module.used_modules](../method/Module/s/used_modules.md) を追加 [feature:7418]

  - [Numeric](../class/Numeric.md)
    - [Numeric#finite?](../method/Numeric/i/finite=3f.md), [Numeric#infinite?](../method/Numeric/i/infinite=3f.md) を追加 [feature:12039]

  - [Process](../class/Process.md)
    - macOS 10.12 から導入された CLOCK_MONOTONIC_RAW_APPROX, CLOCK_UPTIME_RAW,
      CLOCK_UPTIME_RAW_APPROX をサポートしました

  - [Rational](../class/Rational.md)
    - [Rational#round](../method/Rational/i/round.md) は half というキーワード引数を受け付けるようになりました。[bug:12548] [bug:12958]
      half には :even, :up, :down が指定可能です。[feature:12953]

  - [Regexp](../class/Regexp.md)
    - meta character \X matches Unicode 9.0 characters with some workarounds
      for UTR #51 Unicode Emoji, Version 4.0 emoji zwj sequences.
    - [Regexp#match?](../method/Regexp/i/match=3f.md) を追加 [feature:8110]
      true/false を返し、バックリファレンスを生成しません。
    - Onigmo 6.0.0 に更新 (Ruby 2.4.0)
    - Onigmo 6.1.1 に更新 (Ruby 2.4.1)
      - 非包含オペレータ(absence operator)をサポートしました <https://github.com/k-takata/Onigmo/issues/82>

  - [Regexp](../class/Regexp.md)/[String](../class/String.md): Unicodeのバージョンを8.0.0から9.0.0に更新しました [feature:12513]

  - RubyVM::Env
    - 削除しました

  - [String](../class/String.md)
    - [String#casecmp?](../method/String/i/casecmp=3f.md) を追加 [feature:12786]
    - [String#concat](../method/String/i/concat.md), [String#prepend](../method/String/i/prepend.md) 複数の引数を受け付けるようになりました [feature:12333]
    - [String#each_line](../method/String/i/each_line.md), [String#lines](../method/String/i/lines.md) 省略可能なキーワード引数 chomp を受け付けるようになりました [feature:12553]
    - [String#match?](../method/String/i/match=3f.md) を追加 [feature:12898]
    - [String#unpack1](../method/String/i/unpack1.md) を追加 [feature:12752]
    - [String#upcase](../method/String/i/upcase.md), [String#downcase](../method/String/i/downcase.md), [String#capitalize](../method/String/i/capitalize.md), [String#swapcase](../method/String/i/swapcase.md),
      [String#upcase!](../method/String/i/upcase=21.md), [String#downcase!](../method/String/i/downcase=21.md), [String#capitalize!](../method/String/i/capitalize=21.md), [String#swapcase!](../method/String/i/swapcase=21.md)
      は全てのUnicodeに対して動作するようになりました。もはやASCIIのみに限定されていません。
      UTF-8, UTF-16BE/LE, UTF-32BE/LE, ISO-8859-1~16 をサポートしています。
      Variations are available with options. [feature:10085]
    - String.new(capacity: size) [feature:12024]

  - [StringIO](../class/StringIO.md)
    - [StringIO#gets](../method/StringIO/i/gets.md), [StringIO#readline](../method/StringIO/i/readline.md), [StringIO#each_line](../method/StringIO/i/each_line.md), [StringIO#readlines](../method/StringIO/i/readlines.md)
      省略可能なキーワード引数 chomp を受け付けるようになりました [feature:12553]

  - [Symbol](../class/Symbol.md)
    - [Symbol#casecmp?](../method/Symbol/i/casecmp=3f.md) を追加 [feature:12786]
    - [Symbol#match](../method/Symbol/i/match.md) は [MatchData](../class/MatchData.md) を返すようになりました [bug:11991]
    - [Symbol#match?](../method/Symbol/i/match=3f.md) を追加 [feature:12898]
    - [Symbol#upcase](../method/Symbol/i/upcase.md), [Symbol#downcase](../method/Symbol/i/downcase.md), [Symbol#capitalize](../method/Symbol/i/capitalize.md), [Symbol#swapcase](../method/Symbol/i/swapcase.md) は
      全ての Unicode に対して動作するようになりました。[feature:10085]

  - [Thread](../class/Thread.md)
    - [Thread#report_on_exception](../method/Thread/i/report_on_exception.md), [Thread.report_on_exception](../method/Thread/s/report_on_exception.md) を追加 [feature:6647]

  - [TracePoint](../class/TracePoint.md)
    - [TracePoint#callee_id](../method/TracePoint/i/callee_id.md) を追加 [feature:12747]

  - [Warning](../class/Warning.md)
    - Warningという名前のモジュールを導入しました。
      デフォルトでは [Warning.warn](../method/Warning/s/warn.md) という特異メソッドだけ定義されているモジュールです。
      サードパーティのライブラリが警告を扱う方法を制御できるようになります。
      [feature:12299]

### 標準添付ライブラリの更新 (優れたもののみ)

  - [cgi](../library/cgi.md)
    - "," をクッキーの区切り文字として許可しなくなりました [bug:12791]

  - [csv](../library/csv.md)
    - liberal_parsing オプションを追加 [feature:11839]

  - [ipaddr](../library/ipaddr.md)
    - [IPAddr#==](../method/IPAddr/i/=3d=3d.md), [IPAddr#<=>](../method/IPAddr/i/=3c=3d=3e.md) で引数のオブジェクトを IPAddr に変換する処理に失敗しても例外が発生しなくなりました
      [bug:12799]

  - [irb](../library/irb.md)
    - [Binding#irb](../method/Binding/i/irb.md) binding.pryと同じようにREPLのセッションを開始します。r56624.

  - [logger](../library/logger.md)
    - [Logger.new](../method/Logger/s/new.md) のキーワード引数に level, progname, datetime_format, formatter を追加し、
      Loggerインスタンス生成時に属性をセットできるようにしました。 [feature:12224]
    - [Logger.new](../method/Logger/s/new.md) のキーワード引数に shift_period_suffix を追加 [feature:10772]

  - [net/http](../library/net=2fhttp.md)
    - `Net::HTTP.post` を追加 [feature:12375]

  - [net/ftp](../library/net=2fftp.md)
    - TLSをサポート [rfc:4217]
    - [Net::FTP.new](../method/Net=3a=3aFTP/s/new.md) の引数をキーワード引数に対応しました
    - [Net::FTP#status](../method/Net=3a=3aFTP/i/status.md) に省略可能なキーワード引数 pathname を追加
      solebox による貢献。<https://github.com/ruby/ruby/pull/1478> [feature:12965]

  - [openssl](../library/openssl.md)
    - Ruby/OpenSSL 2.0
      OpenSSL は <https://github.com/ruby/openssl> に分離されましたが、デフォルトGemとして残っています。

  - [optparse](../library/optparse.md)
    - [OptionParser#parse](../method/OptionParser/i/parse.md)や[OptionParser#order](../method/OptionParser/i/order.md)にキーワード引数 into を追加 [feature:11191]

  - [pathname](../library/pathname.md)
    - [Pathname#empty?](../method/Pathname/i/empty=3f.md) を追加 [feature:12596]

  - [readline](../library/readline.md)
    - `Readline.quoting_detection_proc`, `Readline.quoting_detection_proc=` を追加
      [feature:12659]

  - [rexml](../library/rexml.md)
    - `REXML::Element#[]`: If String or Symbol is specified, attribute
      value is returned. Otherwise, Nth child is returned. This is
      backward compatible change.

  - `set`
    - [Set#compare_by_identity](../method/Set/i/compare_by_identity.md), [Set#compare_by_identity?](../method/Set/i/compare_by_identity=3f.md) を追加
      [feature:12210]

  - [webrick](../library/webrick.md)
    - "," をクッキーの区切り文字として許可しなくなりました [bug:12791]

### 互換性 (機能追加とバグ修正を除く)

  - [Array#sum](../method/Array/i/sum.md) と [Enumerable#sum](../method/Enumerable/i/sum.md) を追加しました。 [feature:12217]
    Ruby2.4以前ではArray#sumはなかったのでRuby自身には互換性の問題はありません。
    しかし、多くのサードパーティ製のGem(activesupport, facets, simple_stats, etc)で
    sumメソッドを定義しています。それらの実装はほとんど互換ですが、微妙な違いがあります。
    Rubyのsumメソッドは概ね互換であるべきですが、全てのサードパーティ製の実装と完全に互換性を保つことは不可能です。

  - FixnumとBignumはIntegerに統合されました。[feature:12005]
    FixnumクラスとBignumクラスは削除されました。
    Integerクラスは抽象クラスから具象クラスに変更されました。
    Cレベルの定数 rb_cFixnumとrb_cBignumは削除されました。これらを使用している場合、
    コンパイルエラーになります。
    ```text
            # 0のクラスはInteger
            0.class # => Integer
            Fixnum  # => Integer
            Bignum  # => Integer

            # 以下の2つは同じ
            obj.kind_of?(Fixnum)
            obj.kind_of?(Integer)

            /* Cレベルでは以下の2つを使ってFixnumとBignumを区別すべき */
            FIXNUM_P(obj)
            RB_TYPE_P(obj, T_BIGNUM)

            /* Cレベルではこの機能を検出するために以下の定数を使います */
            RUBY_INTEGER_UNIFICATION

            # Rubyレベルでは以下のコードでこの機能を検出できます
            0.class == Integer
    ```

  - String/Symbol#upcase/downcase/swapcase/capitalize(!) はASCIIだけでなく全てのUnicodeに対して動作するようになりました。[feature:10085]
    No change is needed if the data is in ASCII anyway or if the limitation
    to ASCII was only tolerated while waiting for a more extensive implementation.
    :asciiオプションを使うようにする変更が必要なのは、Unicodeのデータを処理するときに、
    ASCIIのみ変換したい場合です。国際化ドメイン名の処理はよい例です。

  - TRUE / FALSE / NIL
    これらは廃止されました。[feature:12574]
    true / false / nil を使用してください。

### 標準添付ライブラリの互換性(機能追加とバグ修正を除く)

  - DateTime
    - [DateTime#to_time](../method/DateTime/i/to_time.md) はタイムゾーンを保つようになりました [bug:12189]

  - PSych
    - Psych 2.2.2 に更新

  - RDoc
    - RDoc 5.0.0 に更新

  - RubyGems
    - RubyGems 2.6.8 に更新

  - shellwords
    - [Shellwords?.shellwords](../method/Shellwords/m/shellwords.md) (shellsplit) はダブルクオートの中で
      後続の文字が次の文字の時だけバックスラッシュをエスケープとして
      扱います:
      $ \` " \ <newline>
      [bug:10055]
      <http://pubs.opengroup.org/onlinepubs/9699919799/utilities/contents.html>

  - Time
    - [Time#to_time](../method/Time/i/to_time.md) はタイムゾーンを保つようになりました [bug:12271]

  - thread
    - the extension library is removed.  Till 2.0 it was a pure ruby script
      "thread.rb", which has precedence over "thread.so", and has been provided
      in $LOADED_FEATURES since 2.1.

  - Tk
    - 標準添付ライブラリから削除されました [feature:8539]
      <https://github.com/ruby/tk> が新しいリポジトリです。

  - XMLRPC
    - 標準添付ライブラリから削除されてbundled Gem になりました [feature:12160][ruby-core:74239]
      <https://github.com/ruby/xmlrpc>が新しいリポジトリです。

  - Zlib
    - `Zlib.gzip`, `Zlib.gunzip` を追加 [feature:13020]

### C API の更新

  - ruby_show_version() will no longer exits the process, if
    RUBY_SHOW_COPYRIGHT_TO_DIE is set to 0.  This will be the default in
    the future.

  - rb_gc_adjust_memory_usage() [Feature #12690]

### サポートするプラットフォームの変更

  - FreeBSD < 4 はもうサポートしていません

### 実装の改善

  - いくつかの条件で [x,y].max と [x,y].min が一時的な配列を生成しないよう最適化されました。
    Math.max(x, y) と書くようなほとんどのカジュアルで実際にありそうなユースケースで効果があります。
    具体的な条件は実装の詳細ですが以下の通りです:
    - 配列リテラルに splat が含まれないこと
    - must have at least one expression but literal
    - 配列の長さが0x100(256)以下であること
    - Array#max や Array#min が再定義されていないこと

  - スレッドのデッドロックを検知するとバックトレースと依存関係を出力します [feature:8214]

  - st_table (st.c) 内部のデータ構造が改善されました [feature:12142]

  - Rational は大幅に最適化されました [feature:12484]

### その他の変更

  - ChangeLogファイルはリポジトリから削除されました。
    Subversion にあるコミットメッセージから make dist によって生成されます。
    人々はGitスタイルのコミットメッセージに従うべきです。
    以下を参照してください。<https://git-scm.com/book/en/v2/Distributed-Git-Contributing-to-a-Project>
    [feature:12283]
