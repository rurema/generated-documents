names=init
visibility=public 
kind=defined

--- init(app_name = 'rake')

コマンドラインオプションとアプリケーション名を初期化します。

//emlist[例][ruby]{
# Rakefile での記載例とする

task default: :test
task :test

Rake.application.name # => "rake"
Rake.application.init("MyApp") # => ["default"]
Rake.application.name # => "MyApp"
//}



