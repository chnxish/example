from typing import ContextManager
from django.contrib.auth.models import User
from django.db import models

class Category(models.Model):
    STATUS_NORMAL = 1
    STATUS_DELETE = 0
    STATUS_ITEMS = (
        (STATUS_NORMAL, 'Normal'),
        (STATUS_DELETE, 'Delete'),
    )

    name = models.CharField(max_length=50, verbose_name='name')
    status = models.PositiveIntegerField(default=STATUS_NORMAL,
        choices=STATUS_ITEMS, verbose_name='status')
    is_nav = models.BooleanField(default=False, verbose_name='is_nav')
    owner = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='owner')
    created_time = models.DateTimeField(auto_now_add=True, verbose_name='created_time')

    class Meta:
        verbose_name = verbose_name_plural = 'Category'

class Tag(models.Model):
    STATUS_NORMAL = 1
    STATUS_DELETE = 0
    STATUS_ITEMS = (
        (STATUS_NORMAL, 'Normal'),
        (STATUS_DELETE, 'Delete'),
    )

    name = models.CharField(max_length=10, verbose_name='name')
    status = models.PositiveIntegerField(default=STATUS_NORMAL,
        choices=STATUS_ITEMS, verbose_name='status')
    owner = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='owner')
    created_time = models.DateTimeField(auto_now_add=True, verbose_name='created_time')

    class Meta:
        verbose_name = verbose_name_plural = 'Tag'

class Post(models.Model):
    STATUS_NORMAL = 1
    STATUS_DELETE = 0
    STATUS_DRAFT = 2
    STATUS_ITEMS = (
        (STATUS_NORMAL, 'Normal'),
        (STATUS_DELETE, 'Delete'),
        (STATUS_DRAFT, 'Draft'),
    )

    title = models.CharField(max_length=255, verbose_name='title')
    desc = models.CharField(max_length=1024, blank=True, verbose_name='desc')
    content = models.TextField(verbose_name='content', help_text='Must be in markdown format')
    status = models.PositiveIntegerField(default=STATUS_NORMAL,
        choices=STATUS_ITEMS, verbose_name='status')
    category = models.ForeignKey(Category, on_delete=models.CASCADE, verbose_name='category')
    tag = models.ManyToManyField(Tag, verbose_name='tag')
    owner = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='owner')
    created_time = models.DateTimeField(auto_now_add=True, verbose_name='created_time')

    class Meta:
        verbose_name = verbose_name_plural = 'post'
        ordering = ['-id']  # Sort by `id` in descending order