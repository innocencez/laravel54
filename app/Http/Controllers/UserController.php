<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    //个人中心
    public function index(User $user){
        //个人信息，包括关注\粉丝\文章数
        //重新获取user信息，withCount包含stars_count,fans_count,posts_count
        $user = User::withCount(['stars','fans','posts'])->find($user->id);
        //文章列表，最新10条
        $posts = $user->posts()->orderBy('created_at','desc')->take(10)->get();
        //关注的用户,包含关注用户的关注、粉丝、文章数
        $stars = $user->stars;
        $susers = User::whereIn('id',$stars->pluck('star_id'))->withCount(['stars','fans','posts'])->get();
        //粉丝用户，包含粉丝用户的关注、粉丝、文章数
        $fans = $user->fans;
        $fusers = User::whereIn('id',$fans->pluck('fan_id'))->withCount(['stars','fans','posts'])->get();
        return view('user/index',compact('user','posts','susers','fusers'));
    }
    //个人设置页面
    public function setting(){
        $user = \Auth::user();
        return view('user/setting',compact('user'));
    }
    //个人设置操作
    public function settingStore(Request $request){
        //验证
        $this->validate(request(),[
                'name' => 'required|min:3'
        ]);
        //逻辑
        $name = request('name');
        $user = \Auth::user();
        //如果修改用户名
        if($user->name != $name){
            if(User::where('name',$name)->count() > 0){
                return back()->withErrors('用户名已存在！');
            }
            $user->name = $name;
        }
        //如果上传头像
        if($request->file('avatar')){
            $path = $request->file('avatar')->storePublicly($user->id);
            $user->avatar = '/storage/'.$path;
        }
        $user->save();
        //渲染
        return back();
    }
    //关注某人
    public function fan(User $user){
        $me = \Auth::user();
        $me->dofan($user->id);
        return [
            'error' => 0,
            'msg' => ''
        ];
    }
    //取消关注
    public function unFan(User $user){
        $me = \Auth::user();
        $me->doUnfan($user->id);
        return [
            'error' => 0,
            'msg' => ''
        ];
    }
}
