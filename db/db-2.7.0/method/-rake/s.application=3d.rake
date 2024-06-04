names=application=
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake:45

--- application=(app)

現在の Rake アプリケーションをセットします。

@param app [[c:Rake::Application]] のインスタンスを指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

require 'pp'

task default: :test_rake_app
task :test_rake_app do
  app = Rake::Application.new
  app.tty_output = true
  Rake.application = app
  pp Rake.application
end

# => #<Rake::Application:0x00005624e6c30eb8
#     @default_loader=#<Rake::DefaultLoader:0x00005624e6c30cd8>,
#     @imported=[],
#     @last_description=nil,
#     @loaders=
#      {".rb"=>#<Rake::DefaultLoader:0x00005624e6c30bc0>,
#       ".rf"=>#<Rake::DefaultLoader:0x00005624e6c30b48>,
#       ".rake"=>#<Rake::DefaultLoader:0x00005624e6c30a80>},
#     @name="rake",
#     @options=
#      #<OpenStruct always_multitask=false, backtrace=false, build_all=false, dryrun=false, ignore_deprecate=false, ignore_system=false, job_stats=false, load_system=false, nosearch=false, rakelib=["rakelib"], show_all_tasks=false, show_prereqs=false, show_task_pattern=nil, show_tasks=nil, silent=false, suppress_backtrace_pattern=nil, thread_pool_size=20, trace=false, trace_output=#<IO:<STDERR>>, trace_rules=false>,
#     @original_dir="/path/to/dir",
#     @pending_imports=[],
#     @rakefile=nil,
#     @rakefiles=["rakefile", "Rakefile", "rakefile.rb", "Rakefile.rb"],
#     @rules=[],
#     @scope=LL(),
#     @tasks={},
#     @terminal_columns=0,
#     @top_level_tasks=[],
#     @tty_output=true>
//}

