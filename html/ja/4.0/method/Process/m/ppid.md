# Process?.ppid

### module_function def ppid    -> Integer

親プロセスのプロセス ID を返します。UNIX では実際の親プロセスが終了した後は ppid は 1 (initの pid)になります。

- **SEE** [man:getppid(2)]
