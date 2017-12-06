<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/30
 * Time: 16:47
 */

namespace app\admin\controller;


use app\admin\model\TagModel;
use think\Request;

class Tag extends Base
{
    //标签云
    public function index(){
//        $tag = model('Tag');
        $tag = new TagModel();
        //查询条件
        $map['status'] = 1;
        $list = $tag->getList($map);
        $this->assign('list',$list);
        return view();
    }

    /**
     * 添加编辑标签
     */
    public function tagAdd(){
        $tag = new TagModel();
        if(Request::instance()->isPost()){  //post请求
            $id = input('post.id');
            $data['title']          = input('param.title');
            if(empty($id)){
                $data['status']         = 1;
                $data['create_time']    = time();
            }else{
                $data['id'] = $id;
            }
            $rst = $tag->tagAdd($data);
            return json(msg($rst['code'],$rst['data'],$rst['msg']));

        }elseif(Request::instance()->isGet()){  //get请求
            $id = input('get.id');
            if($id){
                $info = $tag->getOne($id);
                $this->assign($info);
            }
            return view();
        }
    }

    /**
     * 删除标签
    */
    public function tagDel(){
        $id = input('get.id');
        $tag = new TagModel();
        $rst = $tag->tagDel($id);
        return json(msg($rst['code'],$rst['data'],$rst['msg']));
    }
}