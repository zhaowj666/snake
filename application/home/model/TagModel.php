<?php
namespace app\home\Model;


use think\Model;

class TagModel extends Model{
    protected $table = 'snake_tag';

    /**
     * 查询列表
     */
    public function getList()
    {
        return $this->select();
    }
}