names=timestamp
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__FileTask:31

--- timestamp -> Time | Rake::LateTime

ファイルタスクのタイムスタンプを返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: "test.txt"
file "test.txt" do |task|
  Rake.application.options.build_all = false
  task.timestamp # => #<Rake::LateTime:0x2ba58f0>
end
//}

