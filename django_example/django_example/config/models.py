from django.contrib.auth.models import User
from django.db import models

class Link(models.Model):
    STATUS_NORMAL = 1
    STATUS_DELETE = 0
    STATUS_ITEMS = (
        (STATUS_NORMAL, 'Normal'),
        (STATUS_DELETE, 'Delete'),
    )

    title = models.CharField(max_length=50, verbose_name='title')
    href = models.URLField(verbose_name='href')
    status = models.PositiveIntegerField(default=STATUS_NORMAL,
        choices=STATUS_ITEMS, verbose_name='status')
    weight = models.PositiveIntegerField(default=1, choices=zip(range(1, 6), range(1, 6)),
        verbose_name='weight', help_text='Blogs with high weight will be displayed in the front')
    owner = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='owner')
    created_time = models.DateTimeField(auto_now_add=True, verbose_name='created_time')

    class Meta:
        verbose_name = verbose_name_plural = 'Link'

class SideBar(models.Model):
    STATUS_SHOW = 1
    STATUS_HIDE = 0
    STATUS_ITEMS = (
        (STATUS_SHOW, 'Show'),
        (STATUS_HIDE, 'Hide'),
    )
    SIDE_TYPES = (
        (1, 'HTML'),
        (2, 'Latest posts'),
        (3, 'Most popular posts'),
        (4, 'Latest comments'),
    )

    title = models.CharField(max_length=50, verbose_name='title')
    display_type = models.PositiveIntegerField(default=1, choices=SIDE_TYPES,
        verbose_name='display_type')
    content = models.CharField(max_length=500, blank=True, verbose_name='content',
        help_text='If it is not set in HTML format, it can be blank')
    status = models.PositiveIntegerField(default=STATUS_SHOW, choices=STATUS_ITEMS,
        verbose_name='status')
    owner = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='owner')
    created_time = models.DateTimeField(auto_now_add=True, verbose_name='created_time')

    class Meta:
        verbose_name = verbose_name_plural = 'Side Bar'