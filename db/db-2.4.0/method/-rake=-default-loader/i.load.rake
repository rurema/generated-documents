names=load
visibility=public 
kind=defined

--- load(filename)

与えられたファイルをロードします。

@param filename ロードするファイル名を指定します。

//emlist[][ruby]{
require 'rake'

loader = Rake::DefaultLoader.new
loader.load("path/to/Rakefile") # => true
//}
