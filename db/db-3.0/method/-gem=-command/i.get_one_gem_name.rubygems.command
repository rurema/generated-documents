names=get_one_gem_name
visibility=public
kind=defined
source_location=manual/api/rubygems/command.md
since_by_name=get_one_gem_name=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def get_one_gem_name -> String

コマンドラインで与えられた Gem の名前を一つ取得して返します。

- **raise** `Gem::CommandLineError` -- コマンドライン引数から Gem の名前を一つだけ取得できない場合に発生します。

