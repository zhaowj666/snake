<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
// $Id$
return [
    // 模板参数替换
    'view_replace_str'       => array(
        '__CSS__'       => BLOG.'/static/home/css',
        '__JS__'        => BLOG.'/static/home/js',
        '__IMG__'       => BLOG.'/static/home/img',
        '__UPLOAD__'        => BLOG,
    ),
    'cache'  => [
        'type'   => 'File',         //缓存类型
        'path'   => CACHE_PATH,     //缓存路径
        'prefix' => '',             //缓存前缀
        'expire' => 86400,              //有效期，单位：秒
    ],
];
