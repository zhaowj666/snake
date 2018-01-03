<?php
namespace app\admin\validate;

use think\Validate;

class MusicValidate extends Validate{
    protected $rule = [
        ['title', 'require', '歌曲名称不能为空'],
        ['singer', 'require', '歌手不能为空'],
        ['img_path', 'require', '音乐图不能为空'],
        ['music_path', 'require', '音乐不能为空'],
    ];
}