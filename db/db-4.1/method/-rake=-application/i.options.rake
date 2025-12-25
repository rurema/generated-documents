names=options
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__Application:148

--- options -> OpenStruct

コマンドラインで与えられたアプリケーションのオプションを返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  Rake.application.options  # => #<OpenStruct always_multitask=false, backtrace=false, build_all=false, dryrun=false, ignore_deprecate=false, ignore_system=false, job_stats=false, load_system=false, nosearch=false, rakelib=["rakelib"], show_all_tasks=false, show_prereqs=false, show_task_pattern=nil, show_tasks=nil, silent=false, suppress_backtrace_pattern=nil, thread_pool_size=8, trace=false, trace_output=#<IO:<STDERR>>, trace_rules=false>
end
//}

