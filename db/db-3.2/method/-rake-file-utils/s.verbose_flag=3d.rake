names=verbose_flag=
visibility=public
kind=defined
source_location=refm/api/src/rake/RakeFileUtils:106

--- verbose_flag=(flag)

詳細を表示するかどうか設定します。

@param flag 詳細を表示するかどうか指定します。真を指定すると詳細を表示します。


//emlist[][ruby]{
# Rakefile での記載例とする

task default: :sample_file_task

file :sample_file_task do |t|
  # --verbose で rake を実行する
  p RakeFileUtils.verbose_flag # => true
  RakeFileUtils.verbose_flag = false
  p RakeFileUtils.verbose_flag # => false
end
//}


