<?php
namespace app\home\model;

use think\Db;
use think\Model;

class MusicModel extends Model{
    protected $table = 'snake_music';

    public function getList($field='*',$map=[]){
        return $this->field($field)->where($map)->select();
    }
}