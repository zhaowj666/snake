<?php
namespace app\admin\validate;

use think\Validate;

class TagValidate extends Validate{
    protected $rule = [
        ['title', 'require', '标签名称不能为空'],
    ];
}