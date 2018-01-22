<?php
namespace App\Admin\Controllers;

use App\AdminRole;

class RoleController extends Controller
{
    //角色列表
    public function index()
    {
        $roles = AdminRole::all();
        return view('admin.role.index',compact('roles'));
    }
    //新增角色
    public function create()
    {
        return view('admin.role.create');
    }
    //新增逻辑
    public function store()
    {
        $this->validate(request(),[
            'name'=>'required|min:2',
            'description'=>'required'
        ]);
        AdminRole::create(request(['name','description']));
        return redirect('admin/roles');
    }
    //角色权限
    public function permission(AdminRole $role)
    {
        $permissions = \App\AdminPermission::all();
        $myPermissions = $role->permissions;
        return view('admin.role.permission',compact('permissions','myPermissions','role'));
    }
    //新增角色权限
    public function storePermission(AdminRole $role)
    {
        $this->validate(request(),[
            'permissions'=>'required|array'
        ]);
        $permissions = \App\AdminPermission::findMany(request('permissions'));
        $myPermissions = $role->permissions;
        //要增加的
        $addPermissions = $permissions->diff($myPermissions);
        foreach ($addPermissions as $permission){
            $role->grantPermission($permission);
        }
        //要删除的
        $deletePermissions = $myPermissions->diff($permissions);
        foreach ($deletePermissions as $permission){
            $role->deletePermission($permission);
        }
        return redirect('/admin/roles');
    }
}