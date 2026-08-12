# NEWS for Ruby 2.0.0

このドキュメントは前回リリース以降のバグ修正を除くユーザーに影響のある機能の変更のリストです。

それぞれのエントリーは参照情報があるため短いです。
十分な情報と共に書かれた全ての変更のリストは ChangeLog ファイルか bugs.ruby-lang.org の issue を参照してください。

## 1.9.3 以降の変更

### 言語仕様の変更

  - キーワード引数を追加しました
  - %i, %I をシンボルの配列作成のために追加しました。(%w, %W に似ています)
  - デフォルトのソースエンコーディングを US-ASCII から UTF-8 に変更しました
  - '_' で始まる使用されていない変数は警告しなくなりました

### 組み込みクラスの更新

  - [ARGF.class](../class/ARGF=2eclass.md)
    - 追加: `ARGF.class#codepoints`, [ARGF.class#each_codepoint](../method/ARGF=2eclass/i/each_codepoint.md)
      [IO](../class/IO.md) にある同名のメソッドに対応します

  - [Array](../class/Array.md)
    - 追加: [Array#bsearch](../method/Array/i/bsearch.md) 二分探索します
    - 非互換:
      - [Array#shuffle!](../method/Array/i/shuffle=21.md) と [Array#sample](../method/Array/i/sample.md) の random パラメータには最大値のみを指定することが可能になりました
      - [Array#values_at](../method/Array/i/values_at.md) に [Range](../class/Range.md) オブジェクトを与えた場合、配列の範囲外のインデックスについては nil を返します

  - [Enumerable](../class/Enumerable.md)
    - 追加: [Enumerable#lazy](../method/Enumerable/i/lazy.md) 遅延列挙のためのメソッドです

  - [Enumerator](../class/Enumerator.md)
    - 追加: [Enumerator#size](../method/Enumerator/i/size.md) サイズを遅延評価するためのメソッドです
    - 拡張: [Enumerator.new](../method/Enumerator/s/new.md) サイズの遅延評価のための引数を一つ受け取るようになりました
    - 新規クラス: [Enumerator::Lazy](../class/Enumerator=3a=3aLazy.md) 遅延列挙用のクラス

  - [ENV](../class/ENV.md)
    - [ENV.to_h](../method/ENV/s/to_h.md) は [ENV.to_hash](../method/ENV/s/to_hash.md) へのエイリアスです

  - [Fiber](../class/Fiber.md)
    - 非互換: [Fiber#resume](../method/Fiber/i/resume.md) は [Fiber#transfer](../method/Fiber/i/transfer.md) を呼び出したファイバーを再開できなくなりました

  - [File](../class/File.md)
    - 拡張: [File.fnmatch?](../method/File/s/fnmatch=3f.md) は File::FNM_EXTGLOB([File::Constants::FNM_EXTGLOB](../method/File=3a=3aConstants/c/FNM_EXTGLOB.md)) オプションが与えられていればブレースを展開します
        
  - [GC](../class/GC.md)
    - 改良:
      - ビットマップマーキングを導入しました。Copy-on-Write を使用してページをコピーするのでメモリ使用量が減少します
      - 非再帰的なマーキングを導入しました。期待しないスタックオーバーフローを避けるためです

  - [GC::Profiler](../class/GC=3a=3aProfiler.md)
    - 追加: [GC::Profiler.raw_data](../method/GC=3a=3aProfiler/s/raw_data.md) GCの加工していないプロファイルデータを返します

  - [Hash](../class/Hash.md)
    - 追加: [Hash#to_h](../method/Hash/i/to_h.md) 明示的に変換するメソッドです。[Array#to_a](../method/Array/i/to_a.md) に似ています
    - 拡張: [Hash#default_proc=](../method/Hash/i/default_proc=3d.md) default proc をクリアするために nil を渡せるようになりました

  - [IO](../class/IO.md)
    - 非推奨: IO#lines, #bytes, #chars, #codepoints

  - [Kernel](../class/Kernel.md)
    - 追加: [Kernel?.Hash](../method/Kernel/m/Hash.md) という変換メソッド。[Kernel?.Array](../method/Kernel/m/Array.md), [Kernel?.Float](../method/Kernel/m/Float.md) に似ています
    - 追加: [Kernel?.__dir__](../method/Kernel/m/__dir__.md) 現在のソースファイル(__FILE__)のあるディレクトリ名を正規化された絶対パスで返します。
    - 追加: [Kernel?.caller_locations](../method/Kernel/m/caller_locations.md) フレーム情報の配列を返します
    - 拡張: [Kernel?.warn](../method/Kernel/m/warn.md) [Kernel?.puts](../method/Kernel/m/puts.md) のように複数の引数を受け付けるようになりました
    - 拡張: [Kernel?.caller](../method/Kernel/m/caller.md) 第2引数で取得するスタックのサイズを指定できるようになりました
    - 拡張: [Object#to_enum](../method/Object/i/to_enum.md) [Object#enum_for](../method/Object/i/enum_for.md) サイズの遅延評価のためにブロックを受け取るようになりました
    - 非互換: [Kernel?.system](../method/Kernel/m/system.md), [Kernel?.exec](../method/Kernel/m/exec.md) は非標準のファイルディスクリプタを閉じます
      :close_others オプションのデフォルト値を true に変更しました
    - 非互換: respond_to? は protected なメソッドに対して false を返します。第2引数に true を指定すると true を返します。
    - 非互換: [Kernel?.__callee__](../method/Kernel/m/__callee__.md) はオリジナルの振舞いに戻りました。定義したときの名前ではなく呼び出したときの名前を返します。
    - 非互換: [Object#inspect](../method/Object/i/inspect.md) は #to_s を呼び出さなくなりました。再定義された #to_s を呼び出すためです。

  - [LoadError](../class/LoadError.md)
    - 追加: [LoadError#path](../method/LoadError/i/path.md) ロードできなかったファイルのパスを返します

  - [Module](../class/Module.md)
    - 追加: [Module#prepend](../method/Module/i/prepend.md) 指定したモジュールを self の継承チェインの先頭に
      「追加する」ことで self の定数、メソッド、モジュール変数を「上書き」します。
    - 追加: [Module#prepended](../method/Module/i/prepended.md), [Module#prepend_features](../method/Module/i/prepend_features.md) は [Module#included](../method/Module/i/included.md) と [Module#append_features](../method/Module/i/append_features.md) に似ています
    - 追加(実験的): [Module#refine](../method/Module/i/refine.md), スコープを限定してクラスやモジュールを拡張します。
    - 拡張: [Module#define_method](../method/Module/i/define_method.md) は [UnboundMethod](../class/UnboundMethod.md) を受け付けるようになりました
    - 拡張: [Module#const_get](../method/Module/i/const_get.md) 修飾された定数名の文字列を受け付けるようになりました。
      ```ruby
              Object.const_get("Foo::Bar::Baz")
      ```

  - [Mutex](../class/Mutex.md)
    - 追加(実験的): [`Mutex#owned?`](../method/Thread=3a=3aMutex/i/owned=3f.md) mutex が現在のスレッドに所持されているかどうかを返します
    - 非互換:
      - [`Mutex#lock`](../method/Thread=3a=3aMutex/i/lock.md), [`Mutex#unlock`](../method/Thread=3a=3aMutex/i/unlock.md), [`Mutex#try_lock`](../method/Thread=3a=3aMutex/i/try_lock.md), [`Mutex#synchronize`](../method/Thread=3a=3aMutex/i/synchronize.md), [`Mutex#sleep`](../method/Thread=3a=3aMutex/i/sleep.md)
        はトラップハンドラの中では使えなくなりました。そのようなときは ThreadError が発生します
      - [`Mutex#sleep`](../method/Thread=3a=3aMutex/i/sleep.md) may spurious wakeup. Check after wakeup.

  - [NilClass](../class/NilClass.md)
    - 追加: [NilClass#to_h](../method/NilClass/i/to_h.md) 空のハッシュを返します

  - [ObjectSpace::WeakMap](../class/ObjectSpace=3a=3aWeakMap.md)
    - 弱い参照を保持するための低レベルのクラスです。

  - [Proc](../class/Proc.md)
    - 非互換: Proc#== と #eql? を削除。

  - [Process](../class/Process.md)
    - 追加: [Process?.getsid](../method/Process/m/getsid.md)  session id を取得します(unix のみ)。

  - [Range](../class/Range.md)
    - 追加: [Range#size](../method/Range/i/size.md) サイズの遅延評価
    - 追加: [Range#bsearch](../method/Range/i/bsearch.md) 二分探索

  - [RubyVM](../class/RubyVM.md) (MRI specific)
    - 追加: [RubyVM::InstructionSequence.of](../method/RubyVM=3a=3aInstructionSequence/s/of.md) to get the instruction sequence
      from a method or a block.
    - 追加: [RubyVM::InstructionSequence#path](../method/RubyVM=3a=3aInstructionSequence/i/path.md),
      [RubyVM::InstructionSequence#absolute_path](../method/RubyVM=3a=3aInstructionSequence/i/absolute_path.md),
      [RubyVM::InstructionSequence#label](../method/RubyVM=3a=3aInstructionSequence/i/label.md),
      [RubyVM::InstructionSequence#base_label](../method/RubyVM=3a=3aInstructionSequence/i/base_label.md),
      [RubyVM::InstructionSequence#first_lineno](../method/RubyVM=3a=3aInstructionSequence/i/first_lineno.md) to retrieve information from where
      the instruction sequence was defined.
    - スタックの使用量を指定するための環境変数を追加(起動時にチェックします):
      - RUBY_THREAD_VM_STACK_SIZE: vm stack size used at thread creation.
        default: 128KB (32bit CPU) or 256KB (64bit CPU).
      - RUBY_THREAD_MACHINE_STACK_SIZE: machine stack size used at thread
        creation. default: 512KB or 1024KB.
      - RUBY_FIBER_VM_STACK_SIZE: vm stack size used at fiber creation.
        default: 64KB or 128KB.
      - RUBY_FIBER_MACHINE_STACK_SIZE: machine stack size used at fiber
        creation. default: 256KB or 512KB.
    - 追加: [RubyVM::DEFAULT_PARAMS](../method/RubyVM/c/DEFAULT_PARAMS.md) という定数を追加しました。RubyVM のデフォルトのパラメータを返します。

  - [Signal](../class/Signal.md)
    - 追加: [Signal?.signame](../method/Signal/m/signame.md) シグナルの名前を返します
   
    - 非互換: [Signal?.trap](../method/Signal/m/trap.md) は :SEGV, :BUS, :ILL, :FPE, :VTALRM が指定されると [ArgumentError](../class/ArgumentError.md) を発生させます

  - [String](../class/String.md)
    - 追加: [String#b](../method/String/i/b.md) エンコーディングを ASCII-8BIT に設定したコピーされた文字列を返します
    - 返り値変更:
      - [String#lines](../method/String/i/lines.md) Enumerator ではなく Array を返します
      - [String#chars](../method/String/i/chars.md) Enumerator ではなく Array を返します
      - [String#codepoints](../method/String/i/codepoints.md) Enumerator ではなく Array を返します
      - [String#bytes](../method/String/i/bytes.md) Enumerator ではなく Array を返します

  - [Struct](../class/Struct.md)
    - 追加: [Struct#to_h](../method/Struct/i/to_h.md) インスタンス変数の名前と値をハッシュのキーと値にしたハッシュを生成して返します

  - [Thread](../class/Thread.md)
    - 追加: [Thread#thread_variable_get](../method/Thread/i/thread_variable_get.md) スレッドローカルな変数を取得します
      (these are different than Fiber local variables).
    - 追加: [Thread#thread_variable_set](../method/Thread/i/thread_variable_set.md) スレッドローカルな変数をセットします
    - 追加: [Thread#thread_variables](../method/Thread/i/thread_variables.md) スレッドローカルな変数の名前のリストを取得します
    - 追加: [Thread#thread_variable?](../method/Thread/i/thread_variable=3f.md) 与えられた名前がスレッドローカルな変数であるかどうか返します
    - 追加: [Thread.handle_interrupt](../method/Thread/s/handle_interrupt.md) as well as instance and singleton methods
      [Thread.pending_interrupt?](../method/Thread/s/pending_interrupt=3f.md) for asynchronous handling of exceptions
    - 追加: [Thread#backtrace_locations](../method/Thread/i/backtrace_locations.md) [Kernel?.caller_locations](../method/Kernel/m/caller_locations.md) に似た情報を返します
    - 新規クラス: [Thread::Backtrace::Location](../class/Thread=3a=3aBacktrace=3a=3aLocation.md) to hold backtrace location
      information. These are returned by [Thread#backtrace_locations](../method/Thread/i/backtrace_locations.md) and
      [Kernel?.caller_locations](../method/Kernel/m/caller_locations.md)
    - 非互換: [Thread#join](../method/Thread/i/join.md), [Thread#value](../method/Thread/i/value.md) は対象のスレッドがメインスレッドか現在のスレッドである場合、
      [ThreadError](../class/ThreadError.md) を発生させます

  - [Time](../class/Time.md)
    - 返り値変更:
      - [Time#to_s](../method/Time/i/to_s.md) now returns US-ASCII encoding instead of BINARY.

  - [TracePoint](../class/TracePoint.md)
    - new class. This class is replacement of set_trace_func.
      Easy to use and efficient implementation.

  - toplevel
    - added method:
      - added main.define_method which defines a global function.
      - added main.using, which imports refinements into the current file or
        eval string. [experimental]

### 組み込みクラスの互換性 (機能追加とバグ修正を除く)

  - [Array#values_at](../method/Array/i/values_at.md)
    上を参照

  - [String#lines](../method/String/i/lines.md), [String#chars](../method/String/i/chars.md), [String#codepoints](../method/String/i/codepoints.md), [String#bytes](../method/String/i/bytes.md)
    これらのメソッドはもはや [Enumerator](../class/Enumerator.md) を返しませんが、ブロックを与えた場合の動作は後方互換性のためまだサポートしています。
    ```text
        str.lines.with_index(1) {|line, lineno| ... } # str.lines が配列を返すのでもう動かない
        str.each_line.with_index(1) {|line, lineno| ... } # このように each_line に置き換える
    ```

  - `IO#lines`, `IO#chars`, `IO#codepoints`, `IO#bytes`, `ARGF#lines`, `ARGF#chars`,
    `ARGF#bytes`, `StringIO#lines`, `StringIO#chars`, `StringIO#codepoints`, `StringIO#bytes`,
    `Zlib::GzipReader#lines`, `Zlib::GzipReader#bytes`
    - これらのメソッドは非推奨になりました。each_line, each_byte, each_char, each_codepoint を使ってください。

  - Proc#==, m:Proc#eql?
    - 削除されました。2つの Proc オブジェクトは同じオブジェクトである場合のみ等しい。

  - `Fixnum`, `Bignum`, [Float](../class/Float.md)
    - フリーズされました。

  - [Signal?.trap](../method/Signal/m/trap.md)
    - 上を参照

  - Onigmo をマージしました。
    <https://github.com/k-takata/Onigmo>

  - The :close_others option is true by default for system() and exec().
    Also, the close-on-exec flag is set by default for all new file descriptors.
    This means file descriptors doesn't inherit to spawned process unless
    explicitly requested such as system(..., fd=>fd).

  - Kernel#respond_to? against a protected method now returns false
    unless the second argument is true.

  - [Object#respond_to_missing?](../method/Object/i/respond_to_missing=3f.md), [Object#initialize_clone](../method/Object/i/initialize_clone.md), [Object#initialize_dup](../method/Object/i/initialize_dup.md)
    - private になりました

  - [Thread#join](../method/Thread/i/join.md), [Thread#value](../method/Thread/i/value.md)
    - 上を参照

  - [`Mutex#lock`](../method/Thread=3a=3aMutex/i/lock.md), [`Mutex#unlock`](../method/Thread=3a=3aMutex/i/unlock.md), [`Mutex#try_lock`](../method/Thread=3a=3aMutex/i/try_lock.md), [`Mutex#synchronize`](../method/Thread=3a=3aMutex/i/synchronize.md), [`Mutex#sleep`](../method/Thread=3a=3aMutex/i/sleep.md)
    - 上を参照

### 標準添付ライブラリの更新 (優れたもののみ)

  - [cgi](../library/cgi.md)
    - HTML5 用のタグメーカーを追加しました
    - [CGI#header](../method/CGI/i/header.md) は `CGI#http_header` に名前を変更しました。[CGI#header](../method/CGI/i/header.md) は別名として残っています。
    - HTML5 用のタグメーカーを呼び出すと [CGI#header](../method/CGI/i/header.md) を header 要素を生成するために上書きします。

  - [csv](../library/csv.md)
    - CSV.dump と CSV.load を削除しました。ユーザーを危険なシリアライゼーションに関する脆弱性から保護するためです。

  - iconv
    - 削除しました。[String#encode](../method/String/i/encode.md) を使ってください。

  - [io/console](../library/io=2fconsole.md)
    - 追加: [IO#cooked](../method/IO/i/cooked.md) which sets the terminal to cooked mode within the given block.
    - 追加: [IO#cooked!](../method/IO/i/cooked=21.md) which sets the terminal to cooked.
    - 拡張: [IO#raw](../method/IO/i/raw.md), [IO#raw!](../method/IO/i/raw=21.md), [IO#getch](../method/IO/i/getch.md) キーワード引数 :min, :time を受け付けます。

  - [io/wait](../library/io=2fwait.md)
    - 追加: [IO#wait_writable](../method/IO/i/wait_writable.md)
    - 追加: [IO#wait_readable](../method/IO/i/wait_readable.md) は [IO#wait](../method/IO/i/wait.md) の別名です。

  - [json](../library/json.md)
    - 1.7.7 に更新

  - [net/http](../library/net=2fhttp.md)
    - 新機能
      - Proxies are now automatically detected from the http_proxy environment
        variable.  See [Net::HTTP.new](../method/Net=3a=3aHTTP/s/new.md) for details.
      - gzip and deflate compression are now requested for all requests by
        default.  See Net::HTTP for details.
      - SSL sessions are now reused across connections for a single instance.
        This speeds up connection by using a previously negotiated session.
      - Requests may be created from a URI which sets the request_uri and host
        header of the request (but does not change the host connected to).
      - Responses contain the URI requested which allows easier implementation of
        redirect following.
    - 追加: [Net::HTTP#local_host](../method/Net=3a=3aHTTP/i/local_host.md)
    - 追加: [Net::HTTP#local_host=](../method/Net=3a=3aHTTP/i/local_host=3d.md)
    - 追加: [Net::HTTP#local_port](../method/Net=3a=3aHTTP/i/local_port.md)
    - 追加: [Net::HTTP#local_port=](../method/Net=3a=3aHTTP/i/local_port=3d.md)
    - 拡張: `Net::HTTP#connect` uses local_host and local_port if specified.

  - [net/imap](../library/net=2fimap.md)
    - 追加: [Net::IMAP.default_port](../method/Net=3a=3aIMAP/s/default_port.md)
    - 追加: [Net::IMAP.default_imap_port](../method/Net=3a=3aIMAP/s/default_imap_port.md)
    - 追加: [Net::IMAP.default_tls_port](../method/Net=3a=3aIMAP/s/default_tls_port.md)
    - 追加: [Net::IMAP.default_ssl_port](../method/Net=3a=3aIMAP/s/default_ssl_port.md)
    - 追加: [Net::IMAP.default_imaps_port](../method/Net=3a=3aIMAP/s/default_imaps_port.md)

  - [objspace](../library/objspace.md)
    - 追加: [ObjectSpace?.reachable_objects_from](../method/ObjectSpace/m/reachable_objects_from.md)

  - [openssl](../library/openssl.md)
    - Consistently raise an error when trying to encode nil values. All instances
      of OpenSSL::ASN1::Primitive now raise TypeError when calling to_der on an
      instance whose value is nil. All instances of OpenSSL::ASN1::Constructive
      raise NoMethodError in the same case. Constructing such values is still
      permitted.
    - TLS 1.1 & 1.2 support by setting OpenSSL::SSL::SSLContext#ssl_version to
      :TLSv1_2, :TLSv1_2_server, :TLSv1_2_client or :TLSv1_1, :TLSv1_1_server
      :TLSv1_1_client. The version being effectively used can be queried
      with OpenSSL::SSL#ssl_version. Furthermore, it is also possible to
      blacklist the new TLS versions with OpenSSL::SSL:OP_NO_TLSv1_1 and
      OpenSSL::SSL::OP_NO_TLSv1_2.
    - Added OpenSSL::SSL::SSLContext#renegotiation_cb. A user-defined callback
      may be set which gets called whenever a new handshake is negotiated. This
      also allows to programmatically decline (client) renegotiation attempts.
    - Support for "0/n" splitting of records as BEAST mitigation via
      OpenSSL::SSL::OP_DONT_INSERT_EMPTY_FRAGMENTS.
    - The default options for OpenSSL::SSL::SSLContext have changed to
      OpenSSL::SSL::OP_ALL & ~OpenSSL::SSL::OP_DONT_INSERT_EMPTY_FRAGMENTS
      instead of OpenSSL::SSL::OP_ALL only. This enables the countermeasure for
      the BEAST attack by default.
    - OpenSSL requires passwords for decrypting PEM-encoded files to be at least
      four characters long. This led to awkward situations where an export with
      a password with fewer than four characters was possible, but accessing the
      file afterwards failed. OpenSSL::PKey::RSA, OpenSSL::PKey::DSA and
      OpenSSL::PKey::EC therefore now enforce the same check when exporting a
      private key to PEM with a password - it has to be at least four characters
      long.
    - SSL/TLS support for the Next Protocol Negotiation extension. Supported
      with OpenSSL 1.0.1 and higher.
    - OpenSSL::OPENSSL_FIPS allows client applications to detect whether OpenSSL
      is FIPS-enabled. OpenSSL.fips_mode= allows turning on and off FIPS mode
      manually in order to adapt to situations where FIPS mode would be an
      explicit requirement.
    - Authenticated Encryption with Associated Data (AEAD) is supported via
      Cipher#auth_data= and Cipher#auth_tag/Cipher#auth_tag=.
      Currently (OpenSSL 1.0.1c), only GCM mode is supported.

  - [ostruct](../library/ostruct.md)
    - 追加: [OpenStruct#\[\]](../method/OpenStruct/i/=5b=5d.md), [OpenStruct#\[\]=](../method/OpenStruct/i/=5b=5d=3d.md)
    - 追加: [OpenStruct#each_pair](../method/OpenStruct/i/each_pair.md)
    - 追加: [OpenStruct#eql?](../method/OpenStruct/i/eql=3f.md)
    - 追加: [OpenStruct#hash](../method/OpenStruct/i/hash.md)
    - 追加: [OpenStruct#to_h](../method/OpenStruct/i/to_h.md)
    - 拡張: [OpenStruct.new](../method/OpenStruct/s/new.md) OpenStruct/Struct のインスタンスを受け付けるようになりました

  - [pathname](../library/pathname.md)
    - 拡張: [Pathname#find](../method/Pathname/i/find.md) ブロックを与えない場合 Enumerator を返すようになりました

  - [rake](../library/rake.md)
    - 0.9.5 に更新
      - This version is backwards-compatible with previous rake versions and
        contains many bug fixes.
      - See <https://github.com/ruby/rake/blob/master/History.rdoc#095>

  - [rdoc](../library/rdoc.md)
    - 4.0 に更新
      - 後方互換性に関する大きな変更がありました。注目すべき最大の変更は ri データベースのフォーマットを変更したことです。
        (riのデータを再生成する必要があります)
        その他のAPIの変更は内部的なものなので、ほとんどのユーザーに影響はないでしょう。
    - 注目すべき変更
      - riがページをサポートしました。これはGemでも動作します。
        ```console
          # ruby に含まれるページリストを表示する
          $ ri ruby:
          # リテラルに関する文法を表示する
          $ ri ruby:syntax/literals
          # RSpec の README を表示する
          $ ri rspec:README
        ```
    - Markdown をサポートしました。[RDoc::Markdown](../class/RDoc=3a=3aMarkdown.md) を見てください。
    - <https://github.com/ruby/rdoc/blob/master/History.rdoc>

  - [resolv](../library/resolv.md)
    - 追加: [Resolv::DNS#timeouts=](../method/Resolv=3a=3aDNS/i/timeouts=3d.md)
    - 追加: `Resolv::DNS::Config#timeouts=`

  - [rexml](../library/rexml.md)
    - [REXML::Document#write](../method/REXML=3a=3aDocument/i/write.md) はハッシュ引数をサポートしました
    - [REXML::Document#write](../method/REXML=3a=3aDocument/i/write.md) は :encoding オプションをサポートしました。
      XMLドキュメントのエンコーディングを変更します。:encodingオプションなしの場合、XMLの宣言をXMLドキュメントのエンコーディングとして使います。

  - [rubygems](../library/rubygems.md)
    - 2.0.0に更新。
      - RubyGems 2.0.0 は以下の改良を含みます。
      - Ruby2.0.0以上で導入した default gems のサポートを改良しました
      - 任意のメタデータを持てるようになりました `Gem::Specification#metadata`
      - \`gem search\` はデフォルトでリモートの gem を探すようになりました
      - --document オプションを追加して --rdoc, --ri オプションを置き換えました。
        --no-document オプションを使ってドキュメントの生成を無効化できます。
        --document=rdoc を使うと rdoc だけを生成できます。
      - デフォルトでは ri フォーマットだけを生成します
      - \`gem server\` はHTMLを生成するために `RDoc::Servlet` を使います。
      - <https://github.com/rubygems/rubygems/blob/master/History.txt>

  - [shellwords](../library/shellwords.md)
    - [Shellwords?.shellescape](../method/Shellwords/m/shellescape.md) 与えられたオブジェクトを to_s で文字列化するようになりました
    - [Shellwords?.shelljoin](../method/Shellwords/m/shelljoin.md) 与えられた配列に含まれる文字列でないオブジェクトは to_s で文字列化するようになりました

  - [stringio](../library/stringio.md)
    - 非推奨: `StringIO#lines`, `StringIO#bytes`, `StringIO#chars`, `StringIO#codepoints`

  - [syslog](../library/syslog.md)
    - 追加: [Syslog::Logger](../class/Syslog=3a=3aLogger.md) Syslog上に Logger API を提供します
    - 追加: `Syslog::Priority`, [Syslog::Level](../class/Syslog=3a=3aLevel.md), [Syslog::Option](../class/Syslog=3a=3aOption.md), [Syslog::Macros](../class/Syslog=3a=3aMacros.md)
      システムで定義されている定数を簡単に検知するために導入しました。

  - [tmpdir](../library/tmpdir.md)
    - 非互換: [Dir.mktmpdir](../method/Dir/s/mktmpdir.md) は [FileUtils?.remove_entry_secure](../method/FileUtils/m/remove_entry_secure.md) ではなく [FileUtils?.remove_entry](../method/FileUtils/m/remove_entry.md) を使うようになりました。
      これはアプリケーションが作成された一時ディレクトリを全ユーザから書き込み可能に変更すべきではないことを意味します。

  - [yaml](../library/yaml.md)
    - Syck は削除しました。インストールされている libyaml に依存するようになりました。
    - libyaml がインストールされていない場合のために libyaml を同梱するようになりました。

  - [zlib](../library/zlib.md)
    - [Zlib::Inflate](../class/Zlib=3a=3aInflate.md), [Zlib::Deflate](../class/Zlib=3a=3aDeflate.md) にストリーミングサポートを追加しました。
      大量のメモリを消費せずに、ストリームを処理できるようになりました。
    - 展開用に新しい戦略を追加しました。`Zlib::RLE`, `Zlib::FIXED`
    - Zlib のストリームは GVL なしで処理するようになりました。gzip, zlib, deflate のストリームを並列に処理できるようになりました。
    - 非推奨: `Zlib::GzipReader#lines`, `Zlib::GzipReader#bytes`

### 標準添付ライブラリの互換性 (機能追加とバグ修正を除く)

  - [OpenStruct](../class/OpenStruct.md) の新しいメソッドはカスタム属性の名前を衝突するかもしれません。
    "each_pair", "eql?", "hash" or "to_h".

  - [Dir.mktmpdir](../method/Dir/s/mktmpdir.md) は lib/tmpdir.rb にあります。上を参照してください。
  
### C API の更新

  - 追加: NUM2SHORT(), NUM2USHORT()
    これは NUM2INT に似ています。

  - 追加: rb_newobj_of(), NEWOBJ_OF()
    与えられたクラスの新しいオブジェクトを作ります
