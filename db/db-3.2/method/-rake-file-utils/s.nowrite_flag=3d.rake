names=nowrite_flag=
visibility=public
kind=defined
source_location=refm/api/src/rake/RakeFileUtils:73

--- nowrite_flag=(flag)

実際に動作を行うかどうか設定します。

@param flag 実際に動作を行うかどうかを指定します。真を指定すると動作を実行しません。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :sample_file_task

file :sample_file_task do |t|
  RakeFileUtils.nowrite_flag # => false
  RakeFileUtils.nowrite_flag = true
  RakeFileUtils.nowrite_flag # => true
end
//}

