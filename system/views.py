from django.http.response import JsonResponse, HttpResponse
from django.shortcuts import render, redirect
from django.views.decorators.http import require_POST,require_GET
from system.models import User
import json
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

def course(request):
    if not request.session.get('is_login', None):
        return redirect('/login/')
    return render(request, 'main.html')

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


@require_POST
def get_name(request):
    user = User.objects.get(user_name=request.session.get('username'))
    print(user.password)
    return HttpResponse(json.dumps({
        'password':user.password,
        'email':user.email,
    }))