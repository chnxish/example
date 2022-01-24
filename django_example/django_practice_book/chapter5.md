# 奠定项目基石：Model

## 创建项目及配置

  + 创建并激活环境

    - conda create --name env_name python=3.7

    - conda activate env_name

  + 安装Python Package

    - pip3 install Django==3.2

  + 创建项目typeidea

    - CHANGELOG.md 用来记录项目变更，主要是针对每次发布版本的更新。

```
typeidea
  CHANGELOG.md
  LICENSE
  README.md
  requirements.txt
```

## 编写Model层的代码

  + 根据resources/entity_ponyorm.png，编写blog/models.py，comment/models.py和config/models.py。

  + 使用python3 manage.py makemigrations和python3 manage.py migrate。

  + 查看数据库 python3 manage.py dbshell

## Model层：字段介绍

  + ORM（Object Relational Mapping，对象关系映射）。建立数据模型与数据库中的表和关系的映射。

  + 常见字段类型

| Field | Type | Definition | Description |
| ----- | ---- | ---------- | ----------- |
| AutoField | int(11) | id = models.AutoField(primary_key=True) | 自增主键，Django Model默认提供，可以被重写 |
| BooleanField | tinyint(1) | value = models.BooleanField(default=False) | 布尔类型 |
| DecimalField | decimal | cash = models.DecimalField(max_digits=8, decimal_places=2, default=0, verbose_name='cash') | |
| IntegerField | int(11) | value = models.IntegerField() | 同AutoField一样，唯一的差别就是不自增 |
| PositiveIntegerField | age = PositiveIntegerField() | | 同IntegerField，只包含正整数 |
| SmallIntegerField | smallint | | 小整数时一般会用到 |
| CharField | varchar | value = models.CharField(max_length=10, choices=VALUE_TYPES, blank=True) | |
| URLField | | value = models.URLField(max_length = 200) | 继承自CharField，但是实现了对URL的特殊处理 |
| UUIDField | char(32) | value = models.UUIDField() | |
| EmailField | | value = models.EmailField(max_length=254) | 继承自CharField，但是实现了对E-mail的特殊处理 |
| FileField | | value = models.FileField(upload_to='uploads/') | 继承自CharField，但是实现了对File的特殊处理 |
| TextField | longtext | value = models.TextField() | 存放大量文本内容 |
| ImageField | | value = models.ImageField(upload_to='uploads/') | 继承自FileField，用来处理图片相关的数据 |
| DateField | date | value = models.DateField() | |
| DateTimeField | datetime | value = models.DateTimeField(auto_now_add=True) | |
| TimeField | time | value = models.TimeField() | |
| ForeignKey | | value = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='value') | |
| OneToOneField | | user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE) | |
| ManyToManyField | | | |

  + 参数

    - null 用于设定在数据库层面是否允许为空

    - blank 针对业务层面，该值是否允许为空

    - choices 配置字段的choices后，在admin页面上就可以看到对应的可选项展示

    - db_column

    - db_index

    - default 默认值配置

    - editable 是否可编辑，默认是True

    - error_messages

    - help_text

    - primary_key 主键，一个Model只允许设置一个字段为primary_key

    - unique 唯一约束，当需要配置唯一值时，设置unique=True

    - unique_for_date 针对日期的联合约束，比如我们需要一天只能有一篇为《学习Django的实战》的文章，那么可以在定义title字段时配置参数：unique_for_date='created_time'

    - unique_for_month 针对月份的联合约束

    - unique_for_year 针对年份的联合约束

    - verbose_name 字段对应的展示文案

    - validators
