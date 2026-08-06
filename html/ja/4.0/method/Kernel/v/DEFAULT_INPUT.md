# Kernel$DEFAULT_INPUT

### gvar $DEFAULT_INPUT -> IO

[m:$<] の別名

```console
require "English"
while line = $DEFAULT_INPUT.gets
  p line
end
# end of sample.rb

ruby sample.rb < /etc/passwd
# => "hoge:x:500:501::/home/hoge:/bin/bash\n"
     ...
```
