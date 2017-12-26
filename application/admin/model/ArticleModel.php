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
namespace app\admin\model;

use think\Db;
use think\Model;

class ArticleModel extends Model
{
    // 确定链接表名
    protected $table = 'snake_articles';

    /**
     * 查询文章
     * @param $where
     * @param $offset
     * @param $limit
     */
    public function getArticlesByWhere($where, $offset, $limit)
    {
        return $this->where($where)->limit($offset, $limit)->order('id desc')->select();
    }

    /**
     * 根据搜索条件获取所有的文章数量
     * @param $where
     */
    public function getAllArticles($where)
    {
        return $this->where($where)->count();
    }

    /**
     * 添加文章
     * @param $param
     */
    public function addArticle($param)
    {
        try{
            $this->startTrans();
            $result = $this->validate('ArticleValidate')->save($param);
            if(false === $result){
                $this->rollback();
                // 验证失败 输出错误信息
                return msg(-1, '', $this->getError());
            }
            $new_data = [];
            $data = [];
            foreach($param['tag'] as $v){
                $new_data['article_id'] = $this->getLastInsID();
                $new_data['tag_id'] = $v;
                $data[] = $new_data;
            }
            $art_tag = new ArtTagModel();
            $bool = $art_tag->saveAll($data);
            if(false === $bool){
                $this->rollback();
                // 验证失败 输出错误信息
                return msg(-1, '', $this->getError());
            }
            $this->commit();
            return msg(1, url('articles/index'), '添加文章成功');
        }catch (\Exception $e){
            return msg(-2, '', $e->getMessage());
        }
    }

    /**
     * 编辑文章信息
     * @param $param
     */
    public function editArticle($param)
    {
        try{

            $result = $this->validate('ArticleValidate')->save($param, ['id' => $param['id']]);

            if(false === $result){
                // 验证失败 输出错误信息
                return msg(-1, '', $this->getError());
            }else{

                return msg(1, url('articles/index'), '编辑文章成功');
            }
        }catch(\Exception $e){
            return msg(-2, '', $e->getMessage());
        }
    }

    /**
     * 根据文章的id 获取文章的信息
     * @param $id
     */
    public function getOneArticle($id)
    {
        $info['article'] = $this->where('id', $id)->find();
        //标签数据
        $tag = new TagModel();
        $map['status'] = 1;
        $list = $tag->getList($map);
        //查询关联标签
        $tag_ids = Db::table('snake_art_tag')->where("article_id",'=',$id)->select();
        if(!empty($tag_ids)){
            $tag_ids = array_column($tag_ids,'tag_id');
            foreach($list as &$v){
                foreach($tag_ids as $tag_id){
                    if($v['id'] == $tag_id){
                        $v['checked'] = 1;
                    }else{
                        $v['checked'] = 0;
                    }
                }
            }
        }
        $info['list'] = $list;
        return $info;
    }

    /**
     * 删除文章
     * @param $id
     */
    public function delArticle($id)
    {
        try{

            $this->where('id', $id)->delete();
            return msg(1, '', '删除文章成功');

        }catch(\Exception $e){
            return msg(-1, '', $e->getMessage());
        }
    }
}