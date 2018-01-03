<?php

namespace app\admin\model;


use think\Model;

class TagModel extends Model{
    protected $table = 'snake_tag';
    //标签列表
    public function getList($map){
        $list = $this->where($map)->order('id desc')->limit(50)->select();
        return $list;
    }
    //获取一条数据
    public function getOne($id){
        return $this->find($id);
    }

    //添加编辑
    public function tagAdd($data){
        if(empty($data['id'])){
            if($this->validate('TagValidate')->insert($data) !== false){
                $return_data = ['code'=>true,'data'=>'','msg'=>'添加成功'];
            }else{
                $return_data = ['code'=>false,'data'=>'','msg'=>'添加失败'];
            }
        }else{
            if($this->validate('TagValidate')->update($data) !== false){
                $return_data = ['code'=>true,'data'=>'','msg'=>'编辑成功'];
            }else{
                $return_data = ['code'=>false,'data'=>'','msg'=>'编辑失败'];
            }
        }
        return $return_data;
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