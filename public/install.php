<?php
header('Content-Type: text/html; charset=UTF-8');

// 安装程序配置文件
$rootPath = dirname(dirname(__FILE__));
$configFile = $rootPath . '/.env';
$sqlFile = dirname(__FILE__) . '/duanju.sql';

// 检测是否安装过
if (file_exists($configFile)) {
    exit('你已经安装过该系统，如需重新安装请删除.env文件!');
}

// 检查SQL文件是否存在
if (!file_exists($sqlFile)) {
    exit('duanju.sql文件不存在，请确保该文件在网站根目录下!');
}

if ($_POST) {
    $host = isset($_POST['host']) ? $_POST['host'] : 'localhost';
    $port = isset($_POST['port']) ? $_POST['port'] : '3306';
    $user = isset($_POST['user']) ? $_POST['user'] : 'root';
    $password = isset($_POST['password']) ? $_POST['password'] : '';
    $database = isset($_POST['database']) ? $_POST['database'] : '';
    $installType = isset($_POST['install_type']) ? $_POST['install_type'] : 'new';
    
    // 连接数据库
    try {
        $dsn = "mysql:host={$host};port={$port}";
        $db = new PDO($dsn, $user, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
        // 创建数据库
        $db->exec("CREATE DATABASE IF NOT EXISTS `{$database}` DEFAULT CHARACTER SET utf8mb4");
        $db->exec("USE `{$database}`");
        
        // 读取SQL文件内容
        $sql = file_get_contents($sqlFile);
        if (empty($sql)) {
            throw new Exception('SQL文件内容为空!');
        }
        
        // 如果是全新安装，先删除所有表
        if ($installType === 'new') {
            // 获取所有表名
            $tables = $db->query("SHOW TABLES")->fetchAll(PDO::FETCH_COLUMN);
            
            // 先禁用外键约束
            $db->exec("SET FOREIGN_KEY_CHECKS = 0");
            
            // 删除所有表
            foreach ($tables as $table) {
                $db->exec("DROP TABLE IF EXISTS `{$table}`");
            }
            
            // 重新启用外键约束
            $db->exec("SET FOREIGN_KEY_CHECKS = 1");
        }
        
        // 按照分号分割SQL语句
        $sqls = array_filter(explode(';', $sql));
        
        // 逐条执行SQL语句
        foreach ($sqls as $statement) {
            $statement = trim($statement);
            if ($statement) {
                try {
                    $db->exec($statement);
                } catch (PDOException $e) {
                    // 如果是覆盖安装，忽略表已存在的错误
                    if ($installType === 'override' && strpos($e->getMessage(), '1050') !== false) {
                        continue;
                    }
                    throw $e;
                }
            }
        }
        
        // 生成配置文件
        $config = <<<EOT
APP_DEBUG = false
SYSTEM_SALT = YAdmin

[APP]
DEFAULT_TIMEZONE = Asia/Chongqing

[DATABASE]
TYPE = mysql
HOSTNAME = {$host}
DATABASE = {$database}
USERNAME = {$user}
PASSWORD = {$password}
HOSTPORT = {$port}
CHARSET = utf8mb4
DEBUG = false
PREFIX = qf_

[LANG]
default_lang = zh-cn
EOT;
        
        // 写入配置文件
        if (file_put_contents($configFile, $config) === false) {
            throw new Exception('无法写入配置文件，请检查目录权限!');
        }
        
        echo json_encode(['code' => 0, 'msg' => '安装成功!']);
        exit;
    } catch (Exception $e) {
        echo json_encode(['code' => 1, 'msg' => '安装失败: ' . $e->getMessage()]);
        exit;
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>七彩短剧安装向导</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background: #f8f9fa;
            color: #212529;
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        .sidebar {
            background: #000;
            color: #fff;
            padding: 40px;
            width: 380px;
            position: fixed;
            height: 100vh;
            z-index: 100;
        }

        .sidebar-content {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .logo {
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 30px;
            letter-spacing: -0.5px;
        }

        .install-steps {
            margin-top: 40px;
        }

        .step {
            margin-bottom: 20px;
            opacity: 0.6;
        }

        .step.active {
            opacity: 1;
        }

        .step-number {
            display: inline-block;
            width: 24px;
            height: 24px;
            border: 1px solid #fff;
            border-radius: 50%;
            text-align: center;
            line-height: 22px;
            font-size: 12px;
            margin-right: 10px;
        }

        .copyright {
            font-size: 13px;
            opacity: 0.6;
        }

        .main-content {
            flex: 1;
            padding: 60px;
            margin-left: 380px;
            max-width: 800px;
        }

        .form-header {
            margin-bottom: 40px;
        }

        .form-title {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 10px;
            letter-spacing: -0.5px;
        }

        .form-subtitle {
            color: #6c757d;
            font-size: 16px;
        }

        .form-group {
            margin-bottom: 30px;
        }

        .form-label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #212529;
        }

        .form-input {
            width: 100%;
            padding: 12px 16px;
            font-size: 15px;
            border: 1px solid #dee2e6;
            border-radius: 6px;
            transition: all 0.2s;
        }

        .form-input:focus {
            outline: none;
            border-color: #000;
            box-shadow: 0 0 0 3px rgba(0,0,0,0.1);
        }

        .form-tip {
            margin-top: 6px;
            font-size: 13px;
            color: #6c757d;
        }

        .submit-btn {
            background: #000;
            color: #fff;
            border: none;
            padding: 14px 28px;
            font-size: 15px;
            font-weight: 500;
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.2s;
            width: 100%;
        }

        .submit-btn:hover {
            background: #222;
        }

        .alert {
            padding: 16px;
            border-radius: 6px;
            margin-bottom: 20px;
            display: none;
        }

        .alert-success {
            background: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }

        .alert-error {
            background: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }

        /* 响应式设计 */
        @media (max-width: 1024px) {
            .container {
                flex-direction: column;
            }

            .sidebar {
                position: relative;
                width: 100%;
                height: auto;
                min-height: auto;
                padding: 20px;
            }

            .main-content {
                margin-left: 0;
                padding: 20px;
                width: 100%;
            }

            .sidebar-content {
                height: auto;
            }

            .copyright {
                margin-top: 20px;
            }
        }

        @media (max-width: 480px) {
            .form-title {
                font-size: 24px;
            }

            .form-subtitle {
                font-size: 14px;
            }

            .form-input {
                padding: 10px 14px;
                font-size: 14px;
            }

            .form-tip {
                font-size: 12px;
            }

            .submit-btn {
                padding: 12px 24px;
                font-size: 14px;
            }
        }

        .install-type {
            margin-bottom: 30px;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 6px;
        }

        .install-type-title {
            font-weight: 600;
            margin-bottom: 15px;
            color: #212529;
        }

        .install-type-option {
            display: flex;
            align-items: center;
            padding: 15px;
            border: 2px solid #dee2e6;
            border-radius: 6px;
            margin-bottom: 10px;
            cursor: pointer;
            transition: all 0.2s;
        }

        .install-type-option:hover {
            border-color: #adb5bd;
        }

        .install-type-option.selected {
            border-color: #000;
            background: rgba(0,0,0,0.02);
        }

        .install-type-radio {
            display: none;
        }

        .install-type-check {
            width: 20px;
            height: 20px;
            border: 2px solid #dee2e6;
            border-radius: 50%;
            margin-right: 15px;
            position: relative;
        }

        .install-type-option.selected .install-type-check {
            border-color: #000;
        }

        .install-type-option.selected .install-type-check:after {
            content: '';
            position: absolute;
            width: 10px;
            height: 10px;
            background: #000;
            border-radius: 50%;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .install-type-label {
            flex: 1;
        }

        .install-type-name {
            font-weight: 500;
            margin-bottom: 4px;
        }

        .install-type-desc {
            font-size: 13px;
            color: #6c757d;
        }

        @media (max-width: 480px) {
            .install-type {
                padding: 15px;
            }
            
            .install-type-option {
                padding: 12px;
            }
            
            .install-type-name {
                font-size: 14px;
            }
            
            .install-type-desc {
                font-size: 12px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="sidebar-content">
                <div>
                    <div class="logo">七彩短剧</div>
                    <div class="install-steps">
                        <div class="step active">
                            <span class="step-number">1</span>
                            <span>检查安装环境</span>
                        </div>
                        <div class="step">
                            <span class="step-number">2</span>
                            <span>配置数据库</span>
                        </div>
                        <div class="step">
                            <span class="step-number">3</span>
                            <span>完成安装</span>
                        </div>
                    </div>
                </div>
                <div class="copyright">
                    &copy; <?php echo date('Y'); ?> 七彩短剧. All rights reserved.
                </div>
            </div>
        </div>

        <div class="main-content">
            <div class="alert alert-success" id="successAlert"></div>
            <div class="alert alert-error" id="errorAlert"></div>

            <div class="form-header">
                <h1 class="form-title">安装配置</h1>
                <p class="form-subtitle">请填写您的数据库连接信息</p>
            </div>

            <form method="post" id="installForm">
                <div class="install-type">
                    <div class="install-type-title">请选择安装方式</div>
                    <div class="install-type-option selected" onclick="selectInstallType(this, 'new')">
                        <input type="radio" name="install_type" value="new" checked class="install-type-radio">
                        <div class="install-type-check"></div>
                        <div class="install-type-label">
                            <div class="install-type-name">全新安装</div>
                            <div class="install-type-desc">清除所有数据，重新安装系统（推荐）</div>
                        </div>
                    </div>
                    <div class="install-type-option" onclick="selectInstallType(this, 'override')">
                        <input type="radio" name="install_type" value="override" class="install-type-radio">
                        <div class="install-type-check"></div>
                        <div class="install-type-label">
                            <div class="install-type-name">覆盖安装</div>
                            <div class="install-type-desc">保留现有数据，仅更新数据表结构</div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label">数据库主机</label>
                    <input type="text" name="host" value="localhost" class="form-input">
                    <div class="form-tip">数据库服务器地址，一般为localhost</div>
                </div>

                <div class="form-group">
                    <label class="form-label">端口号</label>
                    <input type="text" name="port" value="3306" class="form-input">
                    <div class="form-tip">数据库端口，一般为3306</div>
                </div>

                <div class="form-group">
                    <label class="form-label">用户名</label>
                    <input type="text" name="user" value="root" class="form-input">
                    <div class="form-tip">数据库用户名</div>
                </div>

                <div class="form-group">
                    <label class="form-label">密码</label>
                    <input type="password" name="password" class="form-input">
                    <div class="form-tip">数据库密码</div>
                </div>

                <div class="form-group">
                    <label class="form-label">数据库名</label>
                    <input type="text" name="database" value="duanju" class="form-input">
                    <div class="form-tip">数据库名称，不存在会自动创建</div>
                </div>

                <button type="submit" class="submit-btn" id="submitBtn">
                    开始安装
                </button>
            </form>
        </div>
    </div>

    <script>
    // 添加安装类型选择功能
    function selectInstallType(element, type) {
        // 移除所有选中状态
        document.querySelectorAll('.install-type-option').forEach(option => {
            option.classList.remove('selected');
        });
        
        // 添加选中状态
        element.classList.add('selected');
        
        // 设置radio的值
        element.querySelector('input[type="radio"]').checked = true;
    }

    document.getElementById('installForm').onsubmit = function(e) {
        e.preventDefault();
        
        const submitBtn = document.getElementById('submitBtn');
        const successAlert = document.getElementById('successAlert');
        const errorAlert = document.getElementById('errorAlert');
        
        // 更新UI状态
        submitBtn.disabled = true;
        successAlert.style.display = 'none';
        errorAlert.style.display = 'none';
        
        // 更新步骤状态
        document.querySelectorAll('.step').forEach((step, index) => {
            if (index === 1) step.classList.add('active');
        });

        var formData = new FormData(this);
        var xhr = new XMLHttpRequest();
        
        xhr.open('POST', 'install.php', true);
        xhr.onload = function() {
            try {
                var response = JSON.parse(xhr.responseText);
                if (response.code === 0) {
                    // 更新最后一个步骤状态
                    document.querySelectorAll('.step').forEach((step, index) => {
                        if (index === 2) step.classList.add('active');
                    });

                    successAlert.textContent = response.msg;
                    successAlert.style.display = 'block';
                    setTimeout(() => {
                        window.location.href = '/';
                    }, 1500);
                } else {
                    errorAlert.textContent = response.msg;
                    errorAlert.style.display = 'block';
                }
            } catch(e) {
                errorAlert.textContent = '安装过程出现错误，请检查日志!';
                errorAlert.style.display = 'block';
            }
            
            submitBtn.disabled = false;
        };
        xhr.send(formData);
        
        return false;
    };
    </script>
</body>
</html>