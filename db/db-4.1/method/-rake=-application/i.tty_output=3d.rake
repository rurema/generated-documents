names=tty_output=
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Application.md
since_by_name=tty_output=3d=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def tty_output=(tty_output_state)

TTY に対する出力状態を上書きします。

大抵の場合、テストのために使用します。

- **param** `tty_output_state` -- 変更後の状態を指定します

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.tty_output?               # => false
  Rake.application.tty_output = "debug output" # => "debug output"
  p Rake.application.tty_output?               # => "debug output"
end
```




