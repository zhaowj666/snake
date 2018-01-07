<?php
namespace app\home\model;

use think\Cache;
use think\Config;
use think\Db;
use think\Model;

class MusicModel extends Model{
    protected $table = 'snake_music';

    public function getList($field='*',$map=[]){
        $options = Config::get('cache');
        Cache::connect($options);
        $list = Cache::get('music');
        if(empty($list)){
            $list = $this->field($field)->where($map)->order('id desc')->select();
            Cache::set('music',$list,86400);
        }
        return $list;
    }
}