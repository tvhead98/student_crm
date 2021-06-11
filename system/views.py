from django.http.response import JsonResponse
from django.shortcuts import render, redirect
from django.views.decorators.http import require_POST
from system.models import User
from django.contrib.auth import authenticate

# Create your views here.
#跳转登录和注册界面
def login(request):
    return render(request, 'login.html')

#跳转到主界面
def layout(request):
    return render(request, 'layout.html')

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

@require_POST
def login_check(request):
    try:
    #接收参数
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = User.objects.get(user_name=username, password=password)
        return JsonResponse({'code':200, 'msg':'登录成功！'})
    except User.DoesNotExist as e:
        return JsonResponse({'code':400, 'msg':'用户名或密码错误！'})
