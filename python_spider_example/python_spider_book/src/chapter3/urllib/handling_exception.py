from tempfile import SpooledTemporaryFile
from urllib import error, request

# 打开不存在的页面，并捕获异常
def func1():
    try:
        response = request.urlopen('https://cuiqingcai.com/index.htm')
    except error.HTTPError as e:
        print(e.reason, e.code, e.headers, sep='\n')
    except error.URLError as e:
        print(e.reason)
    else:
        print('Request Successfully')
