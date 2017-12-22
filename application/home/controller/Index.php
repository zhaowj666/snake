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
        //主页文章
        $where['status']    = 1;
        $articleList = $article->getList($where,0,8,'id,title,thumbnail,keywords');
        //热门文章
        $hotArticles = $article->getList($where,0,6,'id,title,keywords');
        //标签
        $tag = new TagModel();
        $tagList = $tag->getList();

        $this->assign(['articleList'=>$articleList,'hotArticles'=>$hotArticles,'tagList'=>$tagList]);
        $this->assign('meta_title','Home');
        return $this->fetch();
    }
}