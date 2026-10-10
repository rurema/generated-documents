# Gem::ConfigFile#concurrent_downloads

### def concurrent_downloads -> Integer
{: since="2.6.0"}

同時にダウンロードする gem の数を返します。

デフォルトは 8([Gem::ConfigFile::DEFAULT_CONCURRENT_DOWNLOADS](../../../method/Gem=3a=3aConfigFile/c/DEFAULT_CONCURRENT_DOWNLOADS.md))です。

```ruby title="例"
Gem.configuration.concurrent_downloads # => 8
```

- **SEE** [Gem::ConfigFile#concurrent_downloads=](../../../method/Gem=3a=3aConfigFile/i/concurrent_downloads=3d.md)
