# 开发环境配置

  + 工欲善其事，必先利其器。

  + [Python安装](#python安装)

  + [库和工具的安装](#库和工具的安装)

## Python安装

***

  + Windows下的安装：安装包安装，Anaconda安装。

  + Linux下的安装：命令安装，源码安装和Anaconda安装。

  + Mac下的安装：Homebrew，安装包安装和Anaconda安装。

## 库和工具的安装

***

  + 请求库：在抓取页面的过程中，通过请求库模拟浏览器向服务器发出请求。

    - requests：阻塞式HTTP请求库。

    - aiohttp：异步HTTP请求库。官方推荐辅助库：cchardet（字符编码检测库），aiodns（加速DNS的解析库）。

    - src: chapter1/comp_requests_aiohttp.py

  + selenium

    - 是一个自动化测试工具，利用它我们可以驱动浏览器执行特定的动作，如点击、下拉等操作。

  + ChromeDriver

    - selenium是一个自动化测试工具，需要浏览器配合使用，chromedriver负责驱动浏览器。

    - Firefox的驱动是GeckoDriver。

    - src: chapter1/chromedriver_headless.py

  + PhantomJS：是一个无界面的，可脚本编程的WebKit浏览器引擎。最新版selenium已经不支持PhantomJS，本人使用headless参数代替。

  + 解析库：抓取网页代码之后，通过解析库从网页中提取信息。

    - ixml：支持HTML和XML的解析，支持XPath解析方式。

    - Beautiful Soup：拥有强大的API和多样的解析方式，依赖于lxml库。

    - pyquery：提供了和jQuery类似的语法来解析HTML文档，支持CSS选择器。

  + OCR识别：应对图形验证码。

    - tesserocr：是Python的一个OCR识别库，依赖于tesseract。目前，tesserocr暂不支持python3.8，所以下载pytesseract代替。

    - src: chapter1/use_pytesseract.py

  + 数据库

    - MySQL：是一个轻量级的关系数据库，存储形式是表。默认端口是3306。

    - MongoDB：是由C++语言编写的非关系型数据库，是一个基于分布式文件存储的开源数据库系统，存储形式是键值对，它的字段值可以包含其他文档、数组及文档数组。默认端口是27017。

    - Redis：是一个基于内存的高效的非关系型数据库。默认端口是6379。

  + 存储库：负责Python和数据库之间交互。

    - pymysql

    - pymongo

    - redis

  + RedisDump：是一个用于Redis数据导入/导出的工具，基于Ruby实现。

    - gem install redis-dump

  + Web库

    - flask：是一个轻量级的Web服务程序。使用Flask + Redis维护代理池和Cookies池。

    - tornado：是一个支持异步的Web框架。使用Tornado + Redis来搭建一个ADSL拨号代理池。

    - src: chapter1/use_flask.py chapter1/use_tornado.py

  + App爬取相关库

    - charles：是一个网络抓包工具，主要作为移动端抓包工具。

    - mitmproxy

  + Appium：是移动端的自动化测试工具。

  + 爬虫框架：在使用请求库时，会发现程序中许多代码和组件是可以复用的，软件开发者将这些组件抽离出来，使各个功能模块化，形成一个框架雏形，久而久之，产生爬虫框架。

    - pyspider

      - pyspider需要使用PhantomJS，本人不使用，所以不使用pyspider。

      - 在pyspider源码中，将async作为参数名，而python3.7开始已经作为保留关键字，所以需要替换，不然会报SyntaxError。

    - scrapy

      - 推荐使用conda安装，pip安装会很麻烦。

    - scrapy-splash：是scrapy中支持JavaScript渲染的工具。安装分为splash服务的安装和scrapy-splash的python库安装。

      - 先安装docker，在执行命令docker run -p 8050:8050 scrapinghub/splash

      - pip install scrapy-splash

    - scrapy-redis：是scrapy的分布式扩展模块，方便分布式爬虫的搭建。

  + Docker：是一个开源的应用容器引擎，基于Go语言实现。可以让开发者打包他们的应用以及依赖包到一个轻量级、可移植的容器中，然后发布到任何流行的系统中，也可以实现虚拟化。
