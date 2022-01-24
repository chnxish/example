from django.db import models

class Student(models.Model):
    SEX_ITEMS = [
        (1, 'Male'),
        (2, 'Female'),
        (0, 'Unknown'),
    ]

    STATUS_ITEMS = [
        (0, 'Apply'),
        (1, 'Pass'),
        (2, 'Reject'),
    ]
    name = models.CharField(max_length=128, verbose_name='name')
    sex = models.IntegerField(choices=SEX_ITEMS, verbose_name='sex')
    profession = models.CharField(max_length=128, verbose_name='profession')
    email = models.EmailField(verbose_name='email')
    qq = models.CharField(max_length=128, verbose_name='qq')
    phone = models.CharField(max_length=128, verbose_name='phone')

    status = models.IntegerField(choices=STATUS_ITEMS, default=0, verbose_name='status')

    created_time = models.DateTimeField(auto_now_add=True, editable=False, verbose_name='created_time')

    class Meta:
        verbose_name = verbose_name_plural = 'Student Information'

    def __str__(self):
        return '<Student: {}>'.format(self.name)

    @property
    def sex_show(self):
        return dict(self.SEX_ITEMS)[self.sex]

    @classmethod
    def get_all(cls):
        return cls.objects.all()

