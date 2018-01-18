<?php

namespace App;

use App\Model;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\App;

class AdminUser extends Authenticatable
{
    protected $rememberTokenName = '';
    protected $guarded = [];
    //用户有哪些角色
    public function roles()
    {
        return $this->belongsToMany(\App\AdminRole::class,'admin_role_user','user_id','role_id')->withPivot(['user_id','role_id']);
    }
    //判断是否有某个角色、某些角色
    public function isInroles($roles)
    {
        //0返回false 非0返回true
        return !!$roles->intersect($this->roles)->count();
    }
    //给用户分配角色
    public function assignRole($role)
    {
        return $this->roles()->save($role);
    }
    //取消用户角色
    public function deleteRole($role)
    {
        //删除关联关系
        return $this->roles()->detach($role);
    }
    //用户是否有权限
    public function hasPermission($permission)
    {
        return $this->isInroles($permission->roles);
    }
}
