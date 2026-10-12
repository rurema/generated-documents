# 環境変数

Rubyインタプリタは以下の環境変数を参照します。

- **`RUBYOPT`**:
  Rubyインタプリタにデフォルトで渡すオプションを指定します。

  指定できないオプションを指定した場合、例外が発生します。

  ```console
  $ RUBYOPT=-y ruby -e ""
  ruby: invalid switch in RUBYOPT: -y (RuntimeError)
  ```

  sh系

  ```console
        RUBYOPT='-Ke -rkconv'
        export RUBYOPT
  ```

  csh系

  ```console
        setenv RUBYOPT '-Ke -rkconv'
  ```

  MS-DOS系

  ```console
        set RUBYOPT=-Ke -rkconv
  ```

- **`RUBYPATH`**:

  -S オプション指定時に、環境変数 PATH による
  Ruby スクリプトの探索に加えて、この環境変数で指定したディレクトリも
  探索対象になります(PATH の値よりも優先します)。
  起動オプションの詳細に関しては[spec/rubycmd](../doc/spec=2frubycmd.md) を参照してください。

  sh系

  ```console
        RUBYPATH=$HOME/ruby:/opt/ruby
        export RUBYPATH
  ```

  csh系

  ```console
        setenv RUBYPATH $HOME/ruby:/opt/ruby
  ```

  MS-DOS系

  ```console
        set RUBYPATH=%HOMEDRIVE%%HOMEPATH%\ruby;\opt\ruby
  ```

- **`RUBYLIB`**:

  Rubyライブラリの探索パス[m:$:]のデフォル
  ト値の前にこの環境変数の値を付け足します。

  sh系

  ```console
        RUBYLIB=$HOME/ruby/lib:/opt/ruby/lib
        export RUBYLIB
  ```

  csh系

  ```console
        setenv RUBYLIB $HOME/ruby/lib:/opt/ruby/lib
  ```

  MS-DOS系

  ```console
        set RUBYLIB=%HOMEDRIVE%%HOMEPATH%\ruby\lib;\opt\ruby\lib
  ```

- **`RUBYSHELL`**:

  この環境変数は [platform/mswin32](../doc/platform=2fmswin32.md)版、[platform/mingw32](../doc/platform=2fmingw32.md)版のrubyで
  のみ有効です。

  [Kernel?.system](../method/Kernel/m/system.md) でコマンドを実行するときに使用するシェル
  を指定します。この環境変数が省略されていればCOMSPECの値を
  使用します。

- **`PATH`**:

  [Kernel?.system](../method/Kernel/m/system.md)などでコマンドを実行するときに検索するパスです。
  設定されていないとき(nilのとき)は
  "/usr/local/bin:/usr/ucb:/usr/bin:/bin:."
  で検索されます。

- **`RUBY_GC_*`**:

  [GC#tuning_gc](../class/GC.md#tuning_gc) を参照。

- **`RUBY_MN_THREADS`**:

  `1` を設定すると main [Ractor](../class/Ractor.md) で M:N スレッドスケジューラが有効になります。デフォルトは未設定です。

- **`RUBY_MAX_CPU`**:

  M:N スレッドスケジューラが使うネイティブスレッドの最大数を指定します。デフォルトはオンラインの CPU 数です。main 以外の [Ractor](../class/Ractor.md) は M:N スレッドスケジューラを使うので、main 以外の [Ractor](../class/Ractor.md) が使うネイティブスレッドの最大数にもなります。

- **`RUBY_FREE_AT_EXIT`**:

  設定すると、終了時に動的に確保したメモリをすべて解放しようとします。デフォルトは未設定です。

- **`RUBY_THREAD_TIMESLICE`**:

  スレッドのタイムスライス(quantum)のデフォルトをミリ秒で指定します。デフォルトは 100 ミリ秒です。

- **`RUBY_PAGER`**:

  `--help` の出力に使うページャコマンドを指定します。デフォルトは環境変数 `PAGER` の値です。起動オプションの詳細に関しては [spec/rubycmd](../doc/spec=2frubycmd.md) を参照してください。

- **`RUBY_BOX`**:

  `1` を設定すると [Ruby::Box](../class/Ruby=3a=3aBox.md) が有効になり、[Ruby::Box.new](../method/Ruby=3a=3aBox/s/new.md) が使えるようになります。実験的な機能です。

- **`RUBY_IO_BUFFER_DEFAULT_SIZE`**:

  [IO::Buffer](../class/IO=3a=3aBuffer.md) のデフォルトのバッファサイズを指定します。

- **`RUBY_CRASH_REPORT`**:

  クラッシュレポートを保存するパス名のテンプレートを指定します。デフォルトは指定なしです。起動オプション `--crash-report=template` と同じ意味です([spec/rubycmd](../doc/spec=2frubycmd.md) を参照)。[feature:19790]

  テンプレートには以下の指定子を使えます。
  ```text
      %%    % そのもの
      %e    実行ファイルの basename
      %E    実行ファイルのパス名(/ は ! に置換されます)
      %f    プログラム名 $0 の basename
      %F    プログラム名 $0 のパス名(/ は ! に置換されます)
      %p    プロセス ID
      %t    ダンプした時刻(エポックからの秒数)
      %NNN  8 進数の文字コード
  ```

  末尾の単独の `%` と、上記以外の文字が続く `%` は捨てられます。`/` はディレクトリの区切りとして解釈されます。

  テンプレートの先頭が `|` の場合は、その後ろをコマンドラインとして実行し、レポートをパイプで渡します(テンプレートの展開前に空白で引数に分割されます)。

- **`RUBY_YJIT_ENABLE`**:

  設定すると、YJIT を有効にして起動します。YJIT を組み込まずにビルドした Ruby では効果がありません。[RubyVM::YJIT](../class/RubyVM=3a=3aYJIT.md) も参照してください。

- **`RUBY_ZJIT_ENABLE`**:

  設定すると、ZJIT を有効にして起動します。[RubyVM::ZJIT](../class/RubyVM=3a=3aZJIT.md) も参照してください。

- **`RUBY_THREAD_VM_STACK_SIZE`**:

  スレッド生成時に使用される VM スタックのサイズをバイト数で指定します。

- **`RUBY_THREAD_MACHINE_STACK_SIZE`**:

  スレッド生成時に使用されるマシンスタックのサイズをバイト数で指定します。

- **`RUBY_FIBER_VM_STACK_SIZE`**:

  Fiber 生成時に使用される VM スタックのサイズをバイト数で指定します。

- **`RUBY_FIBER_MACHINE_STACK_SIZE`**:

  Fiber 生成時に使用されるマシンスタックのサイズをバイト数で指定します。

  これらのスタックサイズ関連の環境変数は実装依存であり、Ruby のバージョンによって
  変更される可能性があります。値を小さくすることでより多くの Fiber や Thread を
  同時に実行できるようになる場合がありますが、[SystemStackError](../class/SystemStackError.md) やセグメンテー
  ション違反が発生しやすくなります。
