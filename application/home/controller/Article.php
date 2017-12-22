<?php
namespace app\home\controller;

use app\home\model\ArticleModel;
use app\home\Model\TagModel;

class Article extends Base
{

    public function detail($id)
    {
        $article = new ArticleModel();
        $info = $article->getOne($id);
        //热门文章
        $where['status']    = 1;
        $hotArticles = $article->getList($where,0,6,'id,title,keywords');
        //标签
        $tag = new TagModel();
        $tagList = $tag->getList();

        $this->assign(['info'=>$info,'hotArticles'=>$hotArticles,'tagList'=>$tagList]);
        $this->assign('meta_title', $info['title']);
        return $this->fetch();
    }
}