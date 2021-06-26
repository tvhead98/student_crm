import json

from django.http.response import JsonResponse, HttpResponse
from django.shortcuts import render, redirect
from django.views.decorators.http import require_POST
from system.models import User, StudentCourse, StudentBasic,CourseInfo,CourseProgram,CourseScore,CourseTest
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
    course_keyword=request.GET.get('course_keyword')
    if course_keyword == None or course_keyword == '':
        courseprogram = CourseProgram.objects.filter(user_name=request.session.get('username'))
        print('111')
        print(courseprogram)
    else:
        courseprogram = CourseProgram.objects.filter(course_id=course_keyword,user_name=request.session.get('username'))

    return render(request, 'study_course_program.html', {
        'courseprogram':courseprogram,
        'course_keyword':course_keyword
    })

def get_course_score(request):
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
    course_keyword=request.GET.get('course_keyword')
    if course_keyword == None or course_keyword == '':
        coursetest = CourseTest.objects.filter(user_name=request.session.get('username'))
    else:
        coursetest =  CourseTest.objects.filter(course_id=course_keyword,user_name=request.session.get('username'))

    return render(request, 'study_course_test.html', {
        'coursetest':coursetest,
        'course_keyword':course_keyword
    })
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
