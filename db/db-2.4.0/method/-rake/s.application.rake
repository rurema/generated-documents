names=application
visibility=public
kind=defined

--- application -> Rake::Application

現在の Rake アプリケーションを返します。

//emlist[][ruby]{
# Rakefile での記載例とする

require 'pp'

task default: :test_rake_app
task :test_rake_app do
  pp Rake.application
end

# => #<Rake::Application:0x31b0f18
#     @default_loader=#<Rake::DefaultLoader:0x31b0c78>,
#     @imported=[],
#     @last_description=nil,
#     @loaders=
#      {".rb"=>#<Rake::DefaultLoader:0x31b0c18>,
#       ".rf"=>#<Rake::DefaultLoader:0x31b0b88>,
#       ".rake"=>#<Rake::DefaultLoader:0x31b0b10>},
#     @name="rake",
#     @options=#<OpenStruct rakelib=["rakelib"], trace_output=#<IO:<STDERR>>>,
#     @original_dir="/path/to/dir",
#     @pending_imports=[],
#     @rakefile="rakefile",
#     @rakefiles=["rakefile", "Rakefile", "rakefile.rb", "Rakefile.rb"],
#     @rules=[],
#     @scope=LL(),
#     @tasks=
#      {"default"=><Rake::Task default => [test_rake_app]>,
#       "test_rake_app"=><Rake::Task test_rake_app => []>},
#     @terminal_columns=0,
#     @top_level_tasks=["default"],
#     @tty_output=false>
//}

