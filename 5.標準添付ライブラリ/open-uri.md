## open-uri

### 参考文献
[library open-uri](https://docs.ruby-lang.org/ja/2.1.0/library/open=2duri.html)

### 使い方
- Kernelモジュールのopenを再定義し、HTTPで指定したファイルを取得する。
```
require 'open-uri'

open("http://docs.ruby-lang.org/ja/2.1.0/doc/index.html") do |f|
	print f.read
end
```
