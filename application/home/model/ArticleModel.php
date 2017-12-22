<?php
namespace app\home\model;


use think\Model;

class ArticleModel extends Model
{
    protected $table = 'snake_articles';

    /**
     * 查询一条文章数据
     * @param $id 文章ID
     */
    public function getOne($id)
    {
        return $this->find($id);
    }

    /**
     * 查询列表
     */
    public function getList($where, $start_page, $num, $field = '*', $order = 'id desc')
    {
        return $this->where($where)->field($field)->order($order)->limit($start_page, $num)->select();
    }
}