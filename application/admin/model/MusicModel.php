<?php
namespace app\admin\model;

use think\Model;

class MusicModel extends Model{
    protected $table = 'snake_music';

    //音乐列表
    public function getList($map,$field = '*'){
        $list = $this->field($field)->where($map)->order('id desc')->limit(50)->select();
        return $list;
    }
    //获取一条数据
    public function getOne($id){
        return $this->find($id);
    }

    //添加编辑
    public function musicAdd($data){
        if(empty($data['id'])){
            empty($data['img_path']) && ($data['img_path'] = '/static/home/img/24.jpg');
            if($this->validate('MusicValidate')->insert($data) !== false){
                $return_data = ['code'=>true,'data'=>url('Music/index'),'msg'=>'添加成功'];
            }else{
                $return_data = ['code'=>false,'data'=>'','msg'=>'添加失败'];
            }
        }else{
            empty($data['img_path']) && ($data['img_path'] = '/static/home/img/24.jpg');
            if($this->validate('MusicValidate')->update($data) !== false){
                $return_data = ['code'=>true,'data'=>url('Music/index'),'msg'=>'编辑成功'];
            }else{
                $return_data = ['code'=>false,'data'=>'','msg'=>'编辑失败'];
            }
        }
        return $return_data;
    }

    //删除标签
    public function musicDel($id){
        if($this->where(['id'=>$id])->delete() === false){
            return ['code'=>false,'data'=>'','msg'=>'删除失败'];
        }else{
            return ['code'=>true,'data'=>'','msg'=>'删除成功'];
        }
    }
}