<?php

namespace app\admin\model;


use think\Model;

class TagModel extends Model{
    protected $table = 'snake_tag';
    //标签列表
    public function getList($map){
        $list = $this->where($map)->limit(20)->select();
        return $list;
    }
    //获取一条数据
    public function getOne($id){
        return $this->find($id);
    }

    //添加编辑
    public function tagAdd($data){
        if(empty($data['id'])){
            if($this->insert($data) !== false){
                return ['code'=>true,'data'=>'','msg'=>'添加成功'];
            }else{
                return ['code'=>false,'data'=>'','msg'=>'添加失败'];
            }
        }else{
            if($this->update($data) !== false){
                return ['code'=>true,'data'=>'','msg'=>'编辑成功'];
            }else{
                return ['code'=>false,'data'=>'','msg'=>'编辑失败'];
            }
        }
    }

    //删除标签
    public function tagDel($id){
        if($this->where(['id'=>$id])->delete() === false){
            return ['code'=>false,'data'=>'','msg'=>'删除失败'];
        }else{
            return ['code'=>true,'data'=>'','msg'=>'删除成功'];
        }
    }
}