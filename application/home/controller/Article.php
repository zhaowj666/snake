<?php
namespace app\home\controller;

use app\home\model\ArticleModel;
use app\home\Model\TagModel;

class Article extends Base
{

    public function index(){
        $param = input('param.');
        $where = [
            'status'    => 1,
            'type'    => 1,
        ];
        //查询关键字
        if (!empty($param['searchText'])) {
            $where['title'] = ['like', '%' . $param['searchText'] . '%'];
        }
        //标签文章
        if (!empty($param['tag'])) {

        }
        $article = new ArticleModel();
        $selectResult = $article->getList($where,0,10);
        $this->assign('meta_title', '文章列表');
        $this->assign('list', $selectResult);
        return $this->fetch();
    }

    public function detail($id)
    {
        $article = new ArticleModel();
        $info = $article->getOne($id);
        //热门文章
        $where['status']    = 1;
        $hotArticles = $article->getList($where,0,10,'id,title,keywords');
        //标签
        $tag = new TagModel();
        $tagList = $tag->getList();

        $this->assign(['info'=>$info,'hotArticles'=>$hotArticles,'tagList'=>$tagList]);
        $this->assign('meta_title', $info['title']);
        return $this->fetch();
    }
}