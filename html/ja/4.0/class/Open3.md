# module Open3

プログラムを実行し、そのプロセスの標準入力・標準出力・標準エラー出力にパイプをつなぎます。

### 使用例

nroff を実行してその標準入力に man ページを送り込み処理させる。
nroff プロセスの標準出力から処理結果を受け取る。

```ruby
require "open3"

stdin, stdout, stderr = *Open3.popen3('nroff -man')
# こちらから書く
Thread.fork {
  File.foreach('/usr/man/man1/ruby.1') do |line|
    stdin.print line
  end
  stdin.close    # または close_write
}
# こちらから読む
stdout.each do |line|
  print line
end
```

## Module Functions

- [capture2](../method/Open3/m/capture2.md)
- [capture2e](../method/Open3/m/capture2e.md)
- [capture3](../method/Open3/m/capture3.md)
- [pipeline](../method/Open3/m/pipeline.md)
- [pipeline_r](../method/Open3/m/pipeline_r.md)
- [pipeline_rw](../method/Open3/m/pipeline_rw.md)
- [pipeline_start](../method/Open3/m/pipeline_start.md)
- [pipeline_w](../method/Open3/m/pipeline_w.md)
- [popen2](../method/Open3/m/popen2.md)
- [popen2e](../method/Open3/m/popen2e.md)
- [popen3](../method/Open3/m/popen3.md)
