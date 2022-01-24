from urllib import parse

# 解析URL
def func1():
    result = parse.urlparse('http://www.baidu.com/index.html;user?id=5#comment')
    # result = ParseResult(scheme='http', netloc='www.baidu.com', path='/index.html', params='user', query='id=5', fragment='comment')
    print(type(result), result, sep='\n')
