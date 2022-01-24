# 进入开发

  + [编码规范](#编码规范)

  + [虚拟环境](#虚拟环境)

  + [合理的项目结构](#合理的项目结构)

  + [版本管理与协作：Git](#版本管理与协作git)

## 编码规范

***

  + Python编码规范---PEP8（https://www.python.org/dev/peps/pep-0008/）

  + import this（Python之禅）

    - resources/import_this.md

  + 代码布局

    - 使用四个空格作为缩进

    - 规范建议长度不要超过79个字符

    - 换行在二元操作符之前

    - import

      - 标准库的引用

      - 相关第三方库的引用

      - 本项目中其他模块的引用

      - import xxx在from xxx import xxx之上

      - 模块级别的双下划线命名

        - 通用语---dunder（double underscore）

        - 需要放在docstring（文档注释）之后，其他import语句之前（除了from __future__ import xxxx这种引用外）

```python
"""This is the example module.

This is module does stuff.
"""

from __future__ import barry_as_FLUFL

__all__ = ['a', 'b', 'c']
__version__ = '0.1'
__author__ == 'Cardinal Biggles'

import time
from datetime import datetime

from django
from django.conf import setttings
from django.http import HttpResponse

from blog.models import Post

def long_function_name(
        var_one, var_two, var_three,
        var_four):
    print(var_one)

foo = long_function_name(
    var_one, var_two,
    var_three, var_four)

income = (gross_wages
          + taxable_interest
          + (dividends - qualified_dividends)
          - ira_deduction
          - student_loan_interest)
```

  + Django编码风格

    - 引用顺序（import）

    - 模板风格

    - View（视图）中的编码规范

    - Model（模型）中的编码规范

```python
# future
from __future__ import unicode_literals

# standard library
import json
from itertools import chain

# third-party
import bcrypt

# Django
from django.http import Http404
from django.http.response import (
    Http404, HttpResponse, HttpResponseNotAllowed, StreamingHttpResponse, cookie,
)

# local Django
from .models import LogEntry

# try/except
try:
    import yaml
except ImportError:
   yaml = None

CONSTANT = 'foo'

class Example:
    pass
```

```python
# 正确写法
{{ foo }}

# 错误写法
{{foo}}
```

```python
# 正确写法
def view(request, foo):
    pass

# 错误写法
def view(req, foo):
    pass
```

```python
# 正确写法
class Person(models.Model):
    first_name = models.CharField(max_length=20)
    last_name = models.CharField(max_length=40)

# 错误写法
class Person(models.Model):
    FirstName = models.CharField(max_length=20)
    Last_Name = models.CharField(max_length=40)

# 正确写法
class MyModel(models.Model):
    DIRECTION_UP = 'U'
    DIRECTION_DOWN = 'D'
    DIRECTION_CHOICES = (
        (DIRECTION_UP, 'UP'),
        (DIRECTION_DOWN, 'Down'),
    )

    direction = models.CharField(max_length=10, choices=DIRECTION_CHOICES)
```

## 虚拟环境

***

  + 书中推荐venv和virtualenv，但是个人使用conda

## 合理的项目结构

***

  + 组织原则：让一切操作更加轻松

  + 通用项目结构

    - .gitignore 忽略一些不需要被纳入源码管理的文件

    - LICENSE 开源协议

    - MANIFEST.in 与setup.py配合使用

    - README.md 项目介绍

    - conf/ 存放项目相关的配置文件

    - fabfile/ 针对Fabric的配置

    - others/ 其他一些有必要放在源码管理里面的内容，比如docs和产品需求文档等

    - requirements.txt 项目依赖模块

      - 新开发人员可以通过pip3 install -r requirements.txt就可以安装好项目的所有依赖

    - setup.py 打包项目

    - src/ 项目源码目录

    - 如果某个文件可以通过源码反复生成，就不必放到源码管理里，比如Python项目打包之后的文件。所以，我们在.gitignore中通常会过滤掉dist/和build/这样的目录。

```
project
  .gitignore
  LICENSE
  MANIFEST.in
  README.md
  conf/
  fabfile/
  others/
  requirements.txt
  setup.py
  src/
```

  + Django项目结构

    - 一般来说，项目名称和源码名称是保持一致的。

    - settings目录

      - 如何更好的区分开发环境和线上环境？这里涉及数据库的配置、域名的配置、缓存的配置等。

      - 把之前的settings.py中的内容放在settings/base.py中，删除原settings.py文件，同时新增__init__.py、develop.py和product.py。

      - 修改manage.py和wsgi.py

        - 如下代码

```
project
  project(src)
    app1
    app2
    project
      settings
        __init__.py
        base.py
        develop.py
        product.py
    manage.py
```

```python
# 修改前代码
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'project_name.settings')

# 修改后代码
profile = os.environ.get('PROJECT_PROFILE', 'develop')
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'project_name.settings.%s' % profile)
```

## 版本管理与协作：Git

***

  + 版本控制并不是仅限于源码管理这一领域，因为它的本质就是文件管理，所以你可以通过它来管理一切基于文件的变更。

  + Git基本概念

    - 初始化版本系统 git init

    - 查看当前状态 git status

      - Untracked files

      - Changes to be committed

      - Changes not staged for commit

      - nothing to commit, working directory clean

    - 在Github网站上创建远端仓库并使用git remote add origin https://github.com/user_name/project_name.git进行关联

    - 本地代码推到远端 git push -u origin master

    - 提交代码 不推荐git add . 推荐使用git add -p

    - 提交信息 不推荐git commit -m 'info' 推荐使用git commit进入编辑信息的模式提交代码

  + Git进阶

    - git config

      - 全局（~/.gitconfig）或局部（program/.git/config）

      - gitconfig的可配置项很多，通过Google搜索git config best practices来获取相关内容

    - 修改commit

      - git log 查看log

      - git commit --amend 将新的改动覆盖上一次的commit。

      - git rebase -i HEAD~3 通过交互模式（-i的作用）的方式来进行调整，最后的HEAD~3指明我们想要修改最近3次的commit。

      - git blame file_name 审查代码
