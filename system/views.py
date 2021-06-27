import json

from django.http.response import JsonResponse, HttpResponse
from django.shortcuts import render, redirect
from django.views.decorators.http import require_POST
from system.models import User, StudentCourse, StudentBasic, CourseInfo, CourseProgram, CourseScore, CourseTest, Applicant_test, Applicant, GraduateEdu, GraduateJob, GraduateReturn
from django.contrib.auth import authenticate

# Create your views here.
#跳转登录和注册界面
def login(request):
    return render(request, 'login.html')

#跳转到主界面
def index(request):
    if not request.session.get('is_login', None):
        return redirect('/login/')
    return render(request, 'index.html')

def left(request):
    if not request.session.get('is_login', None):
        return redirect('/login/')
    return render(request, 'left.html')

def forbidden(request):
    return render(request, 'forbidden.html')
#session
# def session_test(request):
#     request.session['h1'] = 'hello'
#     return HttpResponse('写session')

#验证用户名是否唯一
@require_POST
def unique(request):
    try:
        #接收参数
        type = request.POST.get('check_type')
        if type=='username':
            user_name = request.POST.get('info')
            #查询用户
            user = User.objects.get(user_name = user_name)
            #有用户返回页面json
            return JsonResponse({'code':400, 'msg':'验证失败'})
        elif type=='email':
            email = request.POST.get('info')
            email_ = User.objects.get(email = email)
            return JsonResponse({'code': 400, 'msg': '验证失败'})
    except User.DoesNotExist as e:
        return JsonResponse({'code':200, 'msg':'验证成功'})


@require_POST
def register(request):
    #接收参数
    username = request.POST.get('username')
    email = request.POST.get('email')
    password = request.POST.get('password')
    User.objects.create(user_name=username, password=password, email=email)
    return JsonResponse({'code':200, 'msg':'注册成功！'})

#登录的用户名检测
@require_POST
def login_check(request):
    try:
    #接收参数
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = User.objects.get(user_name=username, password=password)
        #用session来记住登录状态
        request.session['is_login'] = True
        request.session['username'] = username
        return JsonResponse({'code':200, 'msg':'登录成功！'})
    except User.DoesNotExist as e:
        return JsonResponse({'code':400, 'msg':'用户名或密码错误！'})

#检查用户登录状态
# def checkLogin(func):
#     """
#     查看session值用来判断用户是否已经登录
#     :param func:
#     :return:
#     """
#     def warpper(request, *args, **kwargs):
#         if request.session.get('username', False):
#             return func(request, *args, **kwargs)
#         else:
#             return redirect('/login/')
#     return warpper

#登出
def logout(request):
    rep = redirect('/login/')
    #删除session中的登录状态
    if 'is_login' in request.session:
        request.session.flush()
    return rep

def course(request):
    if not request.session.get('is_login', None):
        return redirect('/login/')
    return render(request, 'main.html')

def get_name(request):
    user = User.objects.get(user_name=request.session.get('username'))
    print(user.password)
    return HttpResponse(json.dumps({
        'password':user.password,
        'email':user.email,
    }))

def get_major(request):
    student = StudentBasic.objects.get(user_name=request.session.get('username'))
    # print(student.major)
    return HttpResponse(json.dumps({
        'major':student.major,
        'class':student.class_field,
    }))
def get_realname(request):
    student = StudentBasic.objects.get(user_name=request.session.get('username'))
    print(student.name)
    return HttpResponse(json.dumps({
        'realname':student.name,
        'student_id':student.student_id,

    }))

def get_rownum(request):
    course_keyword = request.GET.get('course_keyword')
    if course_keyword == None or course_keyword =='':
        print("这是get_rownum1拿到的keyword值:")
        print(course_keyword)
        studentcourse = StudentCourse.objects.filter(user_name=request.session.get('username'))
        numRows = StudentCourse.objects.filter(user_name=request.session.get('username')).count()
        print(numRows)
        rownum = str(numRows)+'为什么呢'
        print('1.一共是' + rownum + '条记录的字符串')
        print(studentcourse)
    else:
        print("这是get_rownum2拿到的keyword值:")
        print(course_keyword)
        studentcourse = StudentCourse.objects.filter(course_id=course_keyword,user_name=request.session.get('username'))
        numRows = StudentCourse.objects.filter(course_id=course_keyword,user_name=request.session.get('username')).count()
        print(numRows)

        rownum = str(numRows)
        print('2.一共是' + rownum + '条记录的字符串')
        print(studentcourse)
    return HttpResponse(json.dumps({'rownum': rownum}))


def list(request):
    course_keyword=request.GET.get('course_keyword')
    if course_keyword == None or course_keyword == '':
        studentcourse = StudentCourse.objects.filter(user_name=request.session.get('username'))
    else:
        studentcourse = StudentCourse.objects.filter(course_id=course_keyword,user_name=request.session.get('username'))

    return render(request, 'study_Studentcourse.html', {
        'studentcourse':studentcourse,
        'course_keyword':course_keyword
    })

def get_course_info(request):
    user_identity= User.objects.get(user_name=request.session.get('username')).identity
    print(user_identity)
    if user_identity != 'student':
        return render(request,'forbidden.html')
    course_keyword=request.GET.get('course_keyword')
    if course_keyword == None or course_keyword == '':
        courseInfo = CourseInfo.objects.filter(user_name=request.session.get('username'))
    else:
        courseInfo = CourseInfo.objects.filter(course_id=course_keyword,user_name=request.session.get('username'))

    return render(request, 'study_course_info.html', {
        'courseInfo':courseInfo,
        'course_keyword':course_keyword
    })

def get_course_program(request):
    user_identity= User.objects.get(user_name=request.session.get('username')).identity
    print(user_identity)
    if user_identity != 'student':
        return render(request,'forbidden.html')
    course_keyword=request.GET.get('course_keyword')
    if course_keyword == None or course_keyword == '':
        courseprogram = CourseProgram.objects.filter(user_name=request.session.get('username'))
        # print('111')
        # print(courseprogram)
    else:
        courseprogram = CourseProgram.objects.filter(course_id=course_keyword,user_name=request.session.get('username'))

    return render(request, 'study_course_program.html', {
        'courseprogram':courseprogram,
        'course_keyword':course_keyword
    })

def get_course_score(request):
    user_identity= User.objects.get(user_name=request.session.get('username')).identity
    print(user_identity)
    if user_identity != 'student':
        return render(request,'forbidden.html')
    course_keyword=request.GET.get('course_keyword')
    if course_keyword == None or course_keyword == '':
        coursescore = CourseScore.objects.filter(user_name=request.session.get('username'))
    else:
        coursescore =  CourseScore.objects.filter(course_id=course_keyword,user_name=request.session.get('username'))

    return render(request, 'study_course_score.html', {
        'coursescore':coursescore,
        'course_keyword':course_keyword
    })

def get_course_test(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    print(user_identity)
    if user_identity != 'student':
        return render(request, 'forbidden.html')
    course_keyword=request.GET.get('course_keyword')
    if course_keyword == None or course_keyword == '':
            coursetest = CourseTest.objects.filter(user_name=request.session.get('username'))
    else:
         coursetest =  CourseTest.objects.filter(course_id=course_keyword,user_name=request.session.get('username'))

    return render(request, 'study_course_test.html', {
        'coursetest':coursetest,
        'course_keyword':course_keyword})


def get_student_basic(request):
    # user_identity = User.objects.get(user_name=request.session.get('username')).identity
    # # print(user_identity)
    # if user_identity != 'student':
    #     return render(request, 'forbidden.html')
    username = request.session.get('username')
    student = StudentBasic.objects.get(user_name=username)
    print(student.electricity_fee)
    print(student.money)
    print(student)
    print(student.fee)
    print(student.dorm)
    print(student.major)
    print(student.name)
    return HttpResponse(json.dumps({
            'electricity': student.electricity_fee,
            'money': student.money,
            'fee': student.fee,
            'dorm': student.dorm,
            'student_id': student.student_id,
            'student_name': student.name,
            'tel': student.tel,
            'major': student.major,
            'class_id': student.class_field,
            'entrance_time': student.entrance_time.strftime("%Y-%m-%d"),
            'type': student.type,
            'home': student.home,
    }))

#跳转到life界面
def life(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    # print(user_identity)
    if user_identity != 'student':
        return render(request, 'forbidden.html')
    if not request.session.get('is_login', None):
        return redirect('/login/')
    return render(request, 'life.html')

def p1(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    # print(user_identity)
    if user_identity != 'student':
        return render(request, 'forbidden.html')
    if not request.session.get('is_login', None):
        return redirect('/login/')
    return render(request, 'p1.html')

def change_info_student(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    # print(user_identity)
    if user_identity != 'student':
        return render(request, 'forbidden.html')
    if not request.session.get('is_login', None):
        return redirect('/login/')
    return render(request, 'change_info_student.html')

def head_mine(request):
    if not request.session.get('is_login', None):
        return redirect('/login/')
    true_name = User.objects.get(user_name=request.session.get('username')).true_name
    return render(request, 'head_mine.html', {'true_name': true_name})

# def get_class(request):
#     studentcourse = StudentCourse.objects.filter(user_name=request.session.get('username'))
#
#     print("222")
#     return render(request, 'main.html', {'studentcourse':studentcourse})

# def get_course_name(request):
#     user = User.objects.get(user_name=request.session.get('username'))
#     print(user.password)
#     return HttpResponse(json.dumps({
#         'password':user.password,
#         'email':user.email,
#     }))


def graduate_left(request):
    return render(request, 'graduate_left.html')

def graduate_edu(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    # print(user_identity)
    if user_identity != 'alumni':
        return render(request, 'forbidden.html')
    return render(request, 'graduate_edu.html')
def graduate_edu_info(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    # print(user_identity)
    if user_identity != 'alumni':
        return render(request, 'forbidden.html')
    return render(request, 'graduate_edu_info.html')

def graduate_job(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    # print(user_identity)
    if user_identity != 'alumni':
        return render(request, 'forbidden.html')
    return render(request, 'graduate_job.html')
def graduate_job_info(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    # print(user_identity)
    if user_identity != 'alumni':
        return render(request, 'forbidden.html')
    return render(request, 'graduate_job_info.html')

def graduate_return(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    # print(user_identity)
    if user_identity != 'alumni':
        return render(request, 'forbidden.html')
    return render(request, 'graduate_return.html')

def save_graduate_edu(request):
    further_school = request.POST.get('further_school')
    further_major = request.POST.get('further_major')
    further_degree = request.POST.get('further_degree')
    further_full_part_time = request.POST.get('further_full_part_time')
    further_start_time = request.POST.get('further_start_time')
    further_graduate_time = request.POST.get('further_graduate_time')
    username = request.session.get('username', None)
    #存入数据库
    c = GraduateEdu.objects.filter(user_name=username).count()
    if c==0 :
        further= GraduateEdu(user_name=username,further_school=further_school,further_major=further_major,further_degree=further_degree,further_start_time=further_start_time,further_graduate_time=further_graduate_time,further_full_part_time=further_full_part_time)
        further.save()
    else:
        further = GraduateEdu.objects.get(user_name=username)
        further.further_school=further_school
        further.further_major=further_major
        further.further_degree=further_degree
        further.further_full_part_time=further_full_part_time
        further.further_start_time=further_start_time
        further.further_graduate_time=further_graduate_time
        further.save()
    return

def get_graduate_edu(request):
    username = request.session.get('username', None)
    further = GraduateEdu.objects.get(user_name=username)
    return HttpResponse(json.dumps({
        'further_school':further.further_school,
        'further_major':further.further_major,
        'further_degree':further.further_degree,
        'further_full_part_time': further.further_full_part_time,
        'further_start_time': further.further_start_time.strftime("%Y-%m-%d"),
        'further_graduate_time': further.further_graduate_time.strftime("%Y-%m-%d"),
     }))

def save_graduate_job(request):
    graduate_employer = request.POST.get('graduate_employer')
    graduate_job_position = request.POST.get('graduate_job_position')
    graduate_job_start_time = request.POST.get('graduate_job_start_time')
    graduate_job_end_time = request.POST.get('graduate_job_end_time')
    username = request.session.get('username', None)
    #存入数据库
    c = GraduateJob.objects.filter(user_name=username).count()
    if c==0 :
        further= GraduateJob(user_name=username,
                             graduate_employer=graduate_employer,
                             graduate_job_position=graduate_job_position,
                             graduate_job_start_time=graduate_job_start_time,
                             graduate_job_end_time=graduate_job_end_time)
        further.save()
    else:
        further = GraduateJob.objects.get(user_name=username)
        further.graduate_employer=graduate_employer
        further.graduate_job_position=graduate_job_position
        further.graduate_job_start_time=graduate_job_start_time
        further.graduate_job_end_time=graduate_job_end_time
        further.save()
    return

def get_graduate_job(request):
    username = request.session.get('username', None)
    further = GraduateJob.objects.get(user_name=username)
    return HttpResponse(json.dumps({
        'graduate_employer':further.graduate_employer,
        'graduate_job_position':further.graduate_job_position,
        'graduate_job_start_time':further.graduate_job_start_time.strftime("%Y-%m-%d"),
        'graduate_job_end_time': further.graduate_job_end_time.strftime("%Y-%m-%d"),
     }))

def save_graduate_return(request):
    nationality = request.POST.get('nationality')
    id_type = request.POST.get('id_type')
    student_id = request.POST.get('student_id')
    tel = request.POST.get('tel')
    graduate_depart_nation = request.POST.get('graduate_depart_nation')
    graduate_depart_province = request.POST.get('graduate_depart_province')
    graduate_depart_city = request.POST.get('graduate_depart_city')
    graduate_return_date = request.POST.get('graduate_return_date')
    graduate_return_time = request.POST.get('graduate_return_time')
    graduate_return_campus = request.POST.get('graduate_return_campus')
    graduate_return_gate = request.POST.get('graduate_return_gate')
    username = request.session.get('username', None)
    #存入数据库
    c = GraduateReturn.objects.filter(user_name=username).count()
    if c==0 :
        further= GraduateReturn(user_name=username,
                                nationality=nationality,
                                id_type=id_type,
                                student_id = student_id,
                                tel = tel,
                                graduate_depart_nation = graduate_depart_nation,
                                graduate_depart_province = graduate_depart_province,
                                graduate_depart_city = graduate_depart_city,
                                graduate_return_date = graduate_return_date,
                                graduate_return_time = graduate_return_time,
                                graduate_return_campus = graduate_return_campus,
                                graduate_return_gate = graduate_return_gate)
        further.save()

    else:
        further = GraduateReturn.objects.get(user_name=username)
        further.nationality=nationality
        further.id_type=id_type
        further.student_id=student_id
        further.tel=tel
        further.graduate_depart_nation = graduate_depart_nation
        further.graduate_depart_province = graduate_depart_province
        further.graduate_depart_city = graduate_depart_city
        further.graduate_return_date = graduate_return_date
        further.graduate_return_time = graduate_return_time
        further.graduate_return_campus = graduate_return_campus
        further.graduate_return_gate = graduate_return_gate
        further.save()
    return JsonResponse({'code': 200, 'msg': '保存成功！'})

#这个要用学生基本信息还需要继续修改
def get_graduate_return(request):
    username = request.session.get('username', None)
    further = StudentBasic.objects.get(user_name=username)
    # name=StudentBasic.name
    return HttpResponse(json.dumps({
        'user_name':username,
        'major':further.major,
        'name':further.name,
        #后面的性别不知道哪一个是
     }))


def change_info(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    if user_identity != 'applicant':
        return render(request, 'forbidden.html')
    if not request.session.get('is_login', None):
        return redirect('/login/')
    username = request.session.get('username')
    applicant = Applicant.objects.get(user_name=username)
    user = User.objects.get(user_name=username)
    return render(request, 'change_info.html', {'applicant': applicant, 'user': user})


# def applicant_test(request):
#     user_identity = User.objects.get(user_name=request.session.get('username')).identity
#     if user_identity != 'applicant':
#         return render(request, 'forbidden.html')
#     if not request.session.get('is_login', None):
#         return redirect('/login/')
#     return render(request, 'applicant_test.html')


def save_applicant_data(request):
    gender = int(request.POST.get('gender'))
    # email = request.POST.get('email')
    region = request.POST.get('region')
    graduation_school = request.POST.get('graduation_school')
    major = request.POST.get('major')
    transfer = int(request.POST.get('transfer'))
    username = request.session.get('username')
    remarks = request.POST.get('remarks')
    id_number = request.POST.get('id_number')
    true_name = request.POST.get('true_name')
    Applicant.objects.filter(user_name=username) \
        .update(region=region, graduation_school=graduation_school, major=major, transfer=transfer, remarks=remarks)
    User.objects.filter(user_name=username).update(gender=gender, id_number=id_number, true_name=true_name)
    return JsonResponse({'code': 200, 'msg': '保存成功！'})


# 考试信息表
def applicant_test(request):
    user_identity = User.objects.get(user_name=request.session.get('username')).identity
    if user_identity != 'applicant':
        return render(request,'forbidden.html')
    test_number = Applicant.objects.get(user_name=request.session.get('username')).test_number
    print(test_number)
    project1 = Applicant_test.objects.filter(test_number=test_number)
    return render(request, 'applicant_test.html', {'project1': project1})

def change_student_data(request):
    username = request.session.get('username')
    type = request.POST.get('type')
    if type=='name':
        name = request.POST.get('true_name')
        StudentBasic.objects.filter(user_name=username).update(name=name)
        User.objects.filter(user_name=username).update(true_name=name)
    if type=='tel':
        tel = request.POST.get('tel')
        StudentBasic.objects.filter(user_name=username).update(tel=tel)
    return JsonResponse({'code': 200, 'msg': '保存成功！'})