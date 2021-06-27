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
    path('head_mine/', views.head_mine, name='head_mine'),
    path('forbidden/', views.forbidden, name='forbidden'),

    path('left/', views.left, name='left'),

    path('get_name/', views.get_name, name='get_name'),
    path('study_Studentcourse/', views.list, name='study_Studentcourse'),
    path('get_major/', views.get_major, name='get_major'),
    path('get_rownum/', views.get_rownum, name='get_rownum'),
    path('get_realname/', views.get_realname, name='get_realname'),

    path('study_course_info/', views.get_course_info, name='study_course_info'),
    path('study_course_program/', views.get_course_program, name='study_course_program'),
    path('study_course_score/', views.get_course_score, name='study_course_score'),
    path('study_course_test/', views.get_course_test, name='study_course_test'),

    path('life/', views.life, name='life'),
    path('get_student_basic/', views.get_student_basic, name='get_student_basic'),
    path('p1/', views.p1, name='p1'),
    path('change_info_student/', views.change_info_student, name='change_info_student'),

    path('graduate_edu/', views.graduate_edu, name='graduate_edu'),
    path('save_graduate_edu/', views.save_graduate_edu, name='save_graduate_edu'),
    path('get_graduate_edu/', views.get_graduate_edu, name='get_graduate_edu'),
    path('graduate_job/', views.graduate_job, name='graduate_job'),
    path('save_graduate_job/', views.save_graduate_job, name='save_graduate_job'),
    path('graduate_return/', views.graduate_return, name='graduate_return'),
    path('save_graduate_return/', views.save_graduate_return, name='save_graduate_return'),
    path('graduate_edu_info/', views.graduate_edu_info, name='graduate_edu_info'),
    path('graduate_job_info/', views.graduate_job_info, name='graduate_job_info'),
    path('get_graduate_job/', views.get_graduate_job, name='get_graduate_job'),
    path('get_graduate_return/', views.get_graduate_return, name='get_graduate_return'),
    path('get_graduate_return/', views.get_graduate_return, name='get_graduate_return'),

    path('applicant_test/', views.applicant_test, name='applicant_test'),
    path('save_applicant_data/', views.save_applicant_data, name='save_applicant_data'),
    path('change_info/', views.change_info, name='change_info'),
    path('change_student_data/', views.change_student_data, name='change_student_data'),

    # path('graduate_left/', views.graduate_left, name='graduate_left'),








    # path('session_test/', views.session_test, name='session_test')
]


