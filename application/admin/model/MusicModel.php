<?php
namespace app\admin\model;


use think\Model;

class MusicModel extends Model{
    protected $table = 'snake_music';

    //音乐列表
    public function getList($map){
        $list = $this->where($map)->limit(10)->select();
        return $list;
    }
    //获取一条数据
    public function getOne($id){
        return $this->find($id);
    }

    //添加编辑
    public function musicAdd($data){
        if(empty($data['id'])){
            if($this->insert($data) !== false){
                $return_data = ['code'=>true,'data'=>'','msg'=>'添加成功'];
            }else{
                $return_data = ['code'=>false,'data'=>'','msg'=>'添加失败'];
            }
        }else{
            if($this->update($data) !== false){
                $return_data = ['code'=>true,'data'=>'','msg'=>'编辑成功'];
            }else{
                $return_data = ['code'=>false,'data'=>'','msg'=>'编辑失败'];
            }
        }
        return $return_data;
    }
}