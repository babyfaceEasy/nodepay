<?php
return [
    'welcome'           => [
        'name'      => '付钱',
        'version'   => 'В1.7',
        'title'     => '欢迎来到安装程序！',
        'sub-title' => '您的服务器具有此应用程序的所有要求和权限。在我们发布之前，我们需要一些关于您的数据库的信息：',
        'item1'     => '数据库名称',
        'item2'     => '数据库登录',
        'item3'     => '数据库密码',
        'item4'     => '数据库主机',
        'message'   => '我们将使用这些信息来更新环境文件',
        'button'    => '我们走吧 ！',

    ],
    'database'          => [
        'title'          => '数据库设置',
        'sub-title'      => '如果您不知道如何填写此表单，请与您的主机联系',
        'dbname-label'   => '数据库名称（您希望应用程序在哪里）',
        'username-label' => '用户名（您的数据库登录）',
        'password-label' => '密码（您的数据库密码）',
        'host-label'     => '主机名（应为“localhost”，如果不起作用请询问您的主机）',
        'button'         => '发送',
        'wait'           => '有点耐心......',

    ],
    'database-error'    => [
        'title'     => '数据库连接错误',
        'sub-title' => '我们无法使用您的设置连接到数据库：',
        'item1'     => '你确定你的用户名和密码吗？',
        'item2'     => '你确定你的主机名吗？',
        'item3'     => '您确定您的数据库服务器正在运行吗？',
        'message'   => '如果您不太了解所有这些条款，请联系您的主机。',
        'button'    => '再试一次 ！',

    ],
    'requirement-error' => [
        'title'       => '有一个要求错误',
        'requirement' => '我们无法安装此应用程序，因为缺少此PHP要求：',
        'php-version' => 'PHP版本必须至少为5.5.9，但您的版本是',
        'message'     => '您必须修复此错误才能继续安装！',

    ],
    'permission-error'  => [
        'title'     => '存在权限错误',
        'sub-title' => '我们无法安装此应用程序，因为此文件夹不可写：',
        'message'   => '您必须修复此错误才能继续安装！',

    ],
    'register'          => [
        'title'      => '管理员创建',
        'sub-title'  => '现在您必须输入信息以创建管理员',
        'base-label' => '你的',
        'message'    => '您需要输入密码才能登录，以确保安全！',
        'button'     => '发送',

    ],
    'register-fields'   => [
        'first_name' => '名字',
        'last_name'  => '姓',
        'email'      => '电子邮件',
        'password'   => '密码',

    ],
    'end'               => [
        'title'     => '安装成功！',
        'sub-title' => '该应用程序现已安装，您可以使用它',
        'login'     => '你的登录：',
        'password'  => '你的密码 ：',
        'button'    => '登录',

    ]];
