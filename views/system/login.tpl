<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>pm</title>
<link rel="icon" href="/static/favicon.ico" type="image/ico">
<meta name="keywords" content="pm">
<meta name="description" content="pm">
<meta name="author" content="zichen">
<link href="/static/css/bootstrap.min.css" rel="stylesheet">
<link href="/static/css/materialdesignicons.min.css" rel="stylesheet">
<link href="/static/css/style.min.css" rel="stylesheet">
<link rel="stylesheet" href="/static/js/bootstrapvalidator/css/bootstrapValidator.min.css"/>
<style>
.lyear-wrapper {
    position: relative;
}
.lyear-login {
    display: flex !important;
    min-height: 100vh;
    align-items: center !important;
    justify-content: center !important;
}
.lyear-login:after{
    content: '';
    min-height: inherit;
    font-size: 0;
}
.login-center {
    background: #fff;
    min-width: 29.25rem;
    padding: 2.14286em 3.57143em;
    border-radius: 3px;
    margin: 2.85714em;
}
.login-header {
    margin-bottom: 1.5rem !important;
}
.login-center .has-feedback.feedback-left .form-control {
    padding-left: 38px;
    padding-right: 12px;
}
.login-center .has-feedback.feedback-left .form-control-feedback {
    left: 0;
    right: auto;
    width: 38px;
    height: 38px;
    line-height: 38px;
    z-index: 4;
    color: #dcdcdc;
}
.login-center .has-feedback.feedback-left.row .form-control-feedback {
    left: 15px;
}
</style>
</head>
  
<body>
<div class="row lyear-wrapper" style="background-image: url(/static/images/login-bg-5.jpg); background-size: cover;">
  <div class="lyear-login">
    <div class="login-center">
      <div class="login-header text-center">
        <a href="index.html"> <img alt="light year admin" src="/static/images/logo-sidebar.png"> </a>
      </div>
      <form action="#!" method="post" id="login-from" onsubmit="return false;">
        <div class="form-group has-feedback feedback-left">
          <input type="text" placeholder="请输入您的用户名" class="form-control" name="username" id="username" />
          <span class="mdi mdi-account form-control-feedback" aria-hidden="true"></span>
        </div>
        <div class="form-group has-feedback feedback-left">
          <input type="password" placeholder="请输入密码" class="form-control" id="password" name="password" />
          <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
        </div>
        <div class="form-group has-feedback feedback-left row">
          <div class="col-xs-7">
            <input type="text" placeholder="请输入验证码" name="verCode" id="captcha" class="form-control">
            <span class="mdi mdi-check-all form-control-feedback" aria-hidden="true"></span>
          </div>
          <div class="col-xs-5">
            <img src="/system/captcha" class="pull-right" style="cursor: pointer;" onclick="this.src=this.src+'?d='+Math.random();" title="点击刷新" alt="captcha">
          </div>
        </div>
        <div class="form-group">
          <label class="lyear-checkbox checkbox-primary m-t-10">
            <input type="checkbox"><span>5天内自动登录</span>
          </label>
        </div>
        <div class="form-group">
          <button class="btn btn-block btn-primary" type="submit" id="loginBtn">立即登录</button>
        </div>
      </form>
      <hr>
      <footer class="col-sm-12 text-center">
        <p class="m-b-0">Copyright © 2019 <a href="http://lyear.itshubao.com">IT书包</a>. All right reserved</p>
      </footer>
    </div>
  </div>
</div>
<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('#login-from').bootstrapValidator({
        excluded: [':disabled'],
        message: '该值无效',
        feedbackIcons: {
            valid: 'mdi mdi-check',
            invalid: 'mdi mdi-close',
            validating: 'mdi mdi-refresh'
        },
        fields: {
            'password': {
                message: '密码无效',
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: '密码长度必须大于6个字符且小于30个字符'
                    }
                }
            },
            'username': {
                message: '用户名无效',
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    },
                    stringLength: {
                        min: 5,
                        max: 20,
                        message: '用户名长度必须大于6个字符且小于20个字符'
                    }
                }
            },
            'verCode': {
                message: '验证码无效',
                validators: {
                    notEmpty: {
                        message: '验证码不能为空'
                    },
                    stringLength: {
                        min: 1,
                        max: 6,
                        message: '验证码长度必须大于1个字符且小于6个字符'
                    }
                }
            }
        }
        }).on('success.form.bv', function(e) {
            e.preventDefault();
            var $form = $(e.target);
            var bv = $form.data('bootstrapValidator');
            $.post('/system/login', JSON.stringify({"username": "admin","password": "admin","verCode": "verCpde"}), function(res) {
                console.log(res);
                // 跳转到主页
                location.href='/system/index';
            }, 'json');
        });
    });
</script>
</body>
</html>