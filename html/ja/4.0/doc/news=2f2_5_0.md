# NEWS for Ruby 2.5.0

このドキュメントは前回リリース以降のバグ修正を除くユーザーに影響のある機能の変更のリストです。

それぞれのエントリーは参照情報があるため短いです。
十分な情報と共に書かれた全ての変更のリストは ChangeLog ファイルか bugs.ruby-lang.org の issue を参照してください。

## 2.4.0 以降の変更

### 言語仕様の変更

  - トップレベルの定数参照を削除しました  [feature:11547]
  - do/end ブロック内部で rescue/else/ensure を書けるようになりました [feature:12906]
  - 文字列の式展開内部の暗黙の to_s 呼び出しにも refinements が影響するようになりました [feature:13812]

### 組み込みクラスの更新

  - [Array](../class/Array.md)
    - [Array#append](../method/Array/i/append.md) を追加 [feature:12746]
    - [Array#prepend](../method/Array/i/prepend.md) を追加 [feature:12746]

  - `Data`
    - 非推奨になりました。C拡張のベースクラスでしたが、Rubyレベルに公開するのをやめました。[feature:3072]

  - [Exception](../class/Exception.md)
    - [Exception#full_message](../method/Exception/i/full_message.md) を追加 [feature:14141] [実験的]
      例外の文字列表現を取得します。その文字列は捕捉されない例外をRubyが表示しているのと同じ方法でフォーマットされます。

  - [Dir](../class/Dir.md)
    - [Dir.glob](../method/Dir/s/glob.md) :base というキーワード引数を追加しました [feature:13056]
    - [Dir.chdir](../method/Dir/s/chdir.md) (ブロックなしで呼び出した場合), [Dir.open](../method/Dir/s/open.md), [Dir.new](../method/Dir/s/new.md), [Dir.mkdir](../method/Dir/s/mkdir.md), [Dir.rmdir](../method/Dir/s/rmdir.md),
      [Dir.empty?](../method/Dir/s/empty=3f.md) はGVLを解放するようになりました
    - [Dir.children](../method/Dir/s/children.md) を追加  [feature:11302]
    - [Dir.each_child](../method/Dir/s/each_child.md) を追加 [feature:11302]

  - [Enumerable](../class/Enumerable.md)
    - [Enumerable#any?](../method/Enumerable/i/any=3f.md), [Enumerable#all?](../method/Enumerable/i/all=3f.md), [Enumerable#none?](../method/Enumerable/i/none=3f.md), [Enumerable#one?](../method/Enumerable/i/one=3f.md)
      がブロックを省略して1つの引数を受け取ることができるようになりました [feature:11286]

  - [File](../class/File.md)
    - [File.open](../method/File/s/open.md) :newline オプションを指定するとテキストモードになります [bug:13350]
    - [File#path](../method/File/i/path.md) は[File::Constants::TMPFILE](../method/File=3a=3aConstants/c/TMPFILE.md)付きで開いたファイルに対して IOError を発生させます
      [feature:13568]
    - [File.stat](../method/File/s/stat.md), [File.exist?](../method/File/s/exist=3f.md) など rb_stat() を使用しているメソッドではGVLを解放するようになりました
      [bug:13941]
    - [File.rename](../method/File/s/rename.md) GVL を解放するようになりました [feature:13951]
    - [File::Stat#atime](../method/File=3a=3aStat/i/atime.md), [File::Stat#mtime](../method/File=3a=3aStat/i/mtime.md), [File::Stat#ctime](../method/File=3a=3aStat/i/ctime.md)
      Windows 8 以降でタイムスタンプの分数表現をサポートしました [feature:13726]
    - [File::Stat#ino](../method/File=3a=3aStat/i/ino.md), [File.identical?](../method/File/s/identical=3f.md)
      Windows 8.1 以降で、ReFSの128bitのinoをサポートしました [feature:13731]
    - [File.readable?](../method/File/s/readable=3f.md), [File.readable_real?](../method/File/s/readable_real=3f.md), [File.writable?](../method/File/s/writable=3f.md), [File.writable_real?](../method/File/s/writable_real=3f.md),
      [File.executable?](../method/File/s/executable=3f.md), [File.executable_real?](../method/File/s/executable_real=3f.md), [File.mkfifo](../method/File/s/mkfifo.md), [File.readlink](../method/File/s/readlink.md),
      [File.truncate](../method/File/s/truncate.md), [File#truncate](../method/File/i/truncate.md), [File.chmod](../method/File/s/chmod.md), [File.lchmod](../method/File/s/lchmod.md), [File.chown](../method/File/s/chown.md),
      [File.lchown](../method/File/s/lchown.md), [File.unlink](../method/File/s/unlink.md), [File.utime](../method/File/s/utime.md), [File.lstat](../method/File/s/lstat.md) はGVLを解放するようになりました
    - [File.lutime](../method/File/s/lutime.md) を追加  [feature:4052]

  - [Hash](../class/Hash.md)
    - [Hash#transform_keys](../method/Hash/i/transform_keys.md) を追加 [feature:13583]
    - [Hash#transform_keys!](../method/Hash/i/transform_keys=21.md) を追加 [feature:13583]
    - [Hash#slice](../method/Hash/i/slice.md) を追加 [feature:8499]

  - [IO](../class/IO.md)
    - [IO.copy_stream](../method/IO/s/copy_stream.md) は [man:copy_file_range(2)] を使うようになりました。また、その実装が使えない場合は他の実装へフォールバックするようにしました [feature:13867]
    - [IO#pread](../method/IO/i/pread.md) を追加 [feature:4532]
    - [IO#pwrite](../method/IO/i/pwrite.md) を追加 [feature:4532]
    - [IO#write](../method/IO/i/write.md) 複数の引数を受け取れるようになりました [feature:9323]

  - [IOError](../class/IOError.md)
    - [IO#close](../method/IO/i/close.md) 以前は"stream closed"というメッセージの例外が発生していましたが、"stream closed in another thread"というメッセージに改良しました。
      このメッセージはユーザーにとってわかりやすいでしょう。 [bug:13405]

  - [Integer](../class/Integer.md)
    - [Integer#round](../method/Integer/i/round.md), [Integer#floor](../method/Integer/i/floor.md), [Integer#ceil](../method/Integer/i/ceil.md), [Integer#truncate](../method/Integer/i/truncate.md) は常に [Integer](../class/Integer.md) を返すようになりました
      [bug:13420]
    - [Integer#pow](../method/Integer/i/pow.md) を追加 [feature:12508] [feature:11003]
    - [Integer#allbits?](../method/Integer/i/allbits=3f.md), [Integer#anybits?](../method/Integer/i/anybits=3f.md), [Integer#nobits?](../method/Integer/i/nobits=3f.md) を追加 [feature:12753]
    - [Integer.sqrt](../method/Integer/s/sqrt.md) を追加 [feature:13219]

  - [Kernel](../class/Kernel.md)
    - [Object#yield_self](../method/Object/i/yield_self.md) を追加  [feature:6721]
    - [Kernel?.pp](../method/Kernel/m/pp.md) をrequireなしで使えるようにしました  [feature:14123]
    - [Kernel?.warn](../method/Kernel/m/warn.md) :uplevel というキーワード引数を追加しました  [feature:12882]

  - [Method](../class/Method.md)
    - [Method#===](../method/Method/i/=3d=3d=3d.md) は [Proc#===](../method/Proc/i/=3d=3d=3d.md)と同じように[Method#call](../method/Method/i/call.md)を呼び出します [feature:14142]

  - [Module](../class/Module.md)
    - [Module#attr](../method/Module/i/attr.md), [Module#attr_accessor](../method/Module/i/attr_accessor.md), [Module#attr_reader](../method/Module/i/attr_reader.md), [Module#attr_writer](../method/Module/i/attr_writer.md) はパブリックメソッドになりました [feature:14132]
    - [Module#define_method](../method/Module/i/define_method.md), [Module#alias_method](../method/Module/i/alias_method.md), [Module#undef_method](../method/Module/i/undef_method.md), [Module#remove_method](../method/Module/i/remove_method.md) はパブリックメソッドになりました [feature:14133]

  - [Numeric](../class/Numeric.md)
    - [Numeric#step](../method/Numeric/i/step.md) は > で0と比較できない引数が与えられたときcoerce内部で発生したエラーを隠蔽しないようになりました。
      [feature:7688]
    - 数値の比較メソッド(<,<=,>=,>)は、coerceメソッドで発生した例外を隠蔽しなくなりました。
      coerceがnilを返す場合、変換は不可能です。[feature:7688]

  - [Process](../class/Process.md)
    - [man:getrusage(2)] が存在する場合 [Process?.times](../method/Process/m/times.md) の精度を改良しました [feature:11952]
    - [Process.last_status](../method/Process/s/last_status.md) を追加。[m:$?] と同じです [feature:14043]

  - [Range](../class/Range.md)
    - [Range.new](../method/Range/s/new.md) no longer hides exceptions when comparing begin and
      end with #<=> and raise a "bad value for range" ArgumentError
      but instead lets the exception from the #<=> call go through.
      [feature:7688]

  - [Regexp](../class/Regexp.md)
    -  Onigmo 6.1.3-669ac9997619954c298da971fcfacccf36909d05 に更新
      - 非包含オペレータ(absence operator)をサポート <https://github.com/k-takata/Onigmo/issues/82>
      - Support new 5 emoji-related Unicode character properties

  - [RubyVM::InstructionSequence](../class/RubyVM=3a=3aInstructionSequence.md)
    - `RubyVM::InstructionSequence#each_child` を追加
    - `RubyVM::InstructionSequence#trace_points` を追加

  - [String](../class/String.md)
    - [String#-@](../method/String/i/=2d=40.md) はフリーズされていない文字列の重複を排除します。
      互換性のため、既にフリーズされている文字列には何もしません。  [feature:13077]
    - -"literal" ([String#-@](../method/String/i/=2d=40.md)) は同じオブジェクトを返すように最適化しました。
      (Ruby 2.1以降の "literal".freeze と同じです) [feature:13295]
    - [String#casecmp](../method/String/i/casecmp.md), [String#casecmp?](../method/String/i/casecmp=3f.md) に文字列でない引数を与えた場合、TypeErrorを発生させずにnilを返すようにしました
      [bug:13312]
    - [String#start_with?](../method/String/i/start_with=3f.md) は正規表現を受け取れるようになりました [feature:13712]
    - [String#delete_prefix](../method/String/i/delete_prefix.md), [String#delete_prefix!](../method/String/i/delete_prefix=21.md) を追加 [feature:12694]
    - [String#delete_suffix](../method/String/i/delete_suffix.md), [String#delete_suffix!](../method/String/i/delete_suffix=21.md) を追加 [feature:13665]
    - [String#each_grapheme_cluster](../method/String/i/each_grapheme_cluster.md), [String#grapheme_clusters](../method/String/i/grapheme_clusters.md) を追加。結合文字を列挙します。
      [feature:13780]
    - [String#undump](../method/String/i/undump.md) を追加。[String#dump](../method/String/i/dump.md)で出力した文字列を元に戻します。[feature:12275]

  - [Struct](../class/Struct.md)
    - [Struct.new](../method/Struct/s/new.md) は :keyword_init というキーワード引数を受け取り、メンバーをキーワード引数で初期化できるようになりました。
      [feature:11925]

  - [Regexp](../class/Regexp.md)/[String](../class/String.md): Unicodeのバージョンを 9.0.0 から 10.0.0 に更新しました。 [feature:13685]

  - [Thread](../class/Thread.md)
    - [Thread#name=](../method/Thread/i/name=3d.md) で設定した名前が Windows 10 で見えるようになりました
    - [Thread#fetch](../method/Thread/i/fetch.md) を追加 [feature:13009]
    - [Thread.report_on_exception](../method/Thread/s/report_on_exception.md) のデフォルト値がtrueになりました。
      スレッドの終了時に捕捉していない例外の情報を $stderr に出力します。 [feature:14143]

  - [Time](../class/Time.md)
    - [Time.at](../method/Time/s/at.md) は第2引数の精度を指定するための第3引数を指定できるようになりました
      [feature:13919]

  - [KeyError](../class/KeyError.md)
    - [KeyError#receiver](../method/KeyError/i/receiver.md) を追加 [feature:12063]
    - [KeyError#key](../method/KeyError/i/key.md) を追加 [feature:12063]

  - [FrozenError](../class/FrozenError.md)
    - 新しい例外クラスです [feature:13224]

### 標準添付ライブラリの更新

  - [bigdecimal](../library/bigdecimal.md)
    - BigDecimal 1.3.4 に更新
    - [BigDecimal::VERSION](../method/BigDecimal/c/VERSION.md) を追加
    - 非推奨(1.4.0で削除予定)
      - BigDecimal.new
      - BigDecimal.ver
    - [BigDecimal#clone](../method/BigDecimal/i/clone.md) と [BigDecimal#dup](../method/BigDecimal/i/dup.md) は新しいインスタンスを作らなくなりました。selfを返します。

  - [coverage](../library/coverage.md)
    - ブランチカバレッジとメソッドカバレッジの計測をサポートしました [feature:13901]
      この新機能と一緒にテストスイートを実行すると、テストによって実行された条件分岐やメソッドについて知ることができます。
      テストスイートのカバレッジをより厳密に評価できます。
      [Coverage.start](../method/Coverage/s/start.md) に与えるオプションによって計測する対象を指定できます。
      ```ruby
      Coverage.start(lines: true, branches: true, methods: true)
      ```
    - Rubyで書かれたファイルをいくつか読み込んでから、[Coverage.result](../method/Coverage/s/result.md) を使って結果を取得できます。
      ```ruby
      Coverage.result
      #=> { "/path/to/file.rb"=>
      #     { :lines => [1, 2, 0, nil, ...],
      #       :branches =>
      #         { [:if, 0, 2, 1, 6, 4] =>
      #             { [:then, 1, 3, 2, 3, 8] => 0,
      #               [:else, 2, 5, 2, 5, 8] => 2
      #             }
      #         },
      #       :methods => {
      #          [Object, :foo, 1, 0, 7, 3] => 2
      #       }
      #     }
      #   }
      ```
    - ラインカバレッジについての変更はありません。ラインカバレッジの結果はただの数値の配列です。
      数値の入っている要素は実行された行を表し、その数値は実行回数を意味します。
      nilの入った要素はカバレッジに関係のない行を意味します。
    - ブランチカバレッジの結果はこのようになります:
      ```text
              { (jump base) => { (jump target) => (counter) } }
      ```
    - jump base と jump target にはフォーマットがあります:
      ```text
              [type, unique-id, start lineno, start column, end lineno, end column]
      ```
    - 例えば [:if, 0, 2, 1, 6, 4] は、if式が2行目の1桁目から6行目の4桁目まで、と読みます。
      [:then, 1, 3, 2, 3, 8] は、then節が3行目の2桁目から3行目の8桁目まで、と読みます。
      なお、行番号は1から始まり、桁番号は0から始まります。
      よって、上記の例ではifから最初のthen節は実行されておらず、else節は2回実行されています。
    - メソッドカバレッジの場合:
      ```text
              { (method key) => (counter) }
      ```
    - メソッドキーにはフォーマットがあります:
      ```text
              [class, method-name, start lineno, start column, end lineno, end column]
      ```
    - 例えば [Object, :foo, 1, 0, 7, 3] は Object#foo は1行目の0桁目から7行目の3桁目までで定義されている、と読みます。
      上記の例では Object#foo は2回実行されています。
    - Note: 互換性のため、[Coverage.start](../method/Coverage/s/start.md) にオプションを与えない場合は、ラインカバレッジのみを計測します。
      また [Coverage.result](../method/Coverage/s/result.md) も旧フォーマットを返します。
      ```ruby
      Coverage.result
      #=> { "/path/to/file.rb"=> [1, 2, 0, nil, ...] }
      ```

  - [drb](../library/drb.md)
    - `ACL::ACLEntry.new` は IPAddr::InvalidPrefixError を抑制しなくなりました

  - [erb](../library/erb.md)
    - [ERB#result_with_hash](../method/ERB/i/result_with_hash.md) を追加。
      ハッシュで与えられたローカル変数とともにテンプレートを描画します。[feature:8631]
    - erbコマンドのテンプレートファイルのエンコーディングのデフォルトは、ASCII-8BITからUTF-8に変更されました。
      [bug:14095]
    - トリムモードが指定されているときキャリッジリターンを正しくトリムするようにしました。
      Windowsで重複した改行を削除するようになりました。[bug:5339] [bug:11464]

  - [ipaddr](../library/ipaddr.md)
    - IPAddr は不正なアドレスマスクを受けいれないようになりました [bug:13399]
    - [IPAddr#ipv4_compat](../method/IPAddr/i/ipv4_compat.md), [IPAddr#ipv4_compat?](../method/IPAddr/i/ipv4_compat=3f.md) は非推奨になりました [bug:13769]
    - [IPAddr#prefix](../method/IPAddr/i/prefix.md) を追加
    - `IPAddr#loopback?` を追加
    - `IPAddr#private?` を追加 [feature:11666]
    - `IPAddr#link_local?` を追加 [feature:10912]

  - [irb](../library/irb.md)
    - バックトレースとエラーメッセージを逆順で表示するようにしました [feature:8661] [実験的]
    - binding.irb を実行したときに自動的に irb を読み込みます [bug:13099] [実験的]
    - binding.irb を実行したときに周囲のソースコードを表示します [feature:14124]

  - [matrix](../library/matrix.md)
    - [Matrix.combine](../method/Matrix/s/combine.md), [Matrix#combine](../method/Matrix/i/combine.md) を追加 [feature:10903]
    - [Matrix#hadamard_product](../method/Matrix/i/hadamard_product.md), [Matrix#entrywise_product](../method/Matrix/i/entrywise_product.md) を追加

  - [net/http](../library/net=2fhttp.md)
    - [Net::HTTP.new](../method/Net=3a=3aHTTP/s/new.md) が no_proxy パラメータをサポートしました [feature:11195]
    - `Net::HTTP#min_version` `Net::HTTP#max_version` を追加 [feature:9450]
    - HTTP status を表すクラスをいくつか追加しました
    - `Net::HTTP::STATUS_CODES` を追加。HTTPのステータスコードから文字列表現へのハッシュです。 [misc:12935]
    - [Net::HTTP#proxy_user](../method/Net=3a=3aHTTP/i/proxy_user.md), [Net::HTTP#proxy_pass](../method/Net=3a=3aHTTP/i/proxy_pass.md) は 環境変数 http_proxy を反映するようになりました。
      ただし、システムの環境変数がマルチユーザーセーフである場合のみ。[bug:12921]

  - [open-uri](../library/open=2duri.md)
    - [URI.open](../method/URI/s/open.md) を open-uri の Kernel.open の別名として追加しました。
      将来 open-uri の Kernel.open は非推奨になります。

  - [openssl](../library/openssl.md)
    - Ruby/OpenSSLのバージョンを2.0から2.1に更新しました。変更内容はext/openssl/History.mdの"Version 2.1.0"セクションにあります。

  - [pathname](../library/pathname.md)
    - [Pathname#glob](../method/Pathname/i/glob.md) を追加 [feature:7360]

  - [psych](../library/psych.md)
    - Psych 3.0.2 に更新しました
      - Convert fallback option to a keyword argument
        <https://github.com/ruby/psych/pull/342>
      - Add :symbolize_names option to Psych.load, Psych.safe_load like JSON.parse
        <https://github.com/ruby/psych/pull/333>, <https://github.com/ruby/psych/pull/337>
      - Add Psych::Handler#event_location
        <https://github.com/ruby/psych/pull/326>
      - Make frozen string literal = true
        <https://github.com/ruby/psych/pull/320>
      - Preserve time zone offset when deserializing times
        <https://github.com/ruby/psych/pull/316>
      - Remove deprecated method aliases for syck gem
        <https://github.com/ruby/psych/pull/312>

  - [rbconfig](../library/rbconfig.md)
    - [RbConfig::LIMITS](../method/RbConfig/c/LIMITS.md) is added to provide the limits of C types.
      This is available when rbconfig/sizeof is loaded.

  - [ripper](../library/ripper.md)
    - `Ripper::EXPR_BEG` and so on for `Ripper#state`.
    - `Ripper#state` を追加。スキャナーの状態を伝えるためです。[feature:13686]

  - [rdoc](../library/rdoc.md)
    - RDoc 6.0.1 に更新
      - Replace IRB based lexer with Ripper.
        - <https://github.com/ruby/rdoc/pull/512>
        - This much improves the speed of generating documents.
        - It also facilitates supporting new syntax in the future.
      - Support many new syntaxes of Ruby from the past few years.
      - Use "frozen_string_literal: true".
        This reduces document generation time by 5%.
      - Support did_you_mean.

  - [rubygems](../library/rubygems.md)
    - Rubygems 2.7.3 に更新
      - <https://blog.rubygems.org/2017/11/28/2.7.3-released.html>
      - <https://blog.rubygems.org/2017/11/08/2.7.2-released.html>
      - <https://blog.rubygems.org/2017/11/03/2.7.1-released.html>
      - <https://blog.rubygems.org/2017/11/01/2.7.0-released.html>
      - <https://blog.rubygems.org/2017/10/09/2.6.14-released.html>
      - <https://blog.rubygems.org/2017/08/27/2.6.13-released.html>

  - [securerandom](../library/securerandom.md)
    - [SecureRandom.alphanumeric](../method/SecureRandom/s/alphanumeric.md) を追加

  - `set`
    - [Set#to_s](../method/Set/i/to_s.md) を [Set#inspect](../method/Set/i/inspect.md) の別名として追加 [feature:13676]
    - [Set#===](../method/Set/i/=3d=3d=3d.md) を [Set#include?](../method/Set/i/include=3f.md) の別名として追加 [feature:13801]
    - [Set#reset](../method/Set/i/reset.md) [feature:6589]

  - [stringio](../library/stringio.md)
    - [StringIO#write](../method/StringIO/i/write.md) は複数の引数を受け取れるようになりました

  - [strscan](../library/strscan.md)
    - `StringScanner#size`, `StringScanner#captures`, `StringScanner#values_at` を追加  [feature:836]

  - [uri](../library/uri.md)
    - Relative path operations no longer collapse consecutive slashes to a single slash. [bug:8352]

  - [webrick](../library/webrick.md)
    - Server Name Indication (SNI) サポートを追加 [feature:13729]
    - `WEBrick::HTTPResponse#send_body_proc` を追加 [feature:855]
    - RubyGem としてリリース [feature:13173]
    - 意図しない振舞いを避けるため [Kernel?.open](../method/Kernel/m/open.md) を使用するのをやめました [misc:14216]

  - [zlib](../library/zlib.md)
    - [Zlib::GzipWriter#write](../method/Zlib=3a=3aGzipWriter/i/write.md) は複数の引数を受け取れるようになりました

### 互換性 (機能追加とバグ修正以外)

  - [BasicSocket](../class/BasicSocket.md)
    - `BasicSocket#read_nonblock` と `BasicSocket#write_nonblock` で
      副作用として O_NONBLOCK フラグをセットするのをやめました(Linux のみ)
      [feature:13362]

  - [Random](../class/Random.md)
    - Random.raw_seed は [Random.urandom](../method/Random/s/urandom.md) に名前を変更しました。
      シードを必要としない用途で有用です。[bug:9569]

  - [Socket](../class/Socket.md)
    - [Socket::Ifaddr#vhid](../method/Socket=3a=3aIfaddr/i/vhid.md) を追加 [feature:13803]

  - [ConditionVariable](../class/ConditionVariable.md), [Queue](../class/Queue.md), [SizedQueue](../class/SizedQueue.md) を速度向上のため再実装しました。
    これらのクラスはStructのサブクラスではなくなりました。[feature:13552]

### 標準添付ライブラリの互換性(機能追加とバグ修正を除く)

  - Gemification
    - 以下の標準添付ライブラリをdefault gemsに変更しました
      - cmath
      - csv
      - date
      - dbm
      - etc
      - fcntl
      - fiddle
      - fileutils
      - gdbm
      - ipaddr
      - scanf
      - sdbm
      - stringio
      - strscan
      - webrick
      - zlib

  - [Logger](../class/Logger.md)
    - Logger.new("| command") は意図せず、コマンドを実行していましたが、禁止されました。
      Logger#initialize の引数は仕様としてファイル名としてのみ扱うようになりました。
      [bug:14212]

  - [Net::HTTP](../class/Net=3a=3aHTTP.md)
    - [Net::HTTP#start](../method/Net=3a=3aHTTP/i/start.md) の第3引数のデフォルト値を :ENV にしました。 [bug:13351]
      これを避けるには明示的に nil を与えてください。

  - mathn.rb
    - 標準添付ライブラリから削除しました [feature:10169]

  - Rubygems
    - "ubygems.rb" というファイルを標準添付ライブラリから削除しました。Ruby 1.9 から不要でした。

### C APIの更新

### Supported platform の変更

  - NaClサポートを削除しました
    - <https://issues.chromium.org/issues/40317184#comment161>

### 実装の改善

  - (これは「ユーザーに見える機能の変更」ではないが) [Hash](../class/Hash.md)クラスのhashメソッドのアルゴリズムを SipHash13 にしました
    [feature:13017]

  - [SecureRandom](../class/SecureRandom.md) が [OpenSSL](../class/OpenSSL.md) の提供する乱数ソースよりもOSの提供する乱数ソースを優先するようにしました [bug:9569]

  - [Mutex](../class/Mutex.md) をより小さくより速く書き直しました [feature:13517]

  - lazy Proc allocation というテクニックでブロックをメソッドの引数として渡したときの性能が向上しました
    [feature:14045]

  - [TracePoint](../class/TracePoint.md)のためにtrace命令の変わりに命令の動的書き換えを使用するようにしました
    [feature:14104]

  - [ERB](../class/ERB.md) がテンプレートから生成するコードはRuby 2.4 よりも2倍速くなりました

### その他の変更

  - $stderrが変更されておらず出力先がttyの場合、バックトレースとエラーの表示される順序を逆順にしました。
    [feature:14140] [実験的]

  - $stderrが変更されておらず出力先がttyの場合、エラーメッセージを太字と下線で装飾するようにしました。
    [feature:14140] [実験的]

  - configure オプション --with-ext はその引数を強制できるようになりました。
    例えば ./configure --with-ext=openssl,+ を実行すると、openssl は必ずビルドされた状態になることが保証されます。
    その他の拡張ライブラリは、デフォルトの挙動となります。もし、opensslのビルドに失敗した場合は、全体のビルドが失敗します。
    もし ",+" を末尾に付けない場合は、openssl 以外はビルドされません。[feature:13302]
