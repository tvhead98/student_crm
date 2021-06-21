from django.urls import path
from . import views

app_name = 'system'

urlpatterns = [
    path('login/', views.login, name='login'),
    path('unique/', views.unique, name='unique'),
    path('register/', views.register, name='register'),
    path('index/', views.index, name='index'),
    path('login_check/', views.login_check, name='login_check'),
    path('logout/', views.logout, name='logout'),
    path('course/', views.course, name='course'),

    path('get_name/', views.get_name, name='get_name'),


    # path('session_test/', views.session_test, name='session_test')
]


