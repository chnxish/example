from urllib.robotparser import RobotFileParser

# 使用RobotFileParser
def func1():
    rp = RobotFileParser()
    rp.set_url('http://www.jianshu.com/robots.txt')
    rp.read()
    print(rp.can_fetch('*', 'http://www.jianshu.com/p/b67554025d7d'))
    print(rp.can_fetch('*', 'http://www.jianshu.com/search?q=python&page=1&type=collections'))
