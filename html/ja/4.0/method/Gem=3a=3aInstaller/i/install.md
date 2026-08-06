# Gem::Installer#install

### def install -> Gem::Specification

Gem をインストールします。

以下のディレクトリ構造で Gem をインストールします。

```text
@gem_home/
  cache/<gem-version>.gem              #=> インストールした Gem のコピー
  gems/<gem-version>/...               #=> インストール時に展開したファイル
  specifications/<gem-version>.gemspec #=> gemspec ファイル
```

- **return** -- ロードされた [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) のインスタンスを返します。

- **raise** `Gem::InstallError` -- 要求された Ruby のバージョンを満たしていない場合に発生します。

- **raise** `Gem::InstallError` -- 要求された RubyGems のバージョンを満たしていない場合に発生します。

- **raise** `Gem::InstallError` -- [Zlib::GzipFile::Error](../../../class/Zlib=3a=3aGzipFile=3a=3aError.md) が発生した場合に発生します。
