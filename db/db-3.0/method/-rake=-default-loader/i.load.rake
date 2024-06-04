names=load
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__DefaultLoader:7

--- load(filename)

与えられたファイルをロードします。

@param filename ロードするファイル名を指定します。

//emlist[][ruby]{
require 'rake'

loader = Rake::DefaultLoader.new
loader.load("path/to/Rakefile") # => true
//}
