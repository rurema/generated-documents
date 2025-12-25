names=verbose_flag
visibility=public
kind=defined
source_location=refm/api/src/rake/RakeFileUtils:91

--- verbose_flag -> bool

この値が真の場合、詳細を表示します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :sample_file_task

file :sample_file_task do |t|
  # --verbose で rake を実行する
  RakeFileUtils.verbose_flag # => true
end
//}

