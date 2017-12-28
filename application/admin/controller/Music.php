<?php
namespace app\admin\controller;


use app\admin\model\MusicModel;
use Qiniu\Auth;
use Qiniu\Storage\UploadManager;
use think\Request;

class Music extends Base{
    private $ak = 'ecghMjOuWUlbocomv0D8aNUAFC0ikv1-PZ7jAtXC';
    private $sk = '5yjrFH2sw1axDJgeRzVM6a3jdWXUELw7qlsfy0r3';

    public function uploading(){
        require EXTEND_PATH.'/qiniu/autoload.php';
        //初始化签权对象
        $auth = new Auth($this->ak,$this->sk);
        //生成上传token
        $token = $auth->uploadToken('river');
        //构建上传对象
        $uploadMgr = new UploadManager();
    }

    //获取上传token
    public function getToken(){
        require EXTEND_PATH.'/qiniu/autoload.php';
        //初始化签权对象
        $auth = new Auth($this->ak,$this->sk);
        //生成上传token
        return $auth->uploadToken('river');
    }

    //标签云
    public function index(){
        $tag = new MusicModel();
        //查询条件
        $map['status'] = 1;
        $list = $tag->getList($map);
        $this->assign('list',$list);
        return view();
    }

    /**
     * 添加编辑音乐
     */
    public function musicAdd(){
        $music = new MusicModel();
        if(Request::instance()->isPost()){  //post请求
            $id = input('post.id');
            $data          = input('param.');
            if(empty($id)){
                unset($data['file']);
                $data['status']         = 1;
                $data['create_time']    = time();
            }else{
                $data['id'] = $id;
            }
            $rst = $music->musicAdd($data);
            return json(msg($rst['code'],$rst['data'],$rst['msg']));

        }elseif(Request::instance()->isGet()){  //get请求
            $id = input('param.id');
            if($id){
                $info = $music->getOne($id);
                $this->assign('info',$info);
            }
            //上传token
            $token = $this->getToken();
            $this->assign('token',$token);
            return view();
        }
    }

    /**
     * 删除音乐
     */
    public function musicDel(){
        $id = input('get.id');
        $music = new MusicModel();
        $rst = $music->musicDel($id);
        return json(msg($rst['code'],$rst['data'],$rst['msg']));
    }
}