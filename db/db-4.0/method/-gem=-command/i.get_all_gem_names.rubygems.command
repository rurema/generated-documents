names=get_all_gem_names
visibility=public
kind=defined
source_location=manual/api/rubygems/command.md
since_by_name=get_all_gem_names=1.9.3
until_by_name=

### def get_all_gem_names -> Array

コマンドラインで与えられた Gem の名前を全て取得して返します。

- **raise** `Gem::CommandLineError` -- コマンドライン引数から Gem の名前を取得できない場合に発生します。

