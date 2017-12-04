<?php

namespace app\admin\model;


use think\Model;

class TagModel extends Model{
    protected $table = 'snake_tag';
    //标签列表
    public function getList($map){
        $list = $this->where($map)->limit(20)->select();
        return $list;
    }
}