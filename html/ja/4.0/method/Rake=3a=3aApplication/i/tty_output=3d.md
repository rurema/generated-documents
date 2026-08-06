# Rake::Application#tty_output=

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
