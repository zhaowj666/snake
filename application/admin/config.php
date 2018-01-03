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
    'view_replace_str'      => array(
        '__CSS__'           => BLOG.'/static/admin/css',
        '__JS__'            => BLOG.'/static/admin/js',
        '__IMG__'           => BLOG.'/static/admin/images',
        '__MUSIC__'         => BLOG.'/static/music',
        '__QINIU__'         => BLOG.'/extend/qiniu',
        '__QINIU_JS__'      => BLOG.'/static/qiniu_js',
        '__UPLOAD__'        => BLOG,
    ),

    // 管理员状态
    'user_status' => [
        '1' => '正常',
        '2' => '禁用'
    ],
    // 角色状态
    'role_status' => [
        '1' => '启用',
        '2' => '禁用'
    ],

    // 多库测试
    'local' => [
        // 数据库类型
        'type'        => 'mysql',
        // 服务器地址
        'hostname'    => '127.0.0.1',
        // 数据库名
        'database'    => 'test',
        // 数据库用户名
        'username'    => 'root',
        // 数据库密码
        'password'    => 'root',
        // 数据库编码默认采用utf8
        'charset'     => 'utf8',
        // 数据库表前缀
        'prefix'      => '',
    ],
];
