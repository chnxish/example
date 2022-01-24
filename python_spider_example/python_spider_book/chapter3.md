# 基本库的使用

## 使用urllib

  + urllib库，是Python内置的HTTP请求库，包含如下4个模块：

    - request：最基本的HTTP请求模块，可以用来模拟发送请求。

    - error：异常处理模块。

    - parse：一个工具模块，提供了许多URL处理方法，比如拆分、解析、合并等。

    - robotparser：用来识别网站的robots.txt文件。

  + 发送请求

    - 使用urllib的request模块，可以方便地实现请求的发送并得到相应。

    - urlopen函数

    - Request类

    - src: chapter3/urllib/send_request.py

```python
# urlopen
urllib.request.urlopen(url, data=None, [timeout, ]*, cafile=None, cadefault=False, context=None)

# Request
class urllib.request.Request(url, data=None, headers={}, origin_req_host=None, unverifiable=False, method=None)
```

  + 处理异常

    - urllib的error模块定义了由request模块产生的异常。如果出现了问题，request模块便会抛出error模块中定义的异常。

    - URLError类来自urllib库的error模块，它继承自OSError类，是error异常模块的基类，由request模块产生的异常都可以通过捕获这个类来处理。

    - HTTPError是URLError的子类，专门用来处理HTTP请求错误。

    - src: chapter3/urllib/handling_exception.py

  + 解析链接

    - urllib的parse模块，定义了处理URL的标准接口，例如实现URL各部分的抽取、合并以及链接转换。

    - urlparse函数可以实现URL的识别和分段。

    - src: chapter3/urllib/parse_url.py

  + 分析Robots协议

    - urllib的robotparser模块可以实现网站Robots协议的分析。

    - Robots协议也称作爬虫协议、机器人协议，它的全名叫做网络爬虫排除标准（Robots Exclusion Protocol），用来告诉爬虫和搜索引擎哪些页面可以抓取，哪些不可以爬取。它通常是一个叫做robots.txt的文本文件，放在网站的根目录上。

    - scr: chapter3/urllib/robot_parser.py

## 使用requests
