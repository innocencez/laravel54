<?php
namespace App\Admin\Controllers;
use App\AdminUser;

class UserController extends Controller
{
    //用户列表页
    public function index(){
        $users = AdminUser::paginate(10);
        return view('admin.user.index',compact('users'));
    }
    //增加用户
    public function create(){
        return view('admin.user.create');
    }
    //新增逻辑
    public function store(){
        $this->validate(request(),[
            'name' => 'required|min:3',
            'password' => 'required'
        ]);
        $name = request('name');
        $password = bcrypt(request('password'));
        AdminUser::create(compact('name','password'));
        return redirect('/admin/users');
    }
}