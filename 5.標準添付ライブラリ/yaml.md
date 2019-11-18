## yaml

### yamlを読み込む
```
YAML.load(str)
```

### yamlの書き出し
```
YAML.dump(obj, io = nil)
```

### Hashとして読み込まれるyaml
```
require 'yaml'
dir = <<EOY
file1:
  name: app.rb
  data: ruby
EOY
p YAML.load(dir) #=> {"file1"=>{"name"=>"app.rb", "data"=>"ruby"}}
```
