# NEWS for Ruby 2.6.0

このドキュメントは前回リリース以降のバグ修正を除くユーザーに影響のある機能の変更のリストです。

それぞれのエントリーは参照情報があるため短いです。
十分な情報と共に書かれた全ての変更のリストは ChangeLog ファイルか bugs.ruby-lang.org の issue を参照してください。

## 2.5.0 以降の変更

### 言語仕様の変更

  - $SAFE はプロセスグローバルで扱われることになると共に、0以外を設定した後に0に戻せるようになりました。 [feature:14250]

  - Refinements がブロック引数にも反映されるようになりました。  [feature:14223]

  - Refinements が [Object#public_send](../method/Object/i/public_send.md) にも反映されるようになりました。  [feature:15326]

  - Refinements が [Object#respond_to?](../method/Object/i/respond_to=3f.md) にも反映されるようになりました。  [feature:15327]

  - rescue 節なしの else 節がシンタックスエラーを発生するようになりました。 [実験的] [feature:14606]

  - 定数名の先頭の文字に ASCII 以外の大文字も使えるようになりました。 [feature:13770]

  - 終端なし [Range](../class/Range.md) が導入されました。 終端なし [Range](../class/Range.md) は (0..) や (0...) のように使うことができます。  [feature:12912]
    典型的なユースケースは以下の通りです:
    ```ruby
          ary[1..]                              # ary[1..-1] と同じ
          (1...).each {|index| block }          # index が 1 から始まる無限ループ
          ary.zip(1..) {|elem, index| block }   # ary.each.with_index(1) { }
    ```
  - キーワード引数のハッシュに Symbol 以外のキーが含まれると例外が発生するようになりました。

  - "shadowing outer local variable" という警告が削除されました。  [feature:12490]
    以下のようなコードを警告なしに書くことができます:
    ```ruby
          user = users.find {|user| cond(user) }
    ```
  - 例外が捕捉されず、バックトレースとエラーメッセージが表示されるときに、
    例外の [Exception#cause](../method/Exception/i/cause.md) も表示されるようになりました。 [feature:8257]

  - フリップフロップが非推奨になりました。 [feature:5400]

### 組み込みクラスの更新

  - [Array](../class/Array.md)
    - 新規メソッド
      - [Array#union](../method/Array/i/union.md) と [Array#difference](../method/Array/i/difference.md) [feature:14097]
    - 変更されたメソッド
      - [Array#to_h](../method/Array/i/to_h.md) はブロックを受け取りキーと値のペアを新しいキーと値に変換できるようになりました。 [feature:15143]
    - 別名
      - [Array#filter](../method/Array/i/filter.md) が [Array#select](../method/Array/i/select.md) の別名として追加されました。 [feature:13784]
      - [Array#filter!](../method/Array/i/filter=21.md) が [Array#select!](../method/Array/i/select=21.md) の別名として追加されました。 [feature:13784]

  - [Binding](../class/Binding.md)
    - 新規メソッド
      - [Binding#source_location](../method/Binding/i/source_location.md) 追加 [feature:14230]
        - bindingのソースコード上の位置を __FILE__ と __LINE__ の二要素配列として返します。
          従来でも eval("[__FILE__, __LINE__]", binding) とすることでこれらの情報は得られましたが、
          将来的に [Kernel?.eval](../method/Kernel/m/eval.md) は binding のソースコード行を無視する変更を予定しているため [bug:4352]、
          この新しいメソッドを用いることが今後は推奨されます。

  - [Dir](../class/Dir.md)
    - 新規メソッド
      - [Dir#each_child](../method/Dir/i/each_child.md) と [Dir#children](../method/Dir/i/children.md) 追加 [feature:13969]

  - [Enumerable](../class/Enumerable.md)
    - 新規メソッド
      - [Enumerable#chain](../method/Enumerable/i/chain.md) はレシーバと引数のそれぞれの要素を順番にイテレートする
        [Enumerator::Chain](../class/Enumerator=3a=3aChain.md) オブジェクトを返します。 [feature:15144]
    - 変更されたメソッド
      - [Enumerable#to_h](../method/Enumerable/i/to_h.md) はブロックを受け取りキーと値のペアを新しいキーと値に変換できるようになりました。 [feature:15143]
    - 別名
      - [Enumerable#filter](../method/Enumerable/i/filter.md) が [Enumerable#select](../method/Enumerable/i/select.md) の別名として追加されました。 [feature:13784]

  - [Enumerator::ArithmeticSequence](../class/Enumerator=3a=3aArithmeticSequence.md)
    - 等差数列(隣接する項が共通の差(公差)を持つ数列)のジェネレーターを表現する新しいクラスです。
      Python のスライスのようなものを表現するために使えます。
      このクラスのインスタンスは [Numeric#step](../method/Numeric/i/step.md) や [Range#step](../method/Range/i/step.md) で得られます。

  - [Enumerator::Chain](../class/Enumerator=3a=3aChain.md)
    - 1個の Enumerator で複数の Enumerable の連鎖を表現する新しいクラスです。
      [Enumerable#chain](../method/Enumerable/i/chain.md) や [Enumerator#+](../method/Enumerator/i/=2b.md) で生成されます。

  - [Enumerator::Lazy](../class/Enumerator=3a=3aLazy.md)
    - 別名
      - [Enumerator::Lazy#filter](../method/Enumerator=3a=3aLazy/i/filter.md) が [Enumerator::Lazy#select](../method/Enumerator=3a=3aLazy/i/select.md) の別名として追加されました。 [feature:13784]

  - [Enumerator](../class/Enumerator.md)
    - 新規メソッド
      - [Enumerator#+](../method/Enumerator/i/=2b.md) はレシーバの要素とオペランドの要素を順番にイテレートする
        Enumerator オブジェクトを返します。 [feature:15144]

  - [ENV](../class/ENV.md)
    - 変更されたメソッド
      - [ENV.to_h](../method/ENV/s/to_h.md) はブロックを受け取り、環境変数名と値のペアを新しいキーと値に変換できるようになりました。 [feature:15143]

  - [Exception](../class/Exception.md)
    - 新規オプション
      - [Exception#full_message](../method/Exception/i/full_message.md) が :highlight と :order を受け付けるようになりました。 [bug:14324]

  - [Hash](../class/Hash.md)
    - 変更されたメソッド
      - [Hash#merge](../method/Hash/i/merge.md), [Hash#merge!](../method/Hash/i/merge=21.md), [Hash#update](../method/Hash/i/update.md) が引数を複数受け付けるようになりました。 [feature:15111]
      - [Hash#to_h](../method/Hash/i/to_h.md) はブロックを受け取りキーと値のペアを新しいキーと値に変換できるようになりました。 [feature:15143]
    - 別名
      - [Hash#filter](../method/Hash/i/filter.md) が [Hash#select](../method/Hash/i/select.md) の別名として追加されました。 [feature:13784]
      - [Hash#filter!](../method/Hash/i/filter=21.md) が [Hash#select!](../method/Hash/i/select=21.md) の別名として追加されました。 [feature:13784]

  - [IO](../class/IO.md)
    - 新規オプション
      - 排他的ファイルオープンを表すモード文字 'x' が追加されました。 [feature:11258]

  - [Kernel](../class/Kernel.md)
    - 別名
      - [Object#then](../method/Object/i/then.md) が [Object#yield_self](../method/Object/i/yield_self.md) の別名として追加されました。 [feature:14594]
    - 新規オプション
      - [Kernel?.Complex](../method/Kernel/m/Complex.md), [Kernel?.Float](../method/Kernel/m/Float.md), [Kernel?.Integer](../method/Kernel/m/Integer.md),
        [Kernel?.Rational](../method/Kernel/m/Rational.md) にエラー処理方法を指定する :exception オプションが
        追加されました。 [feature:12732]
      - [Kernel?.system](../method/Kernel/m/system.md) に失敗時に例外を発生する :exception オプションが
        追加されました。 [feature:14386]
    - 非互換な変更
      - [Kernel?.system](../method/Kernel/m/system.md) と [Kernel?.exec](../method/Kernel/m/exec.md) が非標準にファイルディスクリプタを閉じなくなりました。
        (:close_others オプションのデフォルトが false になりまりました。
        しかし、引き続き Ruby 自体が作成するディスクリプタに FD_CLOEXEC フラグは設定されます。) [misc:14907]

  - [KeyError](../class/KeyError.md)
    - 新規オプション
      - [KeyError.new](../method/KeyError/s/new.md) に :receiver と :key にオプションが追加されて
        Ruby コードからも設定できるようになりました。 [feature:14313]

  - [Method](../class/Method.md)
    - 新規メソッド
      - 関数合成用に [Method#<<](../method/Method/i/=3c=3c.md) と [Method#>>](../method/Method/i/=3e=3e.md) が追加されました。 [feature:6284]

  - [Module](../class/Module.md)
    - 変更されたメソッド
      - [Module#method_defined?](../method/Module/i/method_defined=3f.md), [Module#private_method_defined?](../method/Module/i/private_method_defined=3f.md),
        [Module#protected_method_defined?](../method/Module/i/protected_method_defined=3f.md) が省略可能な第2引数を受け取るように
        なりました。 true (デフォルト値) のとき、祖先のモジュールやクラスもチェックします。
        それ以外の場合はそのクラス自身のみチェックします。 [feature:14944]

  - [NameError](../class/NameError.md)
    - 新規オプション
      - [NameError.new](../method/NameError/s/new.md) に :receiver オプションが追加されて
       Ruby コードからも設定できるようになりました。 [feature:14313]

  - [NilClass](../class/NilClass.md)
    - 新規メソッド
      - 互換性のため、[NilClass#=~](../method/NilClass/i/=3d=7e.md) が追加されました。 [feature:15231]

  - [NoMethodError](../class/NoMethodError.md)
    - 新規オプション
      - [NoMethodError.new](../method/NoMethodError/s/new.md) に :receiver オプションが追加されて
        Ruby コードからも設定できるようになりました。 [feature:14313]

  - [Numeric](../class/Numeric.md)
    - 非互換な変更
      - [Numeric#step](../method/Numeric/i/step.md) が [Enumerator](../class/Enumerator.md) クラスのインスタンスではなく
        [Enumerator::ArithmeticSequence](../class/Enumerator=3a=3aArithmeticSequence.md) クラスのインスタンスを返すようになりました。

  - [OpenStruct](../class/OpenStruct.md)
    - 変更されたメソッド
      - [OpenStruct#to_h](../method/OpenStruct/i/to_h.md) はブロックを受け取りキーと値のペアを新しいキーと値に変換できるようになりました。 [feature:15143]

  - [Proc](../class/Proc.md)
    - 新規メソッド
      - 関数合成用に [Proc#<<](../method/Proc/i/=3c=3c.md) と [Proc#>>](../method/Proc/i/=3e=3e.md) が追加されました。 [feature:6284]
    - 非互換な変更
      - [Proc#call](../method/Proc/i/call.md) が [m:$SAFE] を変更しなくなりました。 [feature:14250]

  - [Random](../class/Random.md)
    - 新規メソッド
      - [Random.bytes](../method/Random/s/bytes.md) が追加されました。 [feature:4938]

  - [Range](../class/Range.md)
    - 新規メソッド
      - [Range#%](../method/Range/i/=25.md) が追加されました。 [feature:14697]

    - 非互換な変更
      - [Range#===](../method/Range/i/=3d=3d=3d.md) が [Range#include?](../method/Range/i/include=3f.md) メソッドではなく [Range#cover?](../method/Range/i/cover=3f.md) メソッドを使うようになりました。 [feature:14575]
      - [Range#cover?](../method/Range/i/cover=3f.md) が [Range](../class/Range.md) オブジェクトを受け付けるようになりました。 [feature:14473]
      - [Range#step](../method/Range/i/step.md) が [Enumerator](../class/Enumerator.md) クラスのインスタンスではなく
        [Enumerator::ArithmeticSequence](../class/Enumerator=3a=3aArithmeticSequence.md) クラスのインスタンスを返すようになりました。

  - [Regexp](../class/Regexp.md)/[String](../class/String.md)
      - Unicode のバージョンを 10.0.0 から 11.0.0 に更新しました。 [feature:14802]
        これは書記素クラスタ (/\X/) アルゴリズムの書き換えと [String#downcase](../method/String/i/downcase.md) での
        Georgian MTAVRULI の special-casing を含みます。
      - Update Emoji version from 5.0 to 11.0.0 [feature:14802]

  - [RubyVM::AbstractSyntaxTree](../class/RubyVM=3a=3aAbstractSyntaxTree.md)
    - 新規メソッド
      - [RubyVM::AbstractSyntaxTree.parse](../method/RubyVM=3a=3aAbstractSyntaxTree/s/parse.md) は文字列をパースして AST ノードを返します。 [実験的]
      - [RubyVM::AbstractSyntaxTree.parse_file](../method/RubyVM=3a=3aAbstractSyntaxTree/s/parse_file.md) はファイルをパースして AST ノードを返します。 [実験的]
      - [RubyVM::AbstractSyntaxTree.of](../method/RubyVM=3a=3aAbstractSyntaxTree/s/of.md) は proc やメソッドに対応する AST ノードを返します。 [実験的]

  - [RubyVM](../class/RubyVM.md)
    - 新規メソッド
      - `RubyVM.resolve_feature_path` は "require(feature)" で読み込むファイルを
        特定します。 [実験的] [feature:15230]

  - [String](../class/String.md)
    - [String#crypt](../method/String/i/crypt.md) は非推奨になりました。 [feature:14915]
    - 新機能
      - [String#split](../method/String/i/split.md) はブロックが渡されていたら部分文字列ごとに呼び出すようになりました。 [feature:4780]

  - [Struct](../class/Struct.md)
    - 変更されたメソッド
      - [Struct#to_h](../method/Struct/i/to_h.md) はブロックを受け取りキーと値のペアを新しいキーと値に変換できるようになりました。 [feature:15143]
    - 別名
      - [Struct#filter](../method/Struct/i/filter.md) が [Struct#select](../method/Struct/i/select.md) の別名として追加されました。 [feature:13784]

  - [Time](../class/Time.md)
    - 新機能
      - [Time.new](../method/Time/s/new.md) と [Time#getlocal](../method/Time/i/getlocal.md) が UTC オフセット文字列と同様に
        タイムゾーンオブジェクトを受け付けるようになりました。[Time#+](../method/Time/i/=2b.md),
        [Time#-](../method/Time/i/=2d.md), `Time#succ` もタイムゾーンを維持します。 [feature:14850]

  - [TracePoint](../class/TracePoint.md)
    - 新機能
      - "script_compiled" イベントがサポートされました。 [feature:15287]
    - 新規メソッド
      - [TracePoint#parameters](../method/TracePoint/i/parameters.md) [feature:14694]
      - [TracePoint#instruction_sequence](../method/TracePoint/i/instruction_sequence.md) [feature:15287]
      - [TracePoint#eval_script](../method/TracePoint/i/eval_script.md) [feature:15287]
    - 変更されたメソッド
      - [TracePoint#enable](../method/TracePoint/i/enable.md) がキーワード引数 "target:" と "target_line:" を
        受け付けるようになりました。 [feature:15289]

### 標準添付ライブラリの更新

  - [BigDecimal](../class/BigDecimal.md)
    - バージョン 1.4.0 に更新されました。
      このバージョンは様々な非互換な点を含んでいます。
      詳細は下の互換性についてのセクションを参照してください。
    - 変更されたメソッド
      - [Kernel?.BigDecimal](../method/Kernel/m/BigDecimal.md) は [Kernel?.Float](../method/Kernel/m/Float.md) のように
        キーワード引数 "exception:" を受け付けるようになりました。
    - 最近のバージョンでの変更点に関する注意事項
      以下の情報を元に適切な bigdecimal のバージョンを選んでください。
      - 1.3.5 の `BigDecimal.new` は "exception:" キーワードをサポートしていません。
        "-w" オプションをつけた時に `BigDecimal.new` は非推奨警告を表示します。
      - 1.4.0 の `BigDecimal.new` は "exception:" キーワードをサポートしてます。
        `BigDecimal.new` は常に非推奨警告を表示します。
        `Object#to_d` メソッドは [Kernel?.BigDecimal](../method/Kernel/m/BigDecimal.md) や
        `BigDecimal.new` とは違いがあります。
      - 2.0.0 は Ruby 2.6.0 のリリース後すぐにリリースされる予定です。
        このバージョンは `BigDecimal.new` メソッドを含みません。

  - Bundler
    - Bundler が標準添付ライブラリに追加されました。 [feature:12733]
    - 最新安定版の 1.17.2 が使われます。

  - [Coverage](../class/Coverage.md)
    - oneshot_lines モードが追加されました。 [feature:15022]
      - このモードは「各行が何回実行されたか」の代わりに
       「各行が少なくとも1回実行されたかどうか」をチェックします。
        行ごとのフックは少なくとも1回実行されて、実行後はフックフラグが削除されます。
        言い換えるとオーバーヘッドがなくなります。
    - 新規オプション
      - :oneshot_lines キーワード引数が [Coverage.start](../method/Coverage/s/start.md) に追加されました。
      - :stop と :clear キーワード引数が [Coverage.result](../method/Coverage/s/result.md) に追加されました。
        clear が真の時、カウンターが0クリアされます。
        stop が真の時、カバレッジ計測を停止します。
    - 新規メソッド
      - [Coverage.line_stub](../method/Coverage/s/line_stub.md) はソースコードからラインカバレッジ用のスタブを
        作成するシンプルなヘルパー関数です。

  - [CSV](../class/CSV.md)
    - 3.0.2 に更新されました。
      特に書き出しの高速化を含んでいます。
      書き出しは約2倍高速化しています。
      <https://github.com/ruby/csv/blob/master/NEWS.md> を参照してください。

  - [ERB](../class/ERB.md)
    - 新規オプション
      - :trim_mode と :eoutvar キーワード引数が [ERB.new](../method/ERB/s/new.md) に追加されました。
        最初の引数以外のキーワード引数ではない引数はやんわりと非推奨になり、
        Ruby 2.5 が EOL になった時に削除される予定です。 [feature:14256]
      - erb コマンドの -S オプションは非推奨になりました。次のバージョンで削除予定です。

  - [FileUtils](../class/FileUtils.md)
    - 新規メソッド
      - [FileUtils?.cp_lr](../method/FileUtils/m/cp_lr.md) [feature:4189]

  - [Matrix](../class/Matrix.md)
    - 新規メソッド
      - [Matrix#antisymmetric?](../method/Matrix/i/antisymmetric=3f.md), [Matrix#skew_symmetric?](../method/Matrix/i/skew_symmetric=3f.md)
      - [Matrix#map!](../method/Matrix/i/map=21.md), [Matrix#collect!](../method/Matrix/i/collect=21.md) [feature:14151]
      - [Matrix#\[\]=](../method/Matrix/i/=5b=5d=3d.md)
      - [Vector#map!](../method/Vector/i/map=21.md), [Vector#collect!](../method/Vector/i/collect=21.md)
      - [Vector#\[\]=](../method/Vector/i/=5b=5d=3d.md)

  - [Net::HTTP](../class/Net=3a=3aHTTP.md)
    - 新規オプション
      - :write_timeout キーワード引数が [Net::HTTP.new](../method/Net=3a=3aHTTP/s/new.md) に追加されました。 [feature:13396]
    - 新規メソッド
      - [Net::HTTP#write_timeout](../method/Net=3a=3aHTTP/i/write_timeout.md) と [Net::HTTP#write_timeout=](../method/Net=3a=3aHTTP/i/write_timeout=3d.md) が追加されました。 [feature:13396]
    - 新規定数
      - [Net::HTTPClientException](../class/Net=3a=3aHTTPClientException.md) が追加されて [Net::HTTPServerException](../class/Net=3a=3aHTTPServerException.md) が非推奨になりました。
        誤解を招く名称だったため。 [bug:14688]

  - [NKF](../class/NKF.md)
    - nkf v2.1.5 に更新されました。

  - [Psych](../class/Psych.md)
    - Psych 3.1.0 に更新されました。

  - [RDoc](../class/RDoc.md)
    - 約2倍高速化されました。
    - ファイル生成に SOURCE_DATE_EPOCH を使うようになりました。
    - メソッドの行番号がずれていたのを修正しました。
    - 無視されていた --width, --exclude, --line-numbers を有効にしました。
    - デフォルトのマークアップ記法で ">>>" による引用をサポートしました。
    - TomDoc 記法で "Raises" 行をサポートしました。
    - シンタックスエラー出力を修正しました。
    - 多数のパース中のバグを修正しました。

  - [REXML](../class/REXML.md)
    - REXML 3.1.9 に更新されました。
      <https://github.com/ruby/rexml/blob/master/NEWS.md> を参照してください。
    - いくつかの XPath 実装を改善:
      - concat() 関数: 結合前に全ての引数を文字列化
      - string() 関数: コンテキストノードをサポート
      - string() 関数: 処理命令 (PI) ノードをサポート
      - XPath 2.0 で"*:#{ELEMENT_NAME}" 記法をサポート
    - いくつかの XPath 実装を修正:
      - "//#{ELEMENT_NAME}[#{POSITION}]" の問題
      - string() 関数: function(document) がルート要素の外のノードを返すのを修正
      - "/ #{ELEMENT_NAME} " の問題
      - "/ #{ELEMENT_NAME} [ #{PREDICATE} ]" の問題
      - "/ #{AXIS}::#{ELEMENT_NAME}" の問題
      - "#{N}-#{M}" の問題: 1個以上の空白が "-" の前に必要でした
      - "/child::node()" の問題
      - "#{FUNCTION}()/#{PATH}" の問題
      - "@#{ATTRIBUTE}/parent::" の問題
      - "name(#{NODE_SET})" の問題

  - `RSS`
    - 新規オプション
      - [RSS::Parser.parse](../method/RSS=3a=3aParser/s/parse.md) が [Hash](../class/Hash.md) としてオプションを受け付けるようになりました。
        :validate, :ignore_unknown_element, :parser_class オプションが利用可能です。

  - RubyGems
    - RubyGems 3.0.1 に更新されました。
    - <https://blog.rubygems.org/2018/12/19/3.0.0-released.html>
    - <https://blog.rubygems.org/2018/12/23/3.0.1-released.html>

  - [Set](../class/Set.md)
    - 別名
      - [Set#filter!](../method/Set/i/filter=21.md) が [Set#select!](../method/Set/i/select=21.md) の別名として追加されました。 [feature:13784]

  - [URI](../class/URI.md)
    - 新規定数
      - `URI::File` が file URI スキームを扱うために追加されました。 [feature:14035]

### 互換性 (機能追加とバグ修正を除く)

  - [Dir](../class/Dir.md)
    - [Dir.glob](../method/Dir/s/glob.md) に '\0'区切りのパターンリストを渡すのは非推奨になる予定で、
      今は警告が出ます。 [feature:14643]

  - [File](../class/File.md)
    - `File.read`, `File.binread`, `File.write`, `File.binwrite`,
      `File.foreach`, `File.readlines` はパスがパイプ文字 '|' で始まっていても
      外部コマンドを実行しなくなりました。 [feature:14245]

  - [Object](../class/Object.md)
    - `Object#=~` は非推奨になりました。 [feature:15231]

### 標準添付ライブラリの互換性 (機能追加とバグ修正を除く)

  - 以下の標準添付ライブラリがデフォルト gem になりました。
    - e2mmap
    - forwardable
    - irb
    - logger
    - matrix
    - mutex_m
    - ostruct
    - prime
    - rexml
    - rss
    - shell
    - sync
    - thwait
    - tracer

  - [BigDecimal](../class/BigDecimal.md)
    - 以下のメソッドが削除されました。
      - BigDecimal.allocate
      - BigDecimal.ver
    - 全ての BigDecimal オブジェクトが frozen になりました。 [feature:13984]
    - [Kernel?.BigDecimal](../method/Kernel/m/BigDecimal.md)() が文字列を [Kernel?.Float](../method/Kernel/m/Float.md)() のように
      パースするようになりました。
    - [String#to_d](../method/String/i/to_d.md) がレシーバの文字列を [String#to_f](../method/String/i/to_f.md) のように
      パースするようになりました。
    - `BigDecimal.new` はバージョン 2.0 で削除予定です。

  - [Pathname](../class/Pathname.md)
    - [Pathname#read](../method/Pathname/i/read.md), [Pathname#binread](../method/Pathname/i/binread.md), [Pathname#write](../method/Pathname/i/write.md),
      [Pathname#binwrite](../method/Pathname/i/binwrite.md), [Pathname#each_line](../method/Pathname/i/each_line.md), [Pathname#readlines](../method/Pathname/i/readlines.md) は
      パスがパイプ文字 '|' で始まっていても外部コマンドを実行しなくなりました。
      これは [feature:14245] の続きです。

### 実装の改善

  - [Proc#call](../method/Proc/i/call.md) が高速化しました。
    もう [m:$SAFE] を気にしなくてもよくなったためです。 [feature:14318]
    - [Proc#call](../method/Proc/i/call.md) を何度も使っている lc_fizzbuzz ベンチマークで1.4倍の改善を
      計測できています。 [bug:10212]
  - ブロックパラメーターとして渡された block に対する block.call が高速化されました。 [feature:14330]
    - Ruby 2.5 ではブロック渡しのパフォーマンスを改善されました。 [feature:14045]
    - さらに Ruby 2.6 では渡されたブロックの呼び出しのパフォーマンスが改善されました。

  - JIT (Just-in-time) コンパイラの初期実装が導入されました。 [feature:14235] [実験的]
    - JIT を有効化する --jit コマンドラインオプションが追加されました。
      「--jit-verbose=1」が調査に有用です。
      他のオプションは「ruby --help」を参照してください。
    - 機械語を生成するため、この JIT コンパイラはインタプリタをビルドするのに使用した C コンパイラを使用します。
      現在は GCC, Clang, Microsoft Visual C++ をサポートしています。
    - configure に「--disable-mjit-support」オプションが追加されました。
      これは JIT デバッグのために追加されましたが、JIT 用のヘッダファイルのビルドでエラーが発生した場合、
      回避策としてこのオプションを使うとビルドをスキップできます。
    - JIT で作成されたプロセスとの互換性を維持するために Unix 系のプラットフォームで
      rb_waitpid が再実装されました。 [bug:14867]

  - 生成される VM をより最適化できるようにするために VM 生成スクリプトが一新されました。
    <https://github.com/ruby/ruby/pull/1779>

  - pthread プラットフォームでスレッドキャッシュを有効にしました。
    ([Thread.new](../method/Thread/s/new.md) と [Thread.start](../method/Thread/s/start.md)) [feature:14757]

  - POSIX タイマーのあるプラットフォームでタイマースレッドが取り除かれました。 [misc:14937]

  - Transient Heap (theap) がサポートされました。 [bug:14858] [feature:14989]
    - theap は短命なメモリオブジェクトのための管理されたヒープです。
      例えば小さくて短命の Hash オブジェクトは2倍高速化されました。
    - rdoc ベンチマークでは 6から7%のパフォーマンスの改善を計測できました。

  - コルーチンのネイティブ実装(arm32, arm64, ppc64le, win32, win64, x86, amd64) により
    Fiber のパフォーマンスを大きく改善 [feature:14739]

### その他の変更

  - macOS で共有ライブラリの名前に Ruby のフルバージョンを含めなくなりました。
    この変更によって macOS プラットフォームのユーザが teeny リリース毎に全ての
    拡張ライブラリをリビルドする必要がある負担がなくなります。
    -  変更前:
      - libruby.2.6.0.dylib
      - libruby.2.6.dylib -> libruby.2.6.0.dylib
      - libruby.dylib -> libruby.2.6.0.dylib
    - 変更後:
      - libruby.2.6.dylib
      - libruby.dylib -> libruby.2.6.dylib

  - misc/*.el ファイルが <https://github.com/ruby/elisp> に分離されました。
