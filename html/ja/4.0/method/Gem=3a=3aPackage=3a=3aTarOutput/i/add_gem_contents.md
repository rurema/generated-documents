# Gem::Package::TarOutput#add_gem_contents

### def add_gem_contents{|data_tar_writer| ... } -> self

gem-format な tar ファイル内の data.tar.gz にファイルを追加するためのメソッドです。

ブロックには data.tar.gz に紐付いた [Gem::Package::TarWriter](../../../class/Gem=3a=3aPackage=3a=3aTarWriter.md) のインスタンスが渡されます。このブロックパラメータには
[Gem::Specification](../../../class/Gem=3a=3aSpecification.md) を追加するための metadata, metadata= という特異メソッドが追加されています。
