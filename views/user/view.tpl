<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>文档列表 - 光年(Light Year Admin)后台管理系统模板</title>
<link rel="icon" href="/static/favicon.ico" type="image/ico">
<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
<meta name="author" content="yinqi">
<link href="/static/css/bootstrap.min.css" rel="stylesheet">
<link href="/static/css/materialdesignicons.min.css" rel="stylesheet">
<link href="/static/css/style.min.css" rel="stylesheet">
<link href="/static/js/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
</head>
  
<body>
<div class="lyear-layout-web">
  <div class="lyear-layout-container">
    <!--左侧导航-->
    <aside class="lyear-layout-sidebar">
       
      <!-- logo -->
      <div id="logo" class="sidebar-header">
        <a href="/system/index"><img src="/static/images/logo-sidebar.png" title="LightYear" alt="LightYear" /></a>
      </div>
      <div class="lyear-layout-sidebar-scroll"> 
        
        <nav class="sidebar-main">
          <ul class="nav nav-drawer">
            <li class="nav-item active"> <a href="/system/index"><i class="mdi mdi-home"></i> 后台首页</a> </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-palette"></i> 系统管理 </a>
              <ul class="nav nav-subnav">
                <li class="active"> <a href="/user/view">用户管理</a> </li>
                <li> <a href="/role/view">角色管理</a> </li>
                <li> <a href="/menu/view">菜单管理</a> </li>
              </ul>
            </li>
          </ul>
        </nav>
        
        <div class="sidebar-footer">
          <p class="copyright">Copyright &copy; 2022. <a target="_blank" href="http://lyear.itshubao.com">pm</a> All rights reserved.</p>
        </div>
      </div>
      
    </aside>
    <!--End 左侧导航-->
    
    <!--头部信息-->
    <header class="lyear-layout-header">
      
      <nav class="navbar navbar-default">
        <div class="topbar">
          
          <div class="topbar-left">
            <div class="lyear-aside-toggler">
              <span class="lyear-toggler-bar"></span>
              <span class="lyear-toggler-bar"></span>
              <span class="lyear-toggler-bar"></span>
            </div>
            <span class="navbar-page-title"> 系统管理 - 用户管理 </span>
          </div>
          
          <ul class="topbar-right">
            <li class="dropdown dropdown-profile">
              <a href="javascript:void(0)" data-toggle="dropdown">
                <img class="img-avatar img-avatar-48 m-r-10" src="/static/images/users/avatar.jpg" alt="笔下光年" />
                <span>笔下光年 <span class="caret"></span></span>
              </a>
              <ul class="dropdown-menu dropdown-menu-right">
                <li> <a href="lyear_pages_profile.html"><i class="mdi mdi-account"></i> 个人信息</a> </li>
                <li> <a href="lyear_pages_edit_pwd.html"><i class="mdi mdi-lock-outline"></i> 修改密码</a> </li>
                <li> <a href="javascript:void(0)"><i class="mdi mdi-delete"></i> 清空缓存</a></li>
                <li class="divider"></li>
                <li> <a href="lyear_pages_login.html"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
              </ul>
            </li>
            <!--切换主题配色-->
		    <li class="dropdown dropdown-skin">
			  <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
			  <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                <li class="drop-title"><p>主题</p></li>
                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                    <label for="site_theme_1"></label>
                  </span>
                  <span>
                    <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                    <label for="site_theme_2"></label>
                  </span>
                  <span>
                    <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                    <label for="site_theme_3"></label>
                  </span>
                </li>
			    <li class="drop-title"><p>LOGO</p></li>
				<li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                    <label for="logo_bg_1"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                    <label for="logo_bg_2"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                    <label for="logo_bg_3"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                    <label for="logo_bg_4"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                    <label for="logo_bg_5"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                    <label for="logo_bg_6"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                    <label for="logo_bg_7"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                    <label for="logo_bg_8"></label>
                  </span>
				</li>
				<li class="drop-title"><p>头部</p></li>
				<li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                    <label for="header_bg_1"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                    <label for="header_bg_2"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                    <label for="header_bg_3"></label>
                  </span>
                  <span>
                    <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                    <label for="header_bg_4"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                    <label for="header_bg_5"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                    <label for="header_bg_6"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                    <label for="header_bg_7"></label>
                  </span>
                  <span>
                    <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                    <label for="header_bg_8"></label>
                  </span>
				</li>
				<li class="drop-title"><p>侧边栏</p></li>
				<li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                    <label for="sidebar_bg_1"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                    <label for="sidebar_bg_2"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                    <label for="sidebar_bg_3"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                    <label for="sidebar_bg_4"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                    <label for="sidebar_bg_5"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                    <label for="sidebar_bg_6"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                    <label for="sidebar_bg_7"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                    <label for="sidebar_bg_8"></label>
                  </span>
				</li>
			  </ul>
			</li>
            <!--切换主题配色-->
          </ul>
          
        </div>
      </nav>
      
    </header>
    <!--End 头部信息-->
    
    <!--页面主要内容-->
    <main class="lyear-layout-content">
      
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <!--默认使用-->
            <div class="card-toolbar clearfix">
                <form class="form-inline" action="#!" method="post">
                <div class="form-group m-b-5">
                    <input class="form-control" type="email" name="keywords" placeholder="请输入邮箱..">
                </div>
                <div class="form-group m-b-5">
                    <input class="form-control" type="password" name="usernbame" placeholder="请输入用户名..">
                </div>
                <div class="form-group m-b-5">
                    <input class="form-control" type="phone" name="phone" placeholder="请输入手机号..">
                </div>
                <a class="btn btn-default m-b-5" href="#!"><i class="mdi mdi-magnify"></i> 搜索</a>
                <a class="btn btn-primary m-b-5" href="#!"><i class="mdi mdi-plus"></i> 新增</a>
                <a class="btn btn-success m-b-5" href="#!"><i class="mdi mdi-check"></i> 启用</a>
                <a class="btn btn-warning m-b-5" href="#!"><i class="mdi mdi-block-helper"></i> 禁用</a>
                <a class="btn btn-danger m-b-5" href="#!"><i class="mdi mdi-window-close"></i> 删除</a>
                <button class="btn btn-secondary m-b-5" type="reset"><i class="mdi mdi-delete"></i> 清空数据</button>
                </form>
            </div>
              <div class="card-body">
                <table id="tb_departments"></table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <!--End 页面主要内容-->
  </div>
</div>

<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/popper.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/static/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="/static/js/main.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript">

$('#tb_departments').bootstrapTable({
	classes: 'table table-hover table-condensed',
	url: '/user/list',
	method: 'get',
	dataType: 'jsonp', // 因为本示例中是跨域的调用,所以涉及到ajax都采用jsonp,
	uniqueId: 'id',
	idField: 'id', // 每行的唯一标识字段
	pagination: true, // 是否显示分页
	sortOrder: "asc", // 排序方式
	// 传递参数
	queryParams: function(params) {
		return {
			limit: params.limit, // 每页数据量
			offset: params.offset, // sql语句起始索引
			page: (params.offset / params.limit) + 1,
			sort: params.sort, // 排序的列名
			sortOrder: params.order // 排序方式'asc' 'desc'
		};
	},
	sidePagination: "server", // 分页方式：client客户端分页，server服务端分页
	pageNumber: 1, // 初始化加载第一页，默认第一页
	pageSize: 15, // 每页的记录行数
	pageList: [15, 30, 60, 120], // 可供选择的每页的行数
	columns: [{
		field: 'example',
		checkbox: true // 是否显示复选框
	}, {
		field: 'id',
		title: 'ID',
		// 居中显示
		align: 'center',
		// 是否排序
		sortable: true
	}, {
		field: 'author',
		align: 'center',
		title: '作者'
	}, {
		field: 'dynasty',
		align: 'center',
		title: '朝代',
	}, {
		field: 'nationality',
		// 是否可视(默认true)
		visible: false,
		align: 'center',
		title: '国籍'
	}, {
		field: 'opus',
		align: 'center',
		title: '作品'
	}, {
		field: 'category',
		align: 'center',
		title: '分类'
	}, {
		field: 'status',
		align: 'center',
		title: '状态',
		formatter: function(value, row, index) {
			var value = "";
			if (row.status == '0') {
				value = '<span class="badge badge-danger">禁用</span>';
			} else if (row.status == '1') {
				value = '<span class="badge badge-success">正常</span>';
			} else {
				value = row.pType;
			}
			return value;
		}
	}, {
		field: 'operate',
		align: 'center',
		title: '操作',
		formatter: btnGroup, 
		events: {
			'click .edit-btn': function(event, value, row, index) {
				editUser(row);
			},
			'click .del-btn': function(event, value, row, index) {
				delUser(row);
			}
		}
	}],
});

// 操作按钮
function btnGroup() {
	let html =
		'<a href="#!" class="btn btn-xs btn-default m-r-5 edit-btn" title="编辑" data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>' +
		'<a href="#!" class="btn btn-xs btn-default del-btn" title="删除" data-toggle="tooltip"><i class="mdi mdi-window-close"></i></a>';
	return html;
}

// 操作方法 - 编辑
function editUser() {
	alert('跳转修改信息');
}
// 操作方法 - 删除
function delUser() {
	alert('信息删除成功');
}

</script>
</body>
</html>