<?php
// +----------------------------------------------------------------------
// | snake
// +----------------------------------------------------------------------
// | Copyright (c) 2016~2022 http://baiyf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: NickBai <1902822973@qq.com>
// +----------------------------------------------------------------------
namespace app\admin\controller;

use app\admin\model\MusicModel;
use think\Controller;

class Base extends Controller
{
    public function _initialize()
    {
        if(empty(session('username'))){

            $loginUrl = url('login/index');
            if(request()->isAjax()){
                return msg(111, $loginUrl, '登录超时');
            }

            $this->redirect($loginUrl);
        }

        // 检测权限
        $control = lcfirst(request()->controller());
        $action = lcfirst(request()->action());

        if(empty(authCheck($control . '/' . $action))){
            if(request()->isAjax()){
                return msg(403, '', '您没有权限');
            }

            $this->error('403 您没有权限');
        }
        //音乐数据
        $music = new MusicModel();
        $music_list = $music->getList(['status'=>1],'title name,singer,music_path url,img_path img_url');
        foreach($music_list as $v){
            $v['url'] = 'http://'.$v['url'];
        }
        $music_list = json_encode($music_list);
        $this->assign([
            'username' => session('username'),
            'rolename' => session('role'),
            'music_list' => $music_list,
        ]);

    }
}