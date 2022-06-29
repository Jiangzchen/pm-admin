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
<link href="/static/js/jquery-treegrid/jquery.treegrid.min.css" rel="stylesheet">
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
                <li> <a href="/user/view">用户管理</a> </li>
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
            <span class="navbar-page-title"> 后台首页 </span>
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
              <div class="card-toolbar clearfix">
                <div class="toolbar-btn-action">
                  <a class="btn btn-primary m-r-5" href="#!"><i class="mdi mdi-plus"></i> 新增</a>
                  <a class="btn btn-success m-r-5" href="#!"><i class="mdi mdi-check"></i> 启用</a>
                  <a class="btn btn-warning m-r-5" href="#!"><i class="mdi mdi-block-helper"></i> 禁用</a>
                  <a class="btn btn-danger" href="#!"><i class="mdi mdi-window-close"></i> 删除</a>
                </div>
              </div>
              <div class="card-body" style="padding: 0px 24px;">
                <table id="tb_init"></table>
                </div>
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
<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/static/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="/static/js/main.min.js"></script>

<script src="/static/js/bootstrap-table/bootstrap-table.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript" src="/static/js/jquery-treegrid/jquery.treegrid.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap-table/extensions/treegrid/bootstrap-table-treegrid.min.js"></script>
<script type="text/javascript">
$(function(){
    $('.search-bar .dropdown-menu a').click(function() {
        var field = $(this).data('field') || '';
        $('#search-field').val(field);
        $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
    });
});
</script>
<script type="text/javascript">
    // tree-grid使用
    var data = JSON.parse(
        '[{"id":1, "pid":0, "status":1, "name":"用户管理", "permissionValue":"open:user:manage"},' +
        '{"id":2, "pid":0, "status":1, "name":"系统管理", "permissionValue":"open:system:manage"},' +
        '{"id":3, "pid":1, "status":1, "name":"新增用户", "permissionValue":"open:user:add"},' +
        '{"id":4, "pid":1, "status":1, "name":"修改用户", "permissionValue":"open:user:edit"},' +
        '{"id":5, "pid":1, "status":0, "name":"删除用户", "permissionValue":"open:user:del"},' +
        '{"id":6, "pid":2, "status":1, "name":"系统配置管理", "permissionValue":"open:systemconfig:manage"},' +
        '{"id":7, "pid":6, "status":1, "name":"新增配置", "permissionValue":"open:systemconfig:add"},' +
        '{"id":8, "pid":6, "status":1, "name":"修改配置", "permissionValue":"open:systemconfig:edit"},' +
        '{"id":9, "pid":6, "status":0, "name":"删除配置", "permissionValue":"open:systemconfig:del"},' +
        '{"id":10, "pid":2,"status":1, "name":"系统日志管理", "permissionValue":"open:log:manage"},' +
        '{"id":11, "pid":10,"status":1, "name":"新增日志", "permissionValue":"open:log:add"},' +
        '{"id":12, "pid":10,"status":1, "name":"修改日志", "permissionValue":"open:log:edit"},' +
        '{"id":13, "pid":10,"status":0, "name":"删除日志", "permissionValue":"open:log:del"}]');
    
    var $treeTable = $('#tb_init');
    $treeTable.bootstrapTable({
        classes: 'table table-hover table-condensed',
        iconSize:"sm",                      // 1,设置修改图标  sm小图标 lg大图标
        data: data,
        idField: 'id',
        uniqueId: 'id',
        dataType: 'jsonp',
        toolbar: '#toolbar2',
        columns: [
            {
                field: 'check',
                checkbox: true
            },
            {
                field: 'name',
                title: '菜单名称'
            },
            {
                field: 'url',
                title: '菜单URL'
            },
            {
                field: 'perms',
                title: '授权'
            },
            {
                field: 'type',
                title: '类型'
            },
            {
                field: 'icon',
                title: '菜单图标'
            },
            {
                field: 'orderNum',
                title: '排序'
            },
            {
                field: 'status',
                title: '状态',
                sortable: true,
                /*
                 * 可以选择采用开关来处理状态显示
                 * 或者采用上个示例的处理方式
                 */
                formatter: function(value, row, index) {
                    if (value == 0) {
                        is_checked = '';
                    } else if (value == 1) {
                        is_checked = 'checked="checked"';
                    }
                    result = '<div class="custom-control custom-switch"><input type="checkbox" class="custom-control-input" id="customSwitch' + row.id + '" ' + is_checked + '><label class="custom-control-label" for="customSwitch' + row.id + '" onClick="updateStatus(' + row.id + ', ' + value + ')"></label></div>';
    
                    return result;
                },
            },
            {
                field: 'permissionValue',
                title: '权限值'
            },
            {
                field: 'operate',
                title: '操作',
                align: 'center',
                events: {
                    'click .role-add': function(e, value, row, index) {
                        add(row.id);
                    },
                    'click .role-delete': function(e, value, row, index) {
                        del(row.id);
                    },
                    'click .role-edit': function(e, value, row, index) {
                        update(row.id);
                    }
                },
                formatter: operateFormatter
            }
        ],
    
        treeShowField: 'name',
        parentIdField: 'pid',
    
        onResetView: function(data) {
            $treeTable.treegrid({
                initialState: 'collapsed', // 所有节点都折叠
                treeColumn: 1,
                //expanderExpandedClass: 'mdi mdi-folder-open',  // 可自定义图标样式
                //expanderCollapsedClass: 'mdi mdi-folder',
            });
    
            // 只展开树形的第一集节点
            $treeTable.treegrid('getRootNodes').treegrid('expand');
        },
        onCheck: function(row) {
            var datas = $treeTable.bootstrapTable('getData');
    
            selectChilds(datas, row, 'id', 'pid', true); // 选择子类
    
            selectParentChecked(datas, row, 'id', 'pid'); // 选择父类
    
            $treeTable.bootstrapTable('load', datas);
        },
    
        onUncheck: function(row) {
            var datas = $treeTable.bootstrapTable('getData');
            selectChilds(datas, row, 'id', 'pid', false);
            $treeTable.bootstrapTable('load', datas);
        },
    });
    
    // 操作按钮
    function operateFormatter(value, row, index) {
        return [
            '<a type="button" class="role-add btn btn-xs btn-default m-r-5" title="编辑" data-toggle="tooltip"><i class="mdi mdi-plus"></i></a>',
            '<a type="button" class="role-edit btn btn-xs btn-default m-r-5" title="修改" data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>',
            '<a type="button" class="role-delete btn btn-xs btn-default" title="删除" data-toggle="tooltip"><i class="mdi mdi-delete"></i></a>'
        ].join('');
    }
    
    /**
     * 选中父项时，同时选中子项
     * @param datas 所有的数据
     * @param row 当前数据
     * @param id id 字段名
     * @param pid 父id字段名
     */
    function selectChilds(datas, row, id, pid, checked) {
        for (var i in datas) {
            if (datas[i][pid] == row[id]) {
                datas[i].check = checked;
                selectChilds(datas, datas[i], id, pid, checked);
            };
        }
    }
    
    function selectParentChecked(datas, row, id, pid) {
        for (var i in datas) {
            if (datas[i][id] == row[pid]) {
                datas[i].check = true;
                selectParentChecked(datas, datas[i], id, pid);
            };
        }
    }
    
    function add(id) {
        alert("add 方法 , id = " + id);
    }
    
    function del(id) {
        alert("del 方法 , id = " + id);
    }
    
    function update(id) {
        alert("update 方法 , id = " + id);
    }
    
    function updateStatus(id, state) {
        var newstate = (state == 1) ? 0 : 1; // 发送参数值跟当前参数值相反
        $.ajax({
            type: "get",
            url: "http://www.bixiaguangnian.com/index/test/testGridJson",
            data: {id: id, state: newstate},
            dataType: 'jsonp',
            success: function(data, status) {
                if (data.code == '200') {
                    $treeTable.bootstrapTable('updateCellByUniqueId', {id: id, field: 'status', value: newstate});
                } else {
                    alert(data.msg);
                    $treeTable.bootstrapTable('updateCellByUniqueId', {id: id, field: 'status', value: state}); // 因开关点击后样式是变的，失败也重置下
                }
            },
            error: function() {
                alert('修改失败，请稍后再试');
            }
        });
    }
    
    function test() {
        var selRows = $treeTable.bootstrapTable("getSelections");
        if (selRows.length == 0) {
            alert("请至少选择一行");
            return;
        }
        console.log(selRows);
    
        var postData = "";
        $.each(selRows, function(i) {
            postData += this.id;
            if (i < selRows.length - 1) {
                postData += "， ";
            }
        });
        alert("你选中行的 id 为：" + postData);
    }
    </script>
</body>
</html>