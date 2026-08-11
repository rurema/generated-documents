# Gem::DependencyInstaller.new

### def Gem::DependencyInstaller.new(options = {}) -> Gem::DependencyInstaller

自身を初期化します。

オプションとして以下のものを利用できます。

- **`:cache_dir`**:
  *.gem ファイルを保存するディレクトリを指定します。
- **`:domain`**:
  :local (カレントディレクトリのみ検索します), :remote (`Gem.sources` を検索します),
  :both (:local, :remote の両方を検索します) のいずれかを指定可能です。
- **`:env_shebang`**:
  [Gem::Installer.new](../../../method/Gem=3a=3aInstaller/s/new.md) を参照してください。
- **`:force`**:
  バージョンチェックとセキュリティポリシーのチェックを行わずにインストールを実行します。
  ただし、署名付きの Gem のみをインストールするポリシーが指定されている場合は上記のチェックを実行します。
- **`:format_executable`**:
  [Gem::Installer.new](../../../method/Gem=3a=3aInstaller/s/new.md) を参照してください。
- **`:ignore_dependencies`**:
  依存している Gem をインストールしません。
- **`:install_dir`**:
   Gem をインストールするディレクトリです。
- **`:security_policy`**:
  セキュリティポリシーを指定します。
- **`:user_install`**:
  false を指定するとユーザのホームディレクトリにインストールしません。
  nil を指定するとユーザのホームディレクトリにインストールしようとしますが、警告を表示します。
- **`:wrappers`**:
  真を指定するとラッパーをインストールします。
  偽を指定すると、シンボリックリンクをインストールします。

- **SEE** [Gem::Installer.new](../../../method/Gem=3a=3aInstaller/s/new.md), [Gem::Installer#install](../../../method/Gem=3a=3aInstaller/i/install.md), [Gem::Security](../../../class/Gem=3a=3aSecurity.md)
