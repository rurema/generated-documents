# library rubygems

RubyGems を扱うためのクラスやモジュールが定義されているライブラリです。


### gem コマンドの使い方 {#gem_command}

```console
$ gem help
  
  RubyGems は Ruby のための高機能なパッケージ管理ツールです。
  これはより多くの情報へのポインタを含んでいる基本的なヘルプメッセージです。
  
    使用方法:
      gem -h/--help
      gem -v/--version
      gem command [arguments...] [options...]
  
    例:
      gem install rake
      gem list --local
      gem build package.gemspec
      gem help install
  
    さらにヘルプ:
      gem help commands            全ての 'gem' コマンドをリストアップします
      gem help examples            いくつかの使用方法の例を表示します
      gem help platforms           プラットフォームに関する情報を表示します
      gem help <COMMAND>           COMMAND に関するヘルプを表示します
                                     (e.g. 'gem help install')
    より詳しい情報:
      https://rubygems.org
```

#### Gem パッケージをインストールする

例えば rak ( <https://rubygems.org/gems/rak> ) をインストールするには、以下のいずれかを実行します。

```console
$ gem install rak
$ sudo gem install rak
```

特定のバージョンの Gem パッケージをインストールするには以下のようにします。

```console
$ gem install rak --version 0.8.1    # バージョン 0.8.1 をインストールする
$ gem install rak --version '>= 0.5' # バージョン 0.5 以上のものをインストールする
```

Proxy サーバ経由で Gem パッケージをインストールするには以下のようにします。

```console
$ gem install rak -p http://user:password@proxy.example.com/
```

#### Gem パッケージをアンインストールする

例えば rak をアンインストールするには、以下のいずれかを実行します。

```console
$ gem uninstall rak
$ sudo gem uninstall rak
```

特定のバージョンの Gem パッケージをアンインストールするには以下のようにします。

```console
$ gem uninstall rak --version 0.8.1
```

#### Gem パッケージを更新する

インストールされている Gem パッケージを更新するには以下のようにします。

```console
$ gem update
$ sudo gem update
```

特定の Gem パッケージを更新するには以下のようにします。

```console
$ gem update rak
```

#### Gem パッケージを探す

パッケージ名から Gem パッケージを探すことができます。
'active' という文字列をパッケージ名に含むパッケージを探すには以下のようにします。

```console
$ gem search active       # デフォルトではリポジトリから検索します
$ gem search active -a    # -a オプションをつけると全てのバージョンを表示します
```

より詳細な条件で検索したい場合は query を使用してください。

```console
$ gem query -n ^rails$ -r # rails にちょうど一致するものを検索する
$ gem query -n ^rails -r  # rails で始まるものを検索する
```

パッケージの詳細からキーワード検索することはできません。

#### Gem パッケージを作成する

作成した gemspec ファイルを元にして Gem パッケージを簡単に作成できます。

```console
$ gem build <gemspec filename>
```

最小の gemspec は以下のようになります。ビルドするために必要な最小の gemspec なので出来上がるのはメタデータのみを含む Gem パッケージです。また、いくつかの警告が表示されます。

```ruby title="gemspec"
Gem::Specification.new do |s|
  s.name    = 'hello'
  s.version = '0.0.0'
  s.summary = 'hello summary'
end
```

実用的なライブラリを作成するための gemspec の例を示します。
警告メッセージが出力されないようにいくつか設定を追加しています。

```ruby title="gemspec"
Gem::Specification.new do |s|
  s.name              = 'hello'
  s.version           = '0.0.0'
  s.summary           = 'hello summary'
  s.files             = ['lib/hello.rb']
  s.authors           = ['Hello Author']
  s.email             = 'hello_author@example.com'
  s.homepage          = 'http://example.com/hello/'
  s.description       = 'hello description'
end
```

- **`name`**:
  この Gem の名前を指定します。
- **`version`**:
  この Gem のバージョンを指定します。
- **`summary`**:
  この Gem の短い説明を指定します。
- **`files`**:
  この Gem に含むファイルのリストを指定します。
- **`authors`**:
  この Gem の作者のリストを指定します。
- **`email`**:
  この Gem の作者の連絡先メールアドレスを指定します。
- **`homepage`**:
  この Gem のウェブサイトの URI を指定します。
- **`description`**:
  この Gem の長い説明を指定します。

実行可能なファイル (コマンド) を含む場合の gemspec は以下のようになります。

```ruby title="gemspec"
Gem::Specification.new do |s|
  s.name              = 'hello'
  s.version           = '0.0.0'
  s.summary           = 'hello summary'
  s.files             = ['bin/hello', 'lib/hello.rb']
  s.executables       = ['hello']
  s.authors           = ['Hello Author']
  s.email             = 'hello@example.com'
  s.homepage          = 'http://example.com/hello'
  s.description       = 'hello description'
end
```

ライブラリの例に加えて executables を追加しています。

また、以下のように Rakefile にタスクを追加することもできます。

```ruby title="gemspec"
require 'rake/gempackagetask'

PKG_FILES = FileList[
  'lib/hello.rb',
  'spec/*'
]
spec = Gem::Specification.new do |s|
  s.name             = 'hello'
  s.version          = '0.0.1'
  s.author           = 'Hello Author'
  s.email            = 'hello@example.com'
  s.homepage         = 'http://example.com/hello'
  s.platform         = Gem::Platform::RUBY
  s.summary          = 'Hello Gem'
  s.files            = PKG_FILES.to_a
  s.require_path     = 'lib'
  s.has_rdoc         = false
  s.extra_rdoc_files = ['README']
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end
```

- **SEE** [Gem::Specification](../class/Gem=3a=3aSpecification.md), [rake](../library/rake.md)

### gem コマンドの設定

  - GEM_HOME Gem のホームディレクトリ
  - GEM_PATH Gem のサーチパス
  - $HOME/.gemrc

環境変数 GEM_HOME, GEM_PATH を設定する事によって Gem コマンドの動作を変更できます。
また、ホームディレクトリに .gemrc という YAML フォーマットで書かれたファイルを置くことでも動作を変更できます。

```yaml title="例"
--- 
:backtrace: false
:benchmark: false
:bulk_threshold: 1000
:sources:
- https://rubygems.org
:update_sources: true
:verbose: true
gemhome: /home/hoge/.gems
gempath: 
- /usr/local/lib/ruby/gems/1.9
gem: --no-rdoc --no-ri
```

### 参考

- **Rubyist Magazine - シリーズ パッケージマネジメント 【第 1 回】 RubyGems (1)**:
  <https://magazine.rubyist.net/articles/0006/0006-PackageManagement.html>
- **Rubyist Magazine - シリーズ パッケージマネジメント 【第 2 回】 RubyGems (2)**:
  <https://magazine.rubyist.net/articles/0010/0010-PackageManagement.html>
