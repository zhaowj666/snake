<?php
namespace app\home\controller;

use app\home\model\ArticleModel;
use app\home\Model\TagModel;
use think\Controller;

class Index extends Base
{
    public function index()
    {
        $article = new ArticleModel();
        //热门文章
        $where['status']    = 1;
        $hotArticles = $article->getList($where,6,'id,title,keywords','browse desc,id desc');
        //主页文章
//        $where['type']    = 1;
        $articleList = $article->getList($where,8,'id,title,thumbnail,keywords');
        //标签
        $tag = new TagModel();
        $tagList = $tag->getList();

        $this->assign(['articleList'=>$articleList,'hotArticles'=>$hotArticles,'tagList'=>$tagList]);
        $this->assign('meta_title','Home');
        return $this->fetch();
    }
}
