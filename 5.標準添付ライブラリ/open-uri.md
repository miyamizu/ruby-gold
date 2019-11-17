## open-uri

### 使い方
- Kernelモジュールのopenを再定義し、HTTPで指定したファイルを取得する。
```
require 'open-uri'

open("http://docs.ruby-lang.org/ja/2.1.0/doc/index.html") do |f|
	print f.read
end
```
