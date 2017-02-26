<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>商城管理后台</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="shortcut icon" type="image/x-icon" href="/dist/img/favicon.ico">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="/plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="/plugins/bootstrap/css/fileinput.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/dist/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="/dist/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/dist/css/skins/_all-skins.min.css">
  <!-- wangEditor.js-->
  <link rel="stylesheet" type="text/css" href="/dist/css/wangEditor.css">
  <!-- 以上为公共css -->

  <!-- daterange picker -->
  <link rel="stylesheet" href="/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="/plugins/datepicker/datepicker3.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="/plugins/iCheck/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="/plugins/colorpicker/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="/plugins/timepicker/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="/plugins/select2/select2.min.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/plugins/iCheck/flat/blue.css">

  <!-- fullCalendar 2.2.5-->
  <link rel="stylesheet" href="/plugins/fullcalendar/fullcalendar.min.css">
  <link rel="stylesheet" href="/plugins/fullcalendar/fullcalendar.print.css" media="print">

  <!-- Ion Slider -->
  <link rel="stylesheet" href="/plugins/ionslider/ion.rangeSlider.css">
  <!-- ion slider Nice -->
  <link rel="stylesheet" href="/plugins/ionslider/ion.rangeSlider.skinNice.css">
  <!-- bootstrap slider -->
  <link rel="stylesheet" href="/plugins/bootstrap-slider/slider.css">
    <link href="/plugins/bootstrap/css/bootstrap-treeview.min.css"/>
  <!-- Morris chart -->
  <link rel="stylesheet" href="/plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="/plugins/jvectormap/jquery-jvectormap-1.2.2.css">


  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script>
    function iFrameHeight() {
      var ifm= document.getElementById("content");
      var subWeb = document.frames ? document.frames["content"].document : ifm.contentDocument;
      if(ifm != null && subWeb != null) {
        ifm.height = subWeb.body.scrollHeight;
      }
    }
    function initFileInput(ctrlName, uploadUrl,fileCount) {
      var control = $('#' + ctrlName);

      control.fileinput({
        language: 'zh', //设置语言
        uploadUrl: uploadUrl, //上传的地址
        allowedFileExtensions : ['jpg', 'png','gif'],//接收的文件后缀
        maxFileCount: fileCount,
        enctype: 'multipart/form-data',
        showUpload: true, //是否显示上传按钮
        showCaption: false,//是否显示标题
        browseClass: "btn btn-primary", //按钮样式
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
      });
    }
  </script>
</head>
<body class="sidebar-mini ajax-template skin-blue fixed">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>X</b>a</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>xbin-store-admin  </b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">切换导航</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">你有4个消息</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        运营团队
                        <small><i class="fa fa-clock-o"></i> 5 分钟</small>
                      </h4>
                      <p>为什么要使用龙果模板?</p>
                    </a>
                  </li>
                  <!-- end message -->
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        设计团队
                        <small><i class="fa fa-clock-o"></i> 2 小时</small>
                      </h4>
                      <p>为什么要使用龙果模板?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        开发者
                        <small><i class="fa fa-clock-o"></i> 今天</small>
                      </h4>
                      <p>为什么要使用龙果模板?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        销售部
                        <small><i class="fa fa-clock-o"></i> 昨天</small>
                      </h4>
                      <p>为什么要使用龙果模板?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        测试员
                        <small><i class="fa fa-clock-o"></i> 2 天前</small>
                      </h4>
                      <p>为什么要使用龙果模板?</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">查看所有消息</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">你有10个通知</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 今天有 5 人加入
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> 很长的描述，可能在这里不适合展示
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-red"></i> 5 新用户
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 25 销售额
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> 你更改了你的用户名
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">显示全部</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">你有9个任务</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        设计一些按钮
                        <small class="pull-right">20%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% 完成</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        创造一个好的主题
                        <small class="pull-right">40%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">40% 完成</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        使用龙果模板
                        <small class="pull-right">60%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">60% 完成</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        活动规则设定
                        <small class="pull-right">80%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">80% 完成</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">查看所有任务</a>
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">${user.name}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  ${user.name} - ${user.job}
                  <small>${user.joinus}</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">下属</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">销售额</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">朋友</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">简介</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">退出</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>${user.name}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">主导航</li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>首页内容管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a target="navTab" href="/show/logo.action"><i class="fa fa-circle-o"></i> Logo</a></li>
            <li>
              <a href="#"><i class="fa fa-circle-o"></i> 广告
                <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
              </a>
              <ul class="treeview-menu">
                <li><a target="navTab" href="../../pages/dashboard.html"><i class="fa fa-circle-o"></i> 顶部广告</a></li>
                <li><a target="navTab" href="../../pages/dashboard.html"><i class="fa fa-circle-o"></i> 两侧广告</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 轮播广告</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> Sale广告</a></li>
              </ul>
            </li>
            <li>
              <a href="#"><i class="fa fa-circle-o"></i> 首页商品展示
                <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
            </span>
              </a>
              <ul class="treeview-menu">
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 服饰美妆</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 家电手机</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 电脑数码</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 3C运动</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 爱吃</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 母婴家具</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 图书汽车</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 虚拟</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 还没逛够</a></li>
              </ul>
            </li>
            <li>
              <a href="#"><i class="fa fa-circle-o"></i> 活动
                <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="../../pages/dashboard.html"><i class="fa fa-circle-o"></i> 右上角活动</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 条形3连活动</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 秒杀活动</a></li>
              </ul>
            </li>
            <li>
              <a href="#"><i class="fa fa-circle-o"></i> 首页内容
                <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="../../pages/dashboard.html"><i class="fa fa-circle-o"></i> 大导航栏</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 顶部导航栏</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 促销</a></li>
                <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 公告</a></li>
              </ul>
            </li>
            <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 领券中心</a></li>
            <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 发现好货</a></li>
            <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 品牌头条</a></li>
            <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 排行榜</a></li>
            <li class="active"><a href="../../index2.html"><i class="fa fa-circle-o"></i> 享品质</a></li>

          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>商品管理</span>
            <span class="pull-right-container">
              <span class="label label-primary pull-right">4</span>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a target="navTab" href="/show/category.action"><i class="fa fa-circle-o"></i>一级类目</a></li>
            <li><a target="navTab" href="/show/twoCategory.action"><i class="fa fa-circle-o"></i>二级类目</a></li>
            <li><a target="navTab" href="/show/itemCategory.action"><i class="fa fa-circle-o"></i>商品类目</a></li>
            <li><a target="navTab" href="/show/addItem.action"><i class="fa fa-circle-o"></i>新增商品</a></li>
            <li><a target="navTab" href="/show/eidtItem.action"><i class="fa fa-circle-o"></i>商品维护</a></li>
            <li><a target="navTab" href="../../pages/layout/fixed.html"><i class="fa fa-circle-o"></i>规格与包装</a></li>
          </ul>
        </li>
        <li>
          <a href="../../pages/widgets.html">
            <i class="fa fa-search"></i> <span>搜索维护</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green">new</small>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../pages/layout/top-nav.html"><i class="fa fa-circle-o"></i>Solr索引库维护</a></li>
            <li><a href="../../pages/layout/boxed.html"><i class="fa fa-circle-o"></i>搜索框默认</a></li>
            <li><a href="../../pages/layout/fixed.html"><i class="fa fa-circle-o"></i>搜索热门(强制显示)</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-cny"></i>
            <span>会计服务</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> 会计统计</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>订单服务</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../pages/UI/general.html"><i class="fa fa-circle-o"></i> 订单操作</a></li>
            <li><a href="../../pages/UI/modals.html"><i class="fa fa-circle-o"></i> 未处理订单</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-child"></i> <span>人员权限维护</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../pages/forms/general.html"><i class="fa fa-circle-o"></i> 部门维护</a></li>
            <li><a href="../../pages/forms/advanced.html"><i class="fa fa-circle-o"></i> 员工维护</a></li>
            <li><a href="../../pages/forms/advanced.html"><i class="fa fa-circle-o"></i> 角色维护</a></li>
            <li><a href="../../pages/forms/advanced.html"><i class="fa fa-circle-o"></i> 资源维护</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>报表</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../pages/tables/simple.html"><i class="fa fa-circle-o"></i> 销售报表</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>中间件</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Dubbox</a></li>
            <li><a href="../../pages/examples/profile.html"><i class="fa fa-circle-o"></i> Nexus</a></li>
            <li><a href="../../pages/examples/login.html"><i class="fa fa-circle-o"></i> ActiveMQ</a></li>
            <li><a href="http://localhost:8078/"><i class="fa fa-circle-o"></i> Gitblit</a></li>
            <li><a href="../../pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Jenkins</a></li>
          </ul>
        </li>
        <li>
          <a href="../../pages/mailbox/mailbox.html">
            <i class="fa fa-envelope"></i> <span>邮箱</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-yellow">12</small>
              <small class="label pull-right bg-green">16</small>
              <small class="label pull-right bg-red">5</small>
            </span>
          </a>
        </li>
        <li><a href="../../documentation/index.html"><i class="fa fa-book"></i> <span>文档</span></a></li>
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>重要</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>警告</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>消息</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header-navtabs">
      <div class="tabs-page">
        <ul class="tabs-list clearfix" id="navTabs">
          <li class="active"><span>我的主页</span></li>
        </ul>
        <a href="javascript:void(0);" class="prev fa fa-step-backward"></a>
        <a href="javascript:void(0);" class="next fa fa-step-forward"></a>
      </div>
      <div class="context-menu" id="contextMenu">
        <ul class="ct-nav">
          <li rel="reload">刷新标签页</li>
          <li rel="closeCurrent">关闭标签页</li>
          <li rel="closeOther">关闭其他标签页</li>
          <li rel="closeAll">关闭全部标签页</li>
        </ul>
      </div>
    </section>
    <!-- Main content -->
    <section class="" id="content">
      <div class="tabs-panel">
        <h1>欢迎使用xbin-store-admin LTE </h1>
        <div class="callout callout-warning">
          <h4>温馨提示!</h4>

          <p><b>adminLTE</b>使用jQuery 2.2.3版本，并引入很多优秀的第三方jQuery插件，开发者也可以改用自己熟悉的第三方插件，但原有插件对兼容IE低版本(6,7,8)浏览器并不友好，如果要考虑兼容低版本IE浏览器，建议替换jQuery版本到1.7.2以下并使用其他兼容低版本浏览器的jQuery插件。</p>
        </div>
        <div class="row">
          <!--<div class="col-md-6">-->
          <!--<div class="box box-primary">-->
          <!--<div class="box-header with-border">-->
          <!--<h3 class="box-title">更多开源项目</h3>-->
          <!--</div>-->
          <!--<table class="table table-striped">-->
          <!--<tbody>-->
          <!--<tr>-->
          <!--<td><strong>roncoo-pay: </strong><span class="text-light-blue">龙果支付系统</span></td>-->
          <!--<td width="130">-->
          <!--<a href="https://git.oschina.net/roncoocom/roncoo-pay" class="btn bg-blue btn-xs">oschina</a>-->
          <!--<a href="https://github.com/roncoo/roncoo-pay" class="btn bg-blue btn-xs">github</a>-->
          <!--</td>-->
          <!--</tr>-->
          <!--<tr>-->
          <!--<td><strong>xbin-store-adminlte-springmvc: </strong><span class="text-light-blue">整合SSM的xbin-store-adminlte</span></td>-->
          <!--<td width="130">-->
          <!--<a href="https://git.oschina.net/roncoocom/xbin-store-adminlte-springmvc" class="btn bg-blue btn-xs">oschina</a>-->
          <!--<a href="https://github.com/roncoo/xbin-store-adminlte-springmvc" class="btn bg-blue btn-xs">github</a>-->
          <!--</td>-->
          <!--</tr>-->
          <!--<tr>-->
          <!--<td><strong>roncoo-cmdb: </strong><span class="text-light-blue">龙果学院推出开源运维平台</span></td>-->
          <!--<td width="130">-->
          <!--<a href="https://github.com/roncoo/roncoo-cmdb" class="btn bg-blue btn-xs">github</a>-->
          <!--</td>-->
          <!--</tr>-->
          <!--<tr>-->
          <!--<td><strong>spring-boot-demo: </strong><span class="text-light-blue">Spring Boot的基础教程demo</span></td>-->
          <!--<td width="130">-->
          <!--<a href="https://git.oschina.net/roncoocom/spring-boot-demo" class="btn bg-blue btn-xs">oschina</a>-->
          <!--<a href="https://github.com/roncoo/spring-boot-demo" class="btn bg-blue btn-xs">github</a>-->
          <!--</td>-->
          <!--</tr>-->
          <!--<tr>-->
          <!--<td><strong>roncoo-jui-springboot: </strong><span class="text-light-blue">Spring Boot整合jui</span></td>-->
          <!--<td width="130">-->
          <!--<a href="https://git.oschina.net/roncoocom/roncoo-jui-springboot" class="btn bg-blue btn-xs">oschina</a>-->
          <!--<a href="https://github.com/roncoo/roncoo-jui-springboot" class="btn bg-blue btn-xs">github</a>-->
          <!--</td>-->
          <!--</tr>-->
          <!--</tbody>-->
          <!--</table>-->
          <!--</div>-->
          <!--</div>-->
          <%--<div class="col-md-6">--%>
            <%--<div class="box box-primary">--%>
              <%--<div class="box-header with-border">--%>
                <%--<h3 class="box-title">更多相关知识</h3>--%>
              <%--</div>--%>
              <%--<table class="table table-striped">--%>
                <%--<tbody>--%>
                <%--<tr>--%>
                  <%--<td><strong>Spring Boot</strong></td>--%>
                  <%--<td width="80">--%>
                    <%--<a href="http://www.roncoo.com/course/view/c99516ea604d4053908c1768d6deee3d" class="btn bg-blue btn-xs">view</a>--%>
                  <%--</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                  <%--<td><strong>龙果运维平台安装使用</strong></td>--%>
                  <%--<td width="80">--%>
                    <%--<a href="http://www.roncoo.com/course/view/a2d58fe08172447696412fb7af1de620" class="btn bg-blue btn-xs">view</a>--%>
                  <%--</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                  <%--<td><strong>龙果开源支付系统业务介绍与部署</strong></td>--%>
                  <%--<td width="80">--%>
                    <%--<a href="http://www.roncoo.com/course/view/a09d8badbce04bd380f56034f8e68be0" class="btn bg-blue btn-xs">view</a>--%>
                  <%--</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                  <%--<td><strong>SSM框架实战应用</strong></td>--%>
                  <%--<td width="80">--%>
                    <%--<a href="http://www.roncoo.com/course/view/993d7660a19f41ed94d5bd4f0b414ede" class="btn bg-blue btn-xs">view</a>--%>
                  <%--</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                  <%--<td><strong>Dubbo</strong></td>--%>
                  <%--<td width="80">--%>
                    <%--<a href="http://www.roncoo.com/course/view/f614343765bc4aac8597c6d8b38f06fd" class="btn bg-blue btn-xs">view</a>--%>
                  <%--</td>--%>
                <%--</tr>--%>

                <%--</tbody>--%>
              <%--</table>--%>
            <%--</div>--%>
          <%--</div>--%>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.6
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">最近的活动</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">我的生日</h4>

                <p>四月二十四</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">更新我的资料</h4>

                <p>新手机号码 (+86)1234567890</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">添加邮箱地址</h4>

                <p>abc@roncoo.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">写个256字的描述</h4>

                <p>执行时间5秒</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">任务进度</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                自定义模板的设计
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                更新简历
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                获取积分
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                后端框架
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->

      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">一般设置</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              面板的使用报告
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              有关此常规设置选项的一些信息
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              允许邮件重定向
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              其他可用的选项集
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              在帖子中公开作者姓名
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              允许用户在博客帖子中显示自己的名字
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">聊天设置</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              显示我是否在线
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              关闭通知
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              删除的聊天记录
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<div id="loading" class="loading-panel">
  <div class="box">
    <i class="fa fa-refresh fa-spin"></i>
    <span class="tip">
       正在加载 · · ·    
    </span>
  </div>
</div>


<div class="modal fade" id="smModal">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span></button>
        <h4 class="modal-title">提示</h4>
      </div>
      <div class="modal-body">
        <p>确认删除？</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">确认</button>
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="lgModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span></button>
      </div>
      <div class="modal-body">
        <p>确认删除？</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <!-- <button type="button" class="btn btn-primary">确认</button> -->
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="/plugins/wangeditor/wangEditor.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/plugins/fastclick/fastclick.js"></script>
<script src="/plugins/bootstrap/js/fileinput.min.js"></script>
<script src="/plugins/bootstrap/js/zh.js"></script>
<script src="/plugins/bootstrap/js/bootstrap-treeview.min.js"/>

<!-- Slimscroll -->
<script src="/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- AdminLTE App -->
<script src="/dist/js/app.js"></script>
<!-- 以上JS为页面必须 -->

<!-- jQuery UI 1.11.4 -->
<script src="/plugins/jQueryUI/jquery-ui.min.js"></script>
<!-- Morris.js charts -->
<script src="/plugins/raphael/raphael.min.js"></script>
<script src="/plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="/plugins/moment/moment.min.js"></script>
<script src="/plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="/plugins/chartjs/Chart.min.js"></script>
<!-- FLOT CHARTS -->
<script src="/plugins/flot/jquery.flot.min.js"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="/plugins/flot/jquery.flot.resize.min.js"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="/plugins/flot/jquery.flot.pie.min.js"></script>
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<script src="/plugins/flot/jquery.flot.categories.min.js"></script>
<!-- iCheck -->
<script src="/plugins/iCheck/icheck.min.js"></script>
<!-- Select2 -->
<script src="/plugins/select2/select2.full.min.js"></script>
<!-- InputMask -->
<script src="/plugins/input-mask/jquery.inputmask.js"></script>
<script src="/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- bootstrap color picker -->
<script src="/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- Ion Slider -->
<script src="/plugins/ionslider/ion.rangeSlider.min.js"></script>
<!-- Bootstrap slider -->
<script src="/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<!-- DataTables -->
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/plugins/datatables/dataTables.bootstrap.min.js"></script>
</body>
</html>