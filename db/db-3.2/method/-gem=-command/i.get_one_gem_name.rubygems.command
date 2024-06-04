names=get_one_gem_name
visibility=public
kind=defined
source_location=refm/api/src/rubygems/command.rd:84

--- get_one_gem_name -> String

コマンドラインで与えられた Gem の名前を一つ取得して返します。

@raise Gem::CommandLineError コマンドライン引数から Gem の名前を一つだけ取得できない場合に発生します。

