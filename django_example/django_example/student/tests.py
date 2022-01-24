from django.http import response
from django.test import TestCase, Client, client

from .models import Student

class StudentTestCase(TestCase):
    def setUp(self):
        Student.objects.create(
            name='chnxish',
            sex=1,
            email='xiaosha9728@gamil.com',
            profession='programmer',
            qq='2333',
            phone='3222',
        )

    def test_create_and_sex_show(self):
        student = Student.objects.create(
            name='yeyuanhang',
            sex=1,
            email='xiaosha9728@outlook.com',
            profession='programmer',
            qq='2222',
            phone='3333',
        )
        self.assertEqual(student.sex_show, 'Male', 'Inconsistent sex field content')

    def test_filter(self):
        Student.objects.create(
            name='yeyuanhang',
            sex=1,
            email='xiaosha9728@outlook.com',
            profession='programmer',
            qq='2222',
            phone='3333',
        )
        name = 'chnxish',
        students = Student.objects.filter(name=name)
        self.assertEqual(students.count(), 1, 'There should be only one record whose name is {}'.format(name))


    def test_get_index(self):
        client = Client()
        response = client.get('/')
        self.assertEqual(response.status_code, 200, 'status code must be 200!')

    def test_post_student(self):
        client = Client()
        data = dict(
            name='test',
            sex=1,
            email='test@test.com',
            profession='programmer',
            qq='5555',
            phone='6666',
        )
        response = client.post('/', data)
        self.assertEqual(response.status_code, 302, 'status code must be 302!')

        response = client.get('/')
        self.assertEqual(b'test' in response.content,
            'response content must contain `test`')