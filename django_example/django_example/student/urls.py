from django.urls import path
from .views import IndexView

urlpatterns = [
    # path('', index, name='index'),
    path('', IndexView.as_view(), name='index'),
]