# module FileUtils

基本的なファイル操作を集めたモジュールです。

### オプションの説明 {#options}

各メソッドでキーワード引数として指定できるオプションの説明です。
メソッドごとに指定できるキーワードは決まっています。
未対応のキーワードを指定すると [ArgumentError](../class/ArgumentError.md) が発生します。

- **`:noop`**:
  真を指定すると実際の処理は行いません。
- **`:preserve`**:
  真を指定すると更新時刻と、可能なら所有ユーザ・所有グループもコピーします。
- **`:verbose`**:
  真を指定すると詳細を出力します。
- **`:mode`**:
  パーミッションを8進数で指定します。
- **`:force`**:
  真を指定すると作業中すべての [StandardError](../class/StandardError.md) を無視します。
- **`:nocreate`**:
  真を指定するとファイルを作成しません。
- **`:dereference_root`**:
  真を指定すると src についてだけシンボリックリンクの指す
  内容をコピーします。偽の場合はシンボリックリンク自体をコピーします。
- **`:remove_destination`**:
  真を指定するとコピーを実行する前にコピー先を削除します。
- **`:secure`**:
  真を指定するとファイルの削除に [FileUtils?.remove_entry_secure](../method/FileUtils/m/remove_entry_secure.md) を使用します。
- **`:mtime`**:
  時刻を [Time](../class/Time.md) か、起算時からの経過秒数を数値で指定します。
- **`:parents`**:
  真を指定すると指定したディレクトリの親ディレクトリも含めて削除します。
- **`:owner`**:
  ユーザー名か uid を指定すると所有ユーザを変更します。
- **`:group`**:
  グループ名か gid を指定すると所有グループを変更します。

## Class Methods

- [collect_method](../method/FileUtils/s/collect_method.md)
- [commands](../method/FileUtils/s/commands.md)
- [have_option?](../method/FileUtils/s/have_option=3f.md)
- [options](../method/FileUtils/s/options.md)
- [options_of](../method/FileUtils/s/options_of.md)

## Instance Methods

- [ruby](../method/FileUtils/i/ruby.md)
- [safe_ln](../method/FileUtils/i/safe_ln.md)
- [sh](../method/FileUtils/i/sh.md)
- [split_all](../method/FileUtils/i/split_all.md)

## Module Functions

- [cd](../method/FileUtils/m/cd.md)
- [chdir](../method/FileUtils/m/chdir.md)
- [chmod](../method/FileUtils/m/chmod.md)
- [chmod_R](../method/FileUtils/m/chmod_R.md)
- [chown](../method/FileUtils/m/chown.md)
- [chown_R](../method/FileUtils/m/chown_R.md)
- [cmp](../method/FileUtils/m/cmp.md)
- [compare_file](../method/FileUtils/m/compare_file.md)
- [identical?](../method/FileUtils/m/identical=3f.md)
- [compare_stream](../method/FileUtils/m/compare_stream.md)
- [copy](../method/FileUtils/m/copy.md)
- [cp](../method/FileUtils/m/cp.md)
- [copy_entry](../method/FileUtils/m/copy_entry.md)
- [copy_file](../method/FileUtils/m/copy_file.md)
- [copy_stream](../method/FileUtils/m/copy_stream.md)
- [cp_lr](../method/FileUtils/m/cp_lr.md)
- [cp_r](../method/FileUtils/m/cp_r.md)
- [getwd](../method/FileUtils/m/getwd.md)
- [pwd](../method/FileUtils/m/pwd.md)
- [install](../method/FileUtils/m/install.md)
- [link](../method/FileUtils/m/link.md)
- [ln](../method/FileUtils/m/ln.md)
- [ln_s](../method/FileUtils/m/ln_s.md)
- [symlink](../method/FileUtils/m/symlink.md)
- [ln_sf](../method/FileUtils/m/ln_sf.md)
- [ln_sr](../method/FileUtils/m/ln_sr.md)
- [makedirs](../method/FileUtils/m/makedirs.md)
- [mkdir_p](../method/FileUtils/m/mkdir_p.md)
- [mkpath](../method/FileUtils/m/mkpath.md)
- [mkdir](../method/FileUtils/m/mkdir.md)
- [move](../method/FileUtils/m/move.md)
- [mv](../method/FileUtils/m/mv.md)
- [remove](../method/FileUtils/m/remove.md)
- [rm](../method/FileUtils/m/rm.md)
- [remove_dir](../method/FileUtils/m/remove_dir.md)
- [remove_entry](../method/FileUtils/m/remove_entry.md)
- [remove_entry_secure](../method/FileUtils/m/remove_entry_secure.md)
- [remove_file](../method/FileUtils/m/remove_file.md)
- [rm_f](../method/FileUtils/m/rm_f.md)
- [safe_unlink](../method/FileUtils/m/safe_unlink.md)
- [rm_r](../method/FileUtils/m/rm_r.md)
- [rm_rf](../method/FileUtils/m/rm_rf.md)
- [rmtree](../method/FileUtils/m/rmtree.md)
- [rmdir](../method/FileUtils/m/rmdir.md)
- [touch](../method/FileUtils/m/touch.md)
- [uptodate?](../method/FileUtils/m/uptodate=3f.md)

## Constants

- [METHODS](../method/FileUtils/c/METHODS.md)
- [OPT_TABLE](../method/FileUtils/c/OPT_TABLE.md)
