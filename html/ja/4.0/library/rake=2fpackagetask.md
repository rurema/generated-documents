# library rake/packagetask

配布するパッケージ (zip, tar, etc...) を作成するためのタスクを定義します。

このライブラリをロードすると以下のタスクが使用可能になります。

- **`package`**:
  パッケージを作成します。
- **`clobber_package`**:
  作成したパッケージを削除します。このタスクは clobber タスクにも追加されます。
- **`repackage`**:
  パッケージが古くない場合でもパッケージを再作成します。
- **`PACKAGE_DIR/NAME-VERSION.tgz`**:
  [Rake::PackageTask#need_tar](../method/Rake=3a=3aPackageTask/i/need_tar.md) が真の場合 gzip された tar パッケージを作成します。
- **`PACKAGE_DIR/NAME-VERSION.tar.gz`**:
  [Rake::PackageTask#need_tar_gz](../method/Rake=3a=3aPackageTask/i/need_tar_gz.md) が真の場合 gzip された tar パッケージを作成します。
- **`PACKAGE_DIR/NAME-VERSION.tar.bz2`**:
  [Rake::PackageTask#need_tar_bz2](../method/Rake=3a=3aPackageTask/i/need_tar_bz2.md) が真の場合 bzip2 された tar パッケージを作成します。
- **`PACKAGE_DIR/NAME-VERSION.zip`**:
  [Rake::PackageTask#need_zip](../method/Rake=3a=3aPackageTask/i/need_zip.md) が真の場合 zip されたパッケージを作成します。

  ```ruby title="例"
  Rake::PackageTask.new("rake", "1.2.3") do |t|
    t.need_tar = true
    t.package_files.include("lib/**/*.rb")
  end
  ```
