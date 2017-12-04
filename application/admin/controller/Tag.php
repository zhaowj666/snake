<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/30
 * Time: 16:47
 */

namespace app\admin\controller;


use app\admin\model\TagModel;

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
}