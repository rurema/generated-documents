names=load
visibility=public
kind=defined
source_location=refm/api/src/rake/loaders/makefile.rd:9

--- load(filename)

与えられた Makefile をロードします。

@param filename 読み込む Makefile の名前を指定します。

//emlist[][ruby]{
# Rakefile での記載例とする
require "rake/loaders/makefile"

task default: :test_rake_app

open "sample.mf", "w" do |io|
  io << <<-'SAMPLE_MF'
# Comments
a: a1 a2 a3 a4
b: b1 b2 b3 \
   b4 b5 b6\
# Mid: Comment
b7
 a : a5 a6 a7
c: c1
d: d1 d2 \
e f : e1 f1
g\ 0: g1 g\ 2 g\ 3 g4
  SAMPLE_MF
end

task :test_rake_app do |task|
  loader = Rake::MakefileLoader.new
  loader.load("sample.mf")
  p Rake::Task.task_defined?("a") # => true
  p Rake::Task.tasks[0] # => <Rake::FileTask a => [a1, a2, a3, a4, a5, a6, a7]>
end
//}
