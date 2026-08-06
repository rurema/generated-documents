# NEWS for Ruby 2.2.0

このドキュメントは前回リリース以降のバグ修正を除くユーザーに影響のある機能の変更のリストです。

それぞれのエントリーは参照情報があるため短いです。
十分な情報と共に書かれた全ての変更のリストは ChangeLog ファイルか bugs.ruby-lang.org の issue を参照してください。

## 2.1.0 以降の変更

### 言語仕様の変更

  - nil/true/false
    - nil/true/false はフリーズされました [feature:8923]

  - Hash リテラル
    - 後ろにコロンのあるシンボルをキーにしたときそれをクオートできるようになりました [feature:4276]

  - デフォルト引数
    - オプショナル引数にデフォルト値のセマンティクスでアクセスできないという長年のバグを修正しました。 [bug:9593]

### 組み込みクラスの更新

  - [Binding](../class/Binding.md)
    - 追加: [Binding#local_variables](../method/Binding/i/local_variables.md)
    - 追加: [Binding#receiver](../method/Binding/i/receiver.md)

  - [Dir](../class/Dir.md)
    - 追加: [Dir#fileno](../method/Dir/i/fileno.md)

  - [Enumerable](../class/Enumerable.md)
    - 追加: [Enumerable#slice_after](../method/Enumerable/i/slice_after.md)
    - 追加: [Enumerable#slice_when](../method/Enumerable/i/slice_when.md)
    - 拡張: [Enumerable#min](../method/Enumerable/i/min.md), [Enumerable#min_by](../method/Enumerable/i/min_by.md), [Enumerable#max](../method/Enumerable/i/max.md), [Enumerable#max_by](../method/Enumerable/i/max_by.md)
      は複数の値を返すためのオプションをサポートしました

  - [Float](../class/Float.md)
    - 追加: [Float#next_float](../method/Float/i/next_float.md)
    - 追加: [Float#prev_float](../method/Float/i/prev_float.md)

  - [File](../class/File.md)
    - 追加: [File.birthtime](../method/File/s/birthtime.md)
    - 追加: [File#birthtime](../method/File/i/birthtime.md)

  - [File::Stat](../class/File=3a=3aStat.md)
    - 追加: [File::Stat#birthtime](../method/File=3a=3aStat/i/birthtime.md)

  - [GC](../class/GC.md)
    - [GC.latest_gc_info](../method/GC/s/latest_gc_info.md) は現在のGCのステータスを再現するために :state を返すようになりました。
    - 改善: メジャーGCにインクリメンタルマーキングを導入しました。 [feature:10137]

  - [IO](../class/IO.md)
    - 改善: Windows上でパイプのための [IO#read_nonblock](../method/IO/i/read_nonblock.md), [IO#write_nonblock](../method/IO/i/write_nonblock.md) をサポートしました。

  - [Kernel](../class/Kernel.md)
    - 追加: Kernel.#itself([Object#itself](../method/Object/i/itself.md))
    - 改善: [Kernel?.throw](../method/Kernel/m/throw.md) は、対応する catch ブロックがないとき [ArgumentError](../class/ArgumentError.md) ではなく
      [ArgumentError](../class/ArgumentError.md) のサブクラスである [UncaughtThrowError](../class/UncaughtThrowError.md) を発生させるようになりました

  - [Process](../class/Process.md)
    - 拡張: [Process.spawn](../method/Process/s/spawn.md) のような外部プロセスを起動するメソッドは [:out, :err] からリダイレクト
      されたファイルを書き込みモードで開くようになりました

  - [String](../class/String.md)
    - 追加: [String#unicode_normalize](../method/String/i/unicode_normalize.md)
    - 追加: [String#unicode_normalize!](../method/String/i/unicode_normalize=21.md)
    - 追加: [String#unicode_normalized?](../method/String/i/unicode_normalized=3f.md)

  - [Symbol](../class/Symbol.md)
    - 改善: [String#to_sym](../method/String/i/to_sym.md), [String#intern](../method/String/i/intern.md) によって返される多くのシンボルがGC可能になりました

  - [Method](../class/Method.md)
    - 追加: [Method#curry](../method/Method/i/curry.md)([arity]) はカリー化された [Proc](../class/Proc.md) オブジェクトを返します
    - 追加: [Method#super_method](../method/Method/i/super_method.md) はスーパクラスの同名のメソッドの [Method](../class/Method.md) オブジェクトを返します。

### 組み込みクラスの互換性 (機能追加とバグ修正を除く)

  - [Enumerable](../class/Enumerable.md)
    - [Enumerable#slice_before](../method/Enumerable/i/slice_before.md) の状態管理は非推奨になりました
    - [Enumerable#chunk](../method/Enumerable/i/chunk.md) の状態管理は非推奨になりました

  - [GC](../class/GC.md)
    - 非互換: [GC.stat](../method/GC/s/stat.md) のエントリーの名前を変更しました [feature:9924]

  - [Hash](../class/Hash.md)
    - 非互換: 重複するキーの上書きに関するポリシーを変更しました [bug:10315]
      { **hash1, **hash2 } は重複するキーについては hash2 の値を持ちます

  - [IO](../class/IO.md)
    - 非互換: [IO#flush](../method/IO/i/flush.md) を使ったとき、ファイルのメタデータが即時更新されることを仮定できなくなりました。
      いくつかのプラットフォーム(特にWindows)で、メタデータの更新はファイルシステムの負荷が下がるまで遅延されます。
      メタデータが更新されることを保証したい場合は [IO#fsync](../method/IO/i/fsync.md) を使ってください。

  - [Math](../class/Math.md)
    - 非互換: [Math?.log](../method/Math/m/log.md) は 基底が 0 より小さいとき NaN を返すかわりに [Math::DomainError](../class/Math=3a=3aDomainError.md) を発生させます。
      2つの引数に両方とも 0 が指定された場合、負の無限大ではなく NaN を返します。
    - 非互換: [Math?.atan2](../method/Math/m/atan2.md) は2の引数の両方に無限大が指定されたとき C99 で期待されるような値を返します。

  - [Proc](../class/Proc.md)
    - 非互換: [ArgumentError](../class/ArgumentError.md) は発生しなくなりました。
    - ArgumentError is no longer raised when lambda Proc is passed as a
      block, and the number of yielded arguments does not match the formal
      arguments of the lambda, if just an array is yielded and its length
      matches.

  - [Process](../class/Process.md)
    - [Process.spawn](../method/Process/s/spawn.md) のようなプロセスを起動するようなメソッドは [:out, :err]
      からリダイレクトされるファイルを書き込みモードで開きます。Ruby 2.2以前は読み込みモードで開いていました。

### 標準添付ライブラリの更新 (優れたもののみ)

  - [continuation](../library/continuation.md)
    - callcc は廃止されました。[Fiber](../class/Fiber.md)を使ってください。

  - [digest](../library/digest.md)
    - [Kernel#Digest](../method/Kernel/i/Digest.md) はスレッドセーフになりました。
      マルチスレッド環境でオンデマンドローディングに関して問題がある場合は、
      "digest/*" を事前にロードしておくか、Digest::* なクラスを参照するかわりにこのメソッドを呼び出します。
    - 以前通知した通り Digest::HMAC を削除しました。

  - DL
    - DL は標準添付ライブラリから削除されました。[fiddle](../library/fiddle.md) を使ってください。

  - [etc](../library/etc.md)
    - 追加: [Etc?.uname](../method/Etc/m/uname.md)
    - 追加: [Etc?.sysconf](../method/Etc/m/sysconf.md)
    - 追加: [Etc?.confstr](../method/Etc/m/confstr.md)
    - 追加: [IO#pathconf](../method/IO/i/pathconf.md)
    - 追加: [Etc?.nprocessors](../method/Etc/m/nprocessors.md)

  - [find](../library/find.md), [pathname](../library/pathname.md)
    - 拡張: [Find?.find](../method/Find/m/find.md) は "ignore_error" というキーワード引数を受け付けるようになりました

  - Matrix
    - 追加: [Matrix#first_minor](../method/Matrix/i/first_minor.md)
    - 追加: [Matrix#cofactor](../method/Matrix/i/cofactor.md)
    - 追加: [Matrix#adjugate](../method/Matrix/i/adjugate.md)
    - 追加: [Matrix#hstack](../method/Matrix/i/hstack.md), [Matrix#vstack](../method/Matrix/i/vstack.md)
    - 追加: [Matrix#laplace_expansion](../method/Matrix/i/laplace_expansion.md)
    - 追加: [Vector.basis](../method/Vector/s/basis.md)
    - 追加: [Vector#-@](../method/Vector/i/=2d=40.md), [Vector#+@](../method/Vector/i/=2b=40.md), [Matrix#-@](../method/Matrix/i/=2d=40.md), [Matrix#+@](../method/Matrix/i/=2b=40.md)
    - 追加: [Vector#cross_product](../method/Vector/i/cross_product.md)
    - 追加: [Vector#dot](../method/Vector/i/dot.md)
    - 追加: [Vector#angle_with](../method/Vector/i/angle_with.md)
    - 追加: [Vector.independent?](../method/Vector/s/independent=3f.md), [Vector#independent?](../method/Vector/i/independent=3f.md)

  - [pathname](../library/pathname.md)
    - [Pathname#/](../method/Pathname/i/=2f.md) は [Pathname#+](../method/Pathname/i/=2b.md) のエイリアスです
    - 追加: [Pathname#birthtime](../method/Pathname/i/birthtime.md)

  - [rake](../library/rake.md)
    - Rake 10.4.0 になりました。
      <https://github.com/ruby/rake/blob/master/History.rdoc#1040--2014-11-22>

  - [rubygems](../library/rubygems.md)
    - RubyGems 2.4.2 になりました。リリースノートの全てはリンク先を参照してください。
      <https://github.com/ruby/rubygems/blob/master/CHANGELOG.md#242--2014-10-01>

  - [tsort](../library/tsort.md)
    - [TSort.tsort_each](../method/TSort/s/tsort_each.md), [TSort.each_strongly_connected_component](../method/TSort/s/each_strongly_connected_component.md),
      [TSort.each_strongly_connected_component_from](../method/TSort/s/each_strongly_connected_component_from.md) はブロックを省略すると [Enumerator](../class/Enumerator.md) を返すようになりました。

  - [xmlrpc](../library/xmlrpc.md)
    - LibXMLStreamParser という新しいパーサーを追加しました

### 標準添付ライブラリの互換性 (機能追加とバグ修正を除く)

  - mathn
    - 非推奨の警告を表示するようになりました [feature:10169]

  - ext/date/lib/date/format.rb
    - 空だったので削除されました

  - [digest](../library/digest.md)
    - Digest::HMAC は削除されました。[OpenSSL::HMAC](../class/OpenSSL=3a=3aHMAC.md) や外部のgemを使ってください。

  - [time](../library/time.md)
    - [Time.parse](../method/Time/s/parse.md), [Time.strptime](../method/Time/s/strptime.md), [Time.rfc2822](../method/Time/s/rfc2822.md), [Time.xmlschema](../method/Time/s/xmlschema.md) may produce
      fixed-offset Time objects.
      It is happen when usual localtime doesn't preserve the offset from UTC.
    - [Time.httpdate](../method/Time/s/httpdate.md) は常にUTCのTimeオブジェクトを生成します。
    - [Time.strptime](../method/Time/s/strptime.md) は引数が日付や時刻の情報を含まない場合、[ArgumentError](../class/ArgumentError.md)を発生させます。

  - lib/rational.rb
    - 2009年から非推奨だったので削除しました。

  - lib/complex.rb
    - 2009年から非推奨だったので削除しました。

  - [prettyprint](../library/prettyprint.md)
    - PrettyPrint#first? は削除しました。

  - lib/minitest/*.rb
    - mintest 5 と衝突するので削除しました。[feature:9711]

  - lib/test/**/*.rb
    - minitest 5 と衝突するので削除しました。minitest 4 の単なるラッパーだった。[feature:9711]

  - [uri](../library/uri.md)
    - [RFC:3986] をサポートしました。 [feature:2542]

  - GServer
    - gserver という gem に切り出しました。メンテナンスしていないコードでした。

  - Logger
    - Logger::Application は logger-application という gem に切り出しました。メンテナンスしていないコードでした。

  - ObjectSpace (after requiring "objspace")
    - [ObjectSpace?.memsize_of](../method/ObjectSpace/m/memsize_of.md)(obj) は sizeof(RVALUE) を含むようになりました。
      [bug:8984]

  - [prime](../library/prime.md)
    - 非互換:
      - [Prime.prime?](../method/Prime/s/prime=3f.md) は負の数に対して false を返します。
        このメソッドは数が合成数かどうか知るために使うべきではありません。 [bug:7395]

  - [psych](../library/psych.md)
    - Psych::EngineManager を削除しました [bug:8344]

### 組込みのグローバル変数の互換性に影響のある変更

なし

### C API の更新

  - 非推奨のAPIを削除しました  [feature:9502]
    - Check_SafeStr -> SafeStringValue
    - rb_check_safe_str -> SafeStringValue
    - rb_quad_pack -> rb_integer_pack
    - rb_quad_unpack -> rb_integer_unpack
    - rb_read_check : access struct FILE internal. no replacement.
    - rb_struct_iv_get : internal function. no replacement.
    - struct rb_blocking_region_buffer : internal type. no replacement.
    - rb_thread_blocking_region_begin -> rb_thread_call_without_gvl family
    - rb_thread_blocking_region_end -> rb_thread_call_without_gvl family
    - TRAP_BEG -> rb_thread_call_without_gvl family
    - TRAP_END -> rb_thread_call_without_gvl family
    - rb_thread_select -> rb_thread_fd_select
    - struct rb_exec_arg : internal type. no replacement.
    - rb_exec : internal function. no replacement.
    - rb_exec_arg_addopt : internal function. no replacement.
    - rb_exec_arg_fixup : internal function. no replacement.
    - rb_exec_arg_init : internal function. no replacement.
    - rb_exec_err : internal function. no replacement.
    - rb_fork : internal function. no replacement.
    - rb_fork_err : internal function. no replacement.
    - rb_proc_exec_n : internal function. no replacement.
    - rb_run_exec_options : internal function. no replacement.
    - rb_run_exec_options_err : internal function. no replacement.
    - rb_thread_blocking_region -> rb_thread_call_without_gvl family
    - rb_thread_polling -> rb_thread_wait_for
    - rb_big2str0 : internal function. no replacement.
    - rb_big2ulong_pack -> rb_integer_pack
    - rb_gc_set_params : internal function. no replacement.
    - rb_io_mode_flags -> rb_io_modestr_fmode
    - rb_io_modenum_flags -> rb_io_oflags_fmode

  - struct RBignum は隠されました [feature:6083]
    かわりに rb_integer_pack と rb_integer_unpack を使います

  - struct RRational は隠されました  [feature:9513]
    かわりに rb_rational_num と rb_rational_den を使います

  - rb_big_new と rb_big_resize は long のかわりに size_t を受け取ります

  - rb_num2long は SIGNED_VALUE のかわりに long を返します

  - rb_num2ulong は VALUE のかわりに unsigned long を返します

  - st hash table は速度のために2のべき乗のサイズを使います。[feature:9425].
    適切はハッシュ関数を使うと探索は10-25%速くなります。
    しかしながら、ハッシュ分散の弱点はもはや素数サイズのテーブルにマスクされていない可能性があります。
    なので、拡張ライブラリは良い分散を確保するためにハッシュ関数を微調整する必要があるかもしれません。

  - rb_sym2str() を追加しました。\`rb_id2str(SYM2ID(sym))\` と大体同じですが、動的なシンボルを作成しません。

  - rb_str_cat_cstr() を追加しました。\`rb_str_cat2()\` と同じです。

  - 将来的に \`rb_str_substr()\` と \`rb_str_subseq()\` は文字列の真ん中を共有しますが、
    文字列の末尾だけは共有しません。結局、処理された文字列はNULL終端されない可能性があるので、
    NULL終端されたCの文字列を入手したいときは\`StringValueCStr()\`を呼ぶ必要があります。

  - rb_tracepoint_new() はCからアクセス可能な新しい内部的なイベントをサポートしました。r47528
    - RUBY_INTERNAL_EVENT_GC_ENTER
    - RUBY_INTERNAL_EVENT_GC_EXIT

  - rb_hash_delete() は与えられたブロックを評価しなくなりました。

  - rb_extract_keywords() と rb_get_kwargs() はエクスポートされました。詳細は README.EXT を参照してください。

### ビルドシステムの更新

  - ./configure のオプション --with-jemalloc を追加しました。
    jemalloc はシステムの malloc が遅かったり、フラグメンテーションする傾向にある場合に適切かもしれません。[feature:9113]

### 実装の変更

  - GC
    - [String#to_sym](../method/String/i/to_sym.md) や [String#intern](../method/String/i/intern.md) によって返されるほとんどのシンボルはGC可能になりました。[feature:9634]
    - メジャーGCにインクリメンタルマーキングを導入しました。[feature:10137]
    - malloc によって起きた GC で lazy sweep を有効にしました。

  - VM
      - [Hash#\[\]](../method/Hash/i/=5b=5d.md) と [Hash#\[\]=](../method/Hash/i/=5b=5d=3d.md) で変更不可能な文字列リテラルを使用するようにしました。
      - キーワード引数が速くなりました [feature:10440]
      - 巨大なスプラットされた配列を rest 引数として受け取れるようになりました[feature:10440]

  - Process
      - spawn() のようなプロセスを生成するメソッドは [man:vfork(2)] システムコールを使うようになりました。
        親プロセスがメモリを多く使用しているとき [man:vfork(2)] は [man:fork(2)] より速い。
