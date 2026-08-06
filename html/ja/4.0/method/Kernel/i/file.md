# Kernel#file

### def file(*args){ ... } -> Rake::FileTask

ファイルタスクを定義します。

- **param** `args` -- ファイル名と依存ファイル名を指定します。

```ruby title="例"
file "config.cfg" => ["config.template"] do
  open("config.cfg", "w") do |outfile|
    open("config.template") do |infile|
      while line = infile.gets
        outfile.puts line
      end
    end
  end
end
```

- **SEE** [Rake::Task.define_task](../../../method/Rake=3a=3aTask/s/define_task.md)
