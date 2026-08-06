# Gem::Package::TarOutput.open

### def Gem::Package::TarOutput.open(io, signer = nil){|data_tar_writer| ... }

gem-format な tar ファイル内の data.tar.gz にファイルを追加するためのメソッドです。

- **param** `io` -- gem-format な tar ファイルを扱うための IO を指定します。

- **param** `signer` -- [Gem::Security::Signer](../../../class/Gem=3a=3aSecurity=3a=3aSigner.md) のインスタンスを指定します。

- **SEE** [Gem::Package::TarOutput#add_gem_contents](../../../method/Gem=3a=3aPackage=3a=3aTarOutput/i/add_gem_contents.md)
