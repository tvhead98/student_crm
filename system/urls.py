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
    path('study_Studentcourse/', views.list, name='study_Studentcourse'),
    path('get_major/', views.get_major, name='get_major'),
    path('get_rownum/', views.get_rownum, name='get_rownum'),

    path('study_course_info/', views.get_course_info, name='study_course_info'),
    path('study_course_program/', views.get_course_program, name='study_course_program'),
    path('study_course_score/', views.get_course_score, name='study_course_score'),
    path('study_course_test/', views.get_course_test, name='study_course_test'),









    # path('session_test/', views.session_test, name='session_test')
]


