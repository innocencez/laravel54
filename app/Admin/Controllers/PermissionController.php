<?php
namespace App\Admin\Controllers;


use App\AdminPermission;

class PermissionController extends Controller
{
    //权限列表
    public function index()
    {
        $permissions = AdminPermission::all();
        return view('admin.permission.index',compact('permissions'));
    }
    //创建权限
    public function create()
    {
        return view('admin.permission.create');
    }
    //创建逻辑
    public function store()
    {
        $this->validate(request(),[
            'name'=>'required|min:2',
            'description'=>'required'
        ]);
        AdminPermission::create(request(['name','description'])); //AdminPermission::create([request('name'),request('description')])为什么这种写法不对？
        return redirect('/admin/permissions');
    }
}