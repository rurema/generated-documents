# NEWS for Ruby 2.1.0

このドキュメントは前回リリース以降のバグ修正を除くユーザーに影響のある機能の変更のリストです。

それぞれのエントリーは参照情報があるため短いです。
十分な情報と共に書かれた全ての変更のリストは ChangeLog ファイルか bugs.ruby-lang.org の issue を参照してください。

## 2.0.0 以降の変更

### 言語仕様の変更

  - キーワード引数のデフォルト値が省略可能になりました。これらの「必須キーワード引数」は呼び出し時に明示的に与えなければなりません。

  - 整数や小数のリテラルの末尾に'r','i','ri'という接尾辞を付けられるようになりました
    ```text
        # r を付けると有理数になる
        42r  # => Rational(42, 1)
        3.14 # => 3.14.rationalize
        6.022e+23r # 指数形式と一緒には使えない

        # i を付けると虚数単位 i を掛けた数になる
        42i  # => Complex(0, 42)
        3.14i # => Complex(0, 3.14)

        # ri を付けると複素数の虚部が有理数になる
        42ri   # => Complex(0, 42r)
        3.14ri # => Complex(0, 3.14r)
    ```

  - def によるメソッド定義式は nil の代わりにメソッド名をシンボルで返します

### 組み込みクラスの更新

  - [Array](../class/Array.md)
    - 追加: [Array#to_h](../method/Array/i/to_h.md) キーと値のペアの配列をハッシュに変換します。

  - [Binding](../class/Binding.md)
    - 追加: [Binding#local_variable_get](../method/Binding/i/local_variable_get.md)
    - 追加: [Binding#local_variable_set](../method/Binding/i/local_variable_set.md)
    - 追加: [Binding#local_variable_defined?](../method/Binding/i/local_variable_defined=3f.md)

  - [Enumerable](../class/Enumerable.md)
    - 追加: [Enumerable#to_h](../method/Enumerable/i/to_h.md) キーと値のペアのリストをハッシュに変換します。

  - [Exception](../class/Exception.md)
    - 追加: [Exception#cause](../method/Exception/i/cause.md) 一つ前の例外を新しい例外を返します。
      例外を rescue して raise しなおしたときに元の例外が一つ前の例外としてセットされています。

  - [GC](../class/GC.md)
    - 改良: RGenGC として知られている世代別GCが導入しました
    - 追加した環境変数
      - RUBY_GC_HEAP_INIT_SLOTS
      - RUBY_GC_HEAP_FREE_SLOTS
      - RUBY_GC_HEAP_GROWTH_FACTOR
      - RUBY_GC_HEAP_GROWTH_MAX_SLOTS
      - RUBY_GC_MALLOC_LIMIT_MAX
      - RUBY_GC_MALLOC_LIMIT_GROWTH_FACTOR
      - RUBY_GC_OLDMALLOC_LIMIT
      - RUBY_GC_OLDMALLOC_LIMIT_MAX
      - RUBY_GC_OLDMALLOC_LIMIT_GROWTH_FACTOR
    - 廃止した環境変数
      - RUBY_FREE_MIN (RUBY_GC_HEAP_FREE_SLOTS を代わりに使います)
      - RUBY_HEAP_MIN_SLOTS (RUBY_GC_HEAP_INIT_SLOTS を代わりに使います)

  - [Integer](../class/Integer.md)
    - 追加: Fixnum#bit_length
    - 追加: Bignum#bit_length
    - `Bignum` の性能向上
      - GMP をいくつかの操作で使えるときは使います。
        乗算、除算、基数変換、GCD

  - [IO](../class/IO.md)
    - 拡張: [IO#seek](../method/IO/i/seek.md) SEEK_DATA と SEEK_HOLE を whence としてサポートしました？？
    - 拡張: [IO#seek](../method/IO/i/seek.md) 第2引数としてシンボルを受け付けるようになりました (:CUR, :END, :SET, :DATA, :HOLE)
    - 拡張: [IO#read_nonblock](../method/IO/i/read_nonblock.md) シンボルを返すためにキーワード引数 \`exception: false\` を受け付けるようになりました
    - 拡張: [IO#write_nonblock](../method/IO/i/write_nonblock.md) シンボルを返すためにキーワード引数 \`exception: false\` を受け付けるようになりました

  - [Kernel](../class/Kernel.md)
    - 追加: [`Kernel#singleton_method`](../method/Object/i/singleton_method.md)

  - [Module](../class/Module.md)
    - 追加: [Module#using](../method/Module/i/using.md), which activates refinements of the specified module only
      in the current class or module definition.
    - 追加: [Module#singleton_class?](../method/Module/i/singleton_class=3f.md) レシーバーが特異クラスであれば true を返します。
      レシーバーが通常のクラスやモジュールであれば false を返します。
    - 拡張: [Module#refine](../method/Module/i/refine.md) はもはや実験的な機能でなくなりました
    - 拡張: [Module#include](../method/Module/i/include.md) と [Module#prepend](../method/Module/i/prepend.md) はパブリックメソッドになりました

  - [Mutex](../class/Mutex.md)
    - [`Mutex#owned?`](../method/Thread=3a=3aMutex/i/owned=3f.md) はもはや実験的な機能ではありません。

  - [Numeric](../class/Numeric.md)
    - 拡張: [Numeric#step](../method/Numeric/i/step.md) limit が省略可能になり無限数列を作れるようになりました。
      キーワード引数の to と by を使いやすさのために導入しました。
      by に 0 を指定すると無限に同じ数値を生成できます。

  - [Process](../class/Process.md)
    - 追加: [Process?.argv0](../method/Process/m/argv0.md) オリジナルの $0 の値を返します。
    - 追加: [Process?.setproctitle](../method/Process/m/setproctitle.md) $0 に影響を与えずにプロセス名をセットできます。
    - 追加: [Process?.clock_gettime](../method/Process/m/clock_gettime.md)
    - 追加: [Process?.clock_getres](../method/Process/m/clock_getres.md)

  - [String](../class/String.md)
    - "literal".freeze は同じオブジェクトを返すように最適化されました。
    - 追加: [String#scrub](../method/String/i/scrub.md), [String#scrub!](../method/String/i/scrub=21.md) 不正なバイト列を検証して修正します。
      古いバージョンのRubyと一緒に使いたいときは string-scrub gem を使います。

  - [Symbol](../class/Symbol.md)
    - 全てのシンボルは freeze されるようになりました

  - pack/unpack (Array/String)
    - プラットフォームが対応していれば Q! と q! は long long 型を表します

  - toplevel
    - main.using はもはや実験的な機能ではありません。
      The method activates refinements in the ancestors of the argument module to
      support refinement inheritance by [Module#include](../method/Module/i/include.md)

### 組み込みクラスの互換性 (機能追加とバグ修正を除く)

  - [Hash](../class/Hash.md)
   - 非互換: [Hash#reject](../method/Hash/i/reject.md) は将来のバージョンでは単なるハッシュオブジェクトを返すようにする予定です。
     サブクラス、インスタンス変数、デフォルト値、汚染フラグはコピーされなくなります。
     そのようなハッシュに対してこのメソッドを呼び出すと警告するようになりました。

  - [IO](../class/IO.md)
    - 非互換: [IO.open](../method/IO/s/open.md) は外部エンコーディングが ASCII-8BIT のとき内部エンコーディングを無視します。

  - [Kernel?.eval](../method/Kernel/m/eval.md), [BasicObject#instance_eval](../method/BasicObject/i/instance_eval.md), [Module#module_eval](../method/Module/i/module_eval.md)
    元の環境のスコープ情報をコピーするようになりました。これは、引数なしの
    private, protected, public, module_function を文字列として eval しても
    その外側には影響を与えないという意味です。
    以下のコードは Foo#foo をプライベートにしません。
    ```ruby
        class Foo
          eval "private"
          def foo
          end
        end
    ```

  - Object#untrusted?,Object#untrust,Object#trust
    - これらのメソッドは非推奨になりました。$VERBOSE が true のときは警告を表示します。
      Object#tainted?,Object#taint,Object#untaint とそれぞれ同じ動作です。

  - [Module#ancestors](../method/Module/i/ancestors.md)
    - 特異クラスの祖先はそれ自身を含みます。
      The ancestors of a singleton class now include singleton classes,
      in particular itself.

  - [Module#define_method](../method/Module/i/define_method.md) [Object#define_singleton_method](../method/Object/i/define_singleton_method.md)
    - 定義したメソッドの名前をシンボルで返すようになりました。メソッドオブジェクトではありません。

  - [Numeric#quo](../method/Numeric/i/quo.md)
    - レシーバーが to_r メソッドを持たないとき [ArgumentError](../class/ArgumentError.md) ではなく [TypeError](../class/TypeError.md) を発生させるようになりました。

  - [Proc](../class/Proc.md)
    - Returning from lambda proc now always exits from the Proc, not from the
      method where the lambda is created.  Returning from non-lambda proc exits
      from the method, same as the former behavior.

  - [String](../class/String.md)
    - 以下のコードでレシーバーのエンコーディングと変換後のエンコーディングが同一でも
      不正なバイト列を置き換えるようになりました。
      ```text
          include_invalid_byte_string.encode("UTF-8", invalid: :replace)
      ```

### 標準添付ライブラリの更新 (優れたもののみ)

  - [cgi/util](../library/cgi=2futil.md)
    - 全てのクラスメソッドをモジュールに移動しました

  - [digest](../library/digest.md)
    - 拡張: `Digest::Class.file` コンストラクタのためにオプショナル引数を取れるようになりました

  - [matrix](../library/matrix.md)
    - 追加: [Vector#cross_product](../method/Vector/i/cross_product.md)

  - [net/smtp](../library/net=2fsmtp.md)
    - 追加: [Net::SMTP#rset](../method/Net=3a=3aSMTP/i/rset.md) RSET コマンドに対応している

  - [objspace](../library/objspace.md)
    - 追加: [ObjectSpace?.trace_object_allocations](../method/ObjectSpace/m/trace_object_allocations.md)
    - 追加: [ObjectSpace?.trace_object_allocations_start](../method/ObjectSpace/m/trace_object_allocations_start.md)
    - 追加: [ObjectSpace?.trace_object_allocations_stop](../method/ObjectSpace/m/trace_object_allocations_stop.md)
    - 追加: [ObjectSpace?.trace_object_allocations_clear](../method/ObjectSpace/m/trace_object_allocations_clear.md)
    - 追加: [ObjectSpace?.allocation_sourcefile](../method/ObjectSpace/m/allocation_sourcefile.md)
    - 追加: [ObjectSpace?.allocation_sourceline](../method/ObjectSpace/m/allocation_sourceline.md)
    - 追加: [ObjectSpace?.allocation_class_path](../method/ObjectSpace/m/allocation_class_path.md)
    - 追加: [ObjectSpace?.allocation_method_id](../method/ObjectSpace/m/allocation_method_id.md)
    - 追加: [ObjectSpace?.allocation_generation](../method/ObjectSpace/m/allocation_generation.md)
    - 追加: [ObjectSpace?.reachable_objects_from_root](../method/ObjectSpace/m/reachable_objects_from_root.md)
    - 追加: [ObjectSpace?.dump](../method/ObjectSpace/m/dump.md)
    - 追加: [ObjectSpace?.dump_all](../method/ObjectSpace/m/dump_all.md)

  - OpenSSL::BN
    - 拡張: [OpenSSL::BN.new](../method/OpenSSL=3a=3aBN/s/new.md) Fixnum や Bignum を引数として取れるようになりました。

  - [open-uri](../library/open=2duri.md)
    - 複数フィールドに同じ名前を使うことをサポートしました (Set-Cookieのように)

  - [Pathname](../class/Pathname.md)
    - 追加: [Pathname#write](../method/Pathname/i/write.md)
    - 追加: [Pathname#binwrite](../method/Pathname/i/binwrite.md)

  - [rake](../library/rake.md)
    - 10.1.0 に更新しました。古い名前空間を削除しました。また、古い rake の機能も削除しました。
      <https://github.com/ruby/rake/blob/master/History.rdoc#1010>
      <https://github.com/ruby/rake/blob/master/History.rdoc#1003>

  - [rbconfig](../library/rbconfig.md)
    - 追加: [RbConfig::SIZEOF](../method/RbConfig/c/SIZEOF.md) C の型のサイズを提供するために追加しました。

  - [rdoc](../library/rdoc.md)
    - 4.1.0 に更新。主にデフォルトのテンプレートとアクセシビリティを改善しました。
      <https://github.com/ruby/rdoc/blob/v4.1.0.preview.1/History.rdoc>

  - [resolv](../library/resolv.md)
    - 追加: `Resolv::DNS.fetch_resource`
    - One-shot multicast DNS support
    - Support LOC resources

  - [rexml](../library/rexml.md)
    - REXML::Parsers::SAX2Parser
      - entitydecl イベントの引数が間違っている問題を修正しました。
        ドキュメントにはエンティティ定義の配列を渡すと書いてあるのに、
        実装は2つ以上の引数を渡すようになっていた。これは実装のバグだったが、
        修正したことで後方互換性が壊れました。
    - REXML::Parsers::StreamParser
      - entityイベントをサポート
    - REXML::Text
      - `REXML::Text#<<` 'text << "XXX" << "YYY"' のようなメソッドチェインをサポート
      - `REXML::Text#<<` "raw" でないモードをサポート

  - `rinda`
    - `Rinda::RingServer`, `Rinda::RingFinger`
      - マルチキャストソケットをサポート

  - [rubygems](../library/rubygems.md)
    - 2.2.0 に更新。  Notable new features include:
      - Gemfile or gem.deps.rb support including Gem.file.lock (experimental)
      - Improved, iterative resolver (compared to RubyGems 2.1 and earlier)
      - Support for a sharing a GEM_HOME across ruby platforms and versions
      - <https://github.com/rubygems/rubygems/tree/master/History.txt>

  - `set`
    - 追加: [Set#intersect?](../method/Set/i/intersect=3f.md)
    - 追加: [Set#disjoint?](../method/Set/i/disjoint=3f.md)

  - [socket](../library/socket.md)
    - 追加: [Socket.getifaddrs](../method/Socket/s/getifaddrs.md)

  - [strscan](../library/strscan.md)
    - [StringScanner#\[\]](../method/StringScanner/i/=5b=5d.md) 名前付きキャプチャをサポートしました

  - [syslog/logger](../library/syslog=2flogger.md)
    - ファシリティを追加

  - [tempfile](../library/tempfile.md)
    - 追加: [Tempfile.create](../method/Tempfile/s/create.md)

  - [timeout](../library/timeout.md)
    - 明示的に例外クラスを指定しない限り、ブロックを抜けるための例外はブロック内部で rescue されなくなりました。

  - [tsort](../library/tsort.md)
    - 追加: [TSort#tsort](../method/TSort/i/tsort.md)
    - 追加: [TSort#tsort_each](../method/TSort/i/tsort_each.md)
    - 追加: [TSort#strongly_connected_components](../method/TSort/i/strongly_connected_components.md)
    - 追加: [TSort#each_strongly_connected_component](../method/TSort/i/each_strongly_connected_component.md)
    - 追加: [TSort#each_strongly_connected_component_from](../method/TSort/i/each_strongly_connected_component_from.md)

  - [webrick](../library/webrick.md)
    - レスポンスボディは readpartial や read をサポートする StringIO か他の IO のようなオブジェクトになりました。

  - [xmlrpc](../library/xmlrpc.md)
    - XMLRPC::Client
      - 追加: XMLRPC::Client#http クライアントのために [Net::HTTP](../class/Net=3a=3aHTTP.md) のインスタンスを返します。
        通常、それは必要ありません。HTTP クライアントのオプションを少し変更したいときに便利です。
        HTTPクライアントの主要なオプションを変更するときは XMLRPC::Client のメソッドを使うべきです。

### 標準添付ライブラリの互換性 (機能追加とバグ修正を除く)

  - `set`
    - 非互換: `Set#to_set` はコピーを生成して返す代わりに self を返すようになりました

  - [uri](../library/uri.md)
    - 非互換: [URI.decode_www_form](../method/URI/s/decode_www_form.md) は現在の WHATWG による URL 標準に従います。
      文字列エンコーディングを指定するために、エンコーディング引数を取ります。
      いい加減なパーセントエンコードされた文字列を受け入れますが、セパレータにセミコロンは拒否します。
    - 非互換: [URI.decode_www_form](../method/URI/s/decode_www_form.md) は現在の WHATWG による URL 標準に従います。
      パーセントエンコードする前に、エンコーディング引数を取ります。
      デフォルトでは、パーセントエンコードする前にUTF-16文字列をUTF-8に変換しません。

  - curses
    - 削除。curses は gem になりました。
      <https://rubygems.org/gems/curses>

### 組込みのグローバル変数の互換性に影響のある変更

  - $SAFE
    - $SAFE=4 は廃止されました。$SAFE に4以上の値をセットすると [ArgumentError](../class/ArgumentError.md) が発生します。

### C API の更新

  - 非推奨: rb_gc_set_params() Ruby内部でのみ使います。

  - 追加: rb_gc_count() GCが発生した回数を返します。

  - 追加: rb_gc_stat() [GC.stat](../method/GC/s/stat.md) が返す値にオーバーヘッドなしにアクセスできます。

  - 追加: rb_gc_latest_gc_info() [GC.latest_gc_info](../method/GC/s/latest_gc_info.md) にアクセスできます。

  - 追加: rb_postponed_job_register()  VMが一貫性のある状態になったときに呼ぶコールバック関数を引数に取ります。
    例えば、Cのシグナルハンドラから実行するために使います。

  - 追加: rb_profile_frames() コールスタックのプロファイルのために現在のRubyのスタックに
    低コストでアクセスする機能を提供します。

  - rb_tracepoint_new() C言語からアクセス可能な新しい内部的なイベントをサポートしました:
    - RUBY_INTERNAL_EVENT_NEWOBJ
    - RUBY_INTERNAL_EVENT_FREEOBJ
    - RUBY_INTERNAL_EVENT_GC_START
    - RUBY_INTERNAL_EVENT_GC_END_MARK
    - RUBY_INTERNAL_EVENT_GC_END_SWEEP
    - 内部的なイベントを通常のイベントと同時に使うことはできません。
      (例: RUBY_EVENT_CALL と RUBY_EVENT_RETURN)
