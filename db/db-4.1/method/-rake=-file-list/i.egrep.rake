names=egrep
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__FileList:228

--- egrep(pattern){|filename, count, line| ... }

与えられたパターンをファイルリストから grep のように検索します。

ブロックが与えられた場合は、マッチした行の情報 (ファイル名、行番号、マッチした行) が
ブロックに渡されてブロックが評価されます。ブロックが与えられなかった場合は、
標準出力に、ファイル名:行番号:マッチした行を出力します。

@param pattern 正規表現を指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

IO.write("sample1", "line1\nline2\nline3\n")
IO.write("sample2", "line1\nline2\nline3\nline4\n")

task default: :test_rake_app
task :test_rake_app do

  file_list = FileList.new('sample*')
  file_list.egrep(/line/) # => 7

  file_list.egrep(/.*/) do |filename, count, line|
    "filename = #{filename}, count = #{count}, line = #{line}"
  end
end

# => "filename = sample1, count = 1, line = line1\n"
# => "filename = sample1, count = 2, line = line2\n"
# => "filename = sample1, count = 3, line = line3\n"
# => "filename = sample2, count = 1, line = line1\n"
# => "filename = sample2, count = 2, line = line2\n"
# => "filename = sample2, count = 3, line = line3\n"
# => "filename = sample2, count = 4, line = line4\n"
//}

