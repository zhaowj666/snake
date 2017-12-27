<?php
namespace app\home\model;


use think\Db;
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
        //文章详情
        $info = $this->find($id);
        //增加浏览量
        $this->where("id",'=',$id)->setInc('browse',1);
        //文章相关标签ID
        $tag_ids = Db::table('snake_art_tag')
            ->where('article_id', '=', $id)->select();
        $tag_ids = array_column($tag_ids, 'tag_id');
        //标签信息
        $tag = new TagModel();
        $where['id'] = ['in', $tag_ids];
        $info['tag'] = $tag->getList($where);
        return $info;
    }

    /**
     * 查询列表
     */
    public function getList($where, $start_page, $num, $field = '*', $order = 'id desc')
    {
        return $this->where($where)->field($field)->order($order)->limit($start_page, $num)->select();
    }
}