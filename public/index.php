<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2019 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

// [ 应用入口文件 ]
namespace think;

// 获取网站根目录
$rootPath = dirname(__DIR__);

// 检查是否已安装（.env文件在网站根目录）
$envFile = $rootPath . '/.env';
$installFile = __DIR__ . '/install.php';
$currentPath = $_SERVER['REQUEST_URI'];

// 如果是访问install.php，直接放行
if (strpos($currentPath, 'install.php') !== false) {
    require $installFile;
    exit;
}

// 如果.env文件不存在且不是访问静态资源，则跳转到安装页面
if (!file_exists($envFile) && !preg_match('/\.(css|js|jpg|jpeg|png|gif|ico|svg|woff|woff2|ttf|eot)$/i', $currentPath)) {
    header('Location: /install.php');
    exit;
}

require $rootPath . '/vendor/autoload.php';

// 执行HTTP应用并响应
$http = (new App())->http;

// $response = $http->run();

// 特殊路由
$_amain = 'index';
$_aother = 'admin|qfadmin|api'; // 这里是除了home以外的所有其他应用
 
if (preg_match('/^\/('.$_aother.')\/?/', $_SERVER['REQUEST_URI'])) {
    $response = $http->run();
} else {
    $response = $http->name($_amain)->run();
}

$response->send();
$http->end($response);
