names=[]
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__FileList:375

--- [](*args) -> Rake::FileList

与えられたパターンをもとにして自身を初期化します。

@param args パターンを指定します。

//emlist[][ruby]{
require 'rake'

file_list1 = FileList.new('lib/**/*.rb', 'test/test*.rb')
file_list2 = FileList['lib/**/*.rb', 'test/test*.rb']

file_list1 == file_list2 # => true
//}

