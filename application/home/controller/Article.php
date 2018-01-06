<?php
namespace app\home\controller;

use app\home\model\ArticleModel;
use app\home\Model\TagModel;
use think\Db;

class Article extends Base
{

    public function index(){
        $param = input('param.');
        $where = [
            'status'    => 1,
        ];
        !empty($param['type']) && ($where['type'] = $param['type']);
        //查询关键字
        if (!empty($param['kwd'])) {
            $where['title'] = ['like', '%' . $param['kwd'] . '%'];
        }
        //标签文章
        if (!empty($param['tag'])) {
            //标签相关文章ID
            $art_ids = Db::table('snake_art_tag')
                ->where('tag_id', '=', $param['tag'])->select();
            $art_ids = array_column($art_ids, 'article_id');
            $where['id'] = ['in',$art_ids];
        }
        $article = new ArticleModel();
        $selectResult = $article->getList($where,10);
        // 获取分页显示
        $page = $selectResult->render();
        $this->assign('meta_title', '文章列表');
        $this->assign('list', $selectResult);
        $this->assign('page', $page);
        return $this->fetch();
    }

    public function detail($id)
    {
        $article = new ArticleModel();
        $info = $article->getOne($id);
        //热门文章
        $where['status']    = 1;
        $hotArticles = $article->getList($where,10,'id,title,keywords','browse desc,id desc');
        //标签
        $tag = new TagModel();
        $tagList = $tag->getList();

        $this->assign(['info'=>$info,'hotArticles'=>$hotArticles,'tagList'=>$tagList]);
        $this->assign('meta_title', $info['title']);
        //关键字 seo
        $this->assign('keywords_title', $info['keywords']);
        //简介 seo
        $this->assign('description', $info['description']);
        return $this->fetch();
    }
}