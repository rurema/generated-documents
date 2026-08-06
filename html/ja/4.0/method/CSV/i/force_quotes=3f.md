# CSV#force_quotes?

### def force_quotes? -> bool

出力される全てのフィールドがクオートされる場合は、真を返します。

```ruby title="例"
require "csv"

rows = [["header1", "header2"], ["row1_1,", "row1_2"]]
result = CSV.generate(force_quotes: false) do |csv|
  rows.each { |row| csv << row }
  p csv.force_quotes? # => false
end
print result

# => header1,header2
#    "row1_1,",row1_2
```

```ruby title="例"
require "csv"

rows = [["header1", "header2"], ["row1_1,", "row1_2"]]
result = CSV.generate(force_quotes: true) do |csv|
  rows.each { |row| csv << row }
  p csv.force_quotes? # => true
end
print result

# => true
# => "header1","header2"
#    "row1_1,","row1_2"
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md)
