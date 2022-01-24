import socket
import urllib.error
import urllib.parse
import urllib.request

# 爬取python官网
def func1():
    response = urllib.request.urlopen('https://www.python.org')
    print(response.read().decode('utf-8')) # 得到返回的网页内容
    print(response.status)                 # 响应的状态码
    print(response.getheaders())           # 响应的头信息
    print(response.getheader('Server'))    # 查询头信息

# 测试POST请求
def func2():
    # urlencode函数将参数字典转化为字符串
    data = bytes(urllib.parse.urlencode({'word': 'hello'}), encoding='utf-8')
    response = urllib.request.urlopen('http://httpbin.org/post', data=data)
    print(response.read().decode('utf-8'))

# 有限时间内获取响应
def func3():
    try:
        # 按照常理来说，0.1秒内基本不可能得到服务器响应，因此输出 TIME OUT 提示
        response = urllib.request.urlopen('http://httpbin.org/get', timeout=0.1)
    except urllib.error.URLError as e:
        if isinstance(e.reason, socket.timeout):
            print('TIME OUT')

# 使用Request类来测试POST请求
def func4():
    url = 'http://httpbin.org/post'
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36',
        'Host': 'httpbin.org'
    }
    dict_data = {
        'name': 'Germey'
    }
    data = bytes(urllib.parse.urlencode(dict_data), encoding='utf-8')
    req = urllib.request.Request(url=url, data=data, headers=headers, method='POST')
    response = urllib.request.urlopen(req)
    print(response.read().decode('utf-8'))
