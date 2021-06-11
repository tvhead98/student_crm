from django.urls import path
from . import views

app_name = 'system'

urlpatterns = [
    path('login/', views.login, name='login'),
    path('unique/', views.unique, name='unique'),
    path('register/', views.register, name='register'),
    path('layout/', views.layout, name='layout'),
    path('login_check/', views.login_check, name='login_check')
]


