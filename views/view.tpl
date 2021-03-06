<!doctype html>
<html lang="zh-CN">
 <head> 
  <meta charset="UTF-8"> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"> 
  <meta name="renderer" content="webkit"> 
  <meta name="force-rendering" content="webkit"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1"> 
  <meta name="applicable-device" content="pc,mobile"> 
  <title>pm博客site</title> 
  <meta name="keywords" content="pm博客site"> 
  <meta name="description" content="pm博客site"> 
  <meta name="author" content="zichen"> 
  <link rel="stylesheet" href="/static/css/iconfont.css" type="text/css"> 
  <link rel="stylesheet" href="/static/css/style.css" type="text/css"> 
  <!--[if lt IE 9]><div class="fuck-ie"><p class="tips">*您的IE浏览器版本过低，为获得更好的体验请使用Chrome、Firefox或其他现代浏览器!</p></div><![endif]--> 
  <script src="/static/js/jquery-2.2.4.min.js" type="text/javascript"></script> 
  <script src="/static/js/moment-with-locales.min.js" type="text/javascript"></script> 
  <script>moment.locale('zh-cn');</script> 
 </head> 
 <body> 
  <header class="header sb"> 
   <div class="h-wrap container clearfix"> 
    <h1 class="logo-area fl"> <a href="https://www.yingzia.com/pbootcms219/" title="pm博客site"> <img class="img" src="/static/images/1645527463866306.png" alt="pm博客site" title="pm博客site"> </a> </h1> 
    <div class="m-nav-btn">
     <i class="iconfont icon-category"></i>
    </div> 
    <nav class="responsive-nav"> 
     <div class="pc-nav m-nav fl"> 
      <ul class="nav-ul"> 
       <li><a class="active" href="https://www.yingzia.com/pbootcms219/">首页</a> </li> 
       <li><a class="" href="/pbootcms219/jiaocheng/">SEO教程</a> <span class="toggle-btn"><i class="iconfont icon-down"></i></span> 
        <ul class="dropdown-nav nav-sb br sub-nav animated-fast fadeInUpMenu clearfix"> 
         <li><a href="/pbootcms219/shoulu/">收录问题</a></li> 
         <li><a href="/pbootcms219/youhua/">站内优化</a></li> 
        </ul> </li> 
       <li><a class="" href="/pbootcms219/jishu/">SEO技术</a> <span class="toggle-btn"><i class="iconfont icon-down"></i></span> 
        <ul class="dropdown-nav nav-sb br sub-nav animated-fast fadeInUpMenu clearfix"> 
         <li><a href="/pbootcms219/changgui/">常规技术</a></li> 
         <li><a href="/pbootcms219/heimao/">黑帽技术</a></li> 
        </ul> </li> 
       <li><a class="" href="/pbootcms219/jianshe/">网站建设</a> </li> 
       <li><a class="" href="/pbootcms219/peixun/">SEO培训</a> </li> 
       <li><a class="" href="/pbootcms219/case/">SEO案例</a> </li> 
       <li><a class="" href="/pbootcms219/chuangye/">创业指导</a> </li> 
       <li><a class="" href="/pbootcms219/contact/">联系我们</a> <span class="toggle-btn"><i class="iconfont icon-down"></i></span> 
        <ul class="dropdown-nav nav-sb br sub-nav animated-fast fadeInUpMenu clearfix"> 
         <li><a href="/pbootcms219/aboutus/">公司简介</a></li> 
        </ul> </li> 
      </ul> 
     </div> 
    </nav> 
    <span id="search-button" class="search-button fr"><i class="iconfont icon-search"></i></span> 
    <div id="search-area" class="container hidden br sb animated-fast fadeInUpMenu"> 
     <form name="formsearch" class="searchform clearfix" action="/pbootcms219/search/" method="get"> 
      <input class="s-input br fl" type="text" name="keyword" placeholder="请输入关键词..."> 
      <button class="s-button fr br transition brightness" type="submit">搜 索</button> 
     </form> 
    </div> 
   </div> 
  </header> 
  <p class="index-breadcrumb"></p> 
  <div id="content" class="content container"> 
   <!-- 广告位AD1  --> 
   <div class="clearfix"> 
    <div id="mainbox" class="fl"> 
     {{if .RotationData}}
     <div class="swiper-container br"> 
        <ul class="swiper-wrapper"> 
        {{range .RotationData }}
        <li class="swiper-slide"> <a class="link" href="" title="{{.Title}}"> <p class="p ellipsis">{{.Title}}</p> <img src="{{.Url}}" alt="{{.Title}}"> <i class="mask"></i> </a> </li>  
        {{end}}
        </ul> 
        <p class="swiper-pagination"></p> 
        <i class="hidden-sm-md-lg swiper-button-next iconfont icon-right"></i> 
        <i class="hidden-sm-md-lg swiper-button-prev iconfont icon-left"></i> 
       </div> 
     {{end}}
     <!-- 推荐模块A  --> 
     <!--
     <div class="recommend-a sb br mb"> 
      <p class="c-title"><span>网站建设</span></p> 
      <div class="wrap clearfix"> 
       <article class="item fl"> 
        <a class="thumbnail" href="/pbootcms219/jianshe/20.html" title="5G+AR，能为工业带来什么？"> <img class="img-cover br" src="/static/images/1577084922438832.png" alt="5G+AR，能为工业带来什么？" title="5G+AR，能为工业带来什么？"> </a> 
        <a class="category brightness transition br" href="/pbootcms219/jianshe/20.html">5G,AR,工业</a> 
        <h2 class="title multi-ellipsis"><a href="/pbootcms219/jianshe/20.html" title="5G+AR，能为工业带来什么？">5G+AR，能为工业带来什么？</a></h2> 
        <div class="num clearfix"> 
         <span class="view ellipsis fl"><i class="iconfont icon-view"></i>19</span> 
         <time class="time ellipsis fr" datetime="2019-12-23"> <script>document.write(moment("2019-12-23 15:07:55").startOf('hour').fromNow());</script> </time> 
        </div> 
       </article> 
       <article class="item fl"> 
        <a class="thumbnail" href="/pbootcms219/jianshe/19.html" title="电脑长时间睡眠不关机有害么？英特尔官方答案来了"> <img class="img-cover br" src="/static/images/1577084872374796.jpg" alt="电脑长时间睡眠不关机有害么？英特尔官方答案来了" title="电脑长时间睡眠不关机有害么？英特尔官方答案来了"> </a> 
        <a class="category brightness transition br" href="/pbootcms219/jianshe/19.html">英特尔</a> 
        <h2 class="title multi-ellipsis"><a href="/pbootcms219/jianshe/19.html" title="电脑长时间睡眠不关机有害么？英特尔官方答案来了">电脑长时间睡眠不关机有害么？英特尔官方答案来了</a></h2> 
        <div class="num clearfix"> 
         <span class="view ellipsis fl"><i class="iconfont icon-view"></i>9</span> 
         <time class="time ellipsis fr" datetime="2019-12-23"> <script>document.write(moment("2019-12-23 14:59:16").startOf('hour').fromNow());</script> </time> 
        </div> 
       </article> 
      </div> 
     </div> 
     --> 
     <!-- 推荐模块B  --> 
     <!--
     <div class="recommend-b sb br mb"> 
      <p class="c-title"><span>推荐文章</span></p> 
      <div class="wrap clearfix"> 
       <article class="item fl"> 
        <div class="clearfix"> 
         <div class="title-wrap clearfix"> 
          <a class="category transition ellipsis br fl" href="/pbootcms219/youhua/">站内优化</a> 
          <h2 class="title ellipsis fl"> <a href="/pbootcms219/youhua/6.html" title="锤子6年了 我们找到了它没有死的秘密">锤子6年了 我们找到了它没有死的秘密</a> </h2> 
         </div> 
         <a class="thumbnail fl" href="/pbootcms219/youhua/6.html" title="锤子6年了 我们找到了它没有死的秘密"> <img class="img-cover br" src="/static/images/1523499864406172.jpg" alt="锤子6年了 我们找到了它没有死的秘密" title="锤子6年了 我们找到了它没有死的秘密"> </a> 
         <div class="fr-wrap"> 
          <p class="intro br clearfix">他有些戏谑意味地取了“锤子”这个名字。此前抡锤砸西门子冰箱的“壮举”让他一举成名...</p> 
         </div> 
        </div> 
       </article> 
       <article class="item fl"> 
        <div class="clearfix"> 
         <div class="title-wrap clearfix"> 
          <a class="category transition ellipsis br fl" href="/pbootcms219/shoulu/">收录问题</a> 
          <h2 class="title ellipsis fl"> <a href="/pbootcms219/shoulu/4.html" title="PbootCMSV1.0.0正式发布">PbootCMSV1.0.0正式发布</a> </h2> 
         </div> 
         <a class="thumbnail fl" href="/pbootcms219/shoulu/4.html" title="PbootCMSV1.0.0正式发布"> <img class="img-cover br" src="/static/images/1523499864406172.jpg" alt="PbootCMSV1.0.0正式发布" title="PbootCMSV1.0.0正式发布"> </a> 
         <div class="fr-wrap"> 
          <p class="intro br clearfix">PbootCMS是全新内核且永久开源免费的PHP企业网站开发建设管理系统，是一套...</p> 
         </div> 
        </div> 
       </article> 
      </div> 
     </div>
     --> 
     <!-- 推荐模块C  --> 
     <!-- 最新文章 --> 
     <div class="new-post"> 
      <!--<p class="c-title"><span>最新文章</span></p>--> 
      {{if .ArticleData}}
      {{range .ArticleData}}
      <article class="article-list br mb sb clearfix"> 
        <figure class="figure fl"> 
         <a class="thumbnail" href="/pbootcms219/youhua/22.html" title="{{.Title}}"> <img class="img-cover br" src="/static/images/1577085312882794.jpg" alt="{{.Title}}"> </a> 
        </figure> 
        <div class="content"> 
         <h2 class="title ellipsis m-multi-ellipsis"><a href="/pbootcms219/youhua/22.html" title="{{.Title}}">{{.Title}}</a></h2> 
         <p class="intro hidden-sm">{{.Content}}</p> 
         <p class="data clearfix"> <span class="hidden-sm-md-lg author fl"><i class="iconfont icon-user"></i>{{.Author}}</span> <time class="time fl" datetime="{{.GmtModified}}" title="{{.GmtModified}}"> <i class="iconfont icon-time"></i>{{.GmtModified}} </time> <span class="view fl"><i class="iconfont icon-view"></i>0</span> <span class="hidden-sm-md-lg tag ellipsis fr"> <i class="iconfont icon-tag"></i> 制造业 </span> </p> 
        </div> 
       </article> 
       {{end}}
       {{end}}
      <!--
      <article class="article-list br mb sb clearfix"> 
       <figure class="figure fl"> 
        <a class="thumbnail" href="/pbootcms219/youhua/22.html" title="制造业仓促“智能化”警惕“反噬”风险"> <img class="img-cover br" src="/static/images/1577085312882794.jpg" alt="制造业仓促“智能化”警惕“反噬”风险" title="制造业仓促“智能化”警惕“反噬”风险"> </a> 
       </figure> 
       <div class="content"> 
        <h2 class="title ellipsis m-multi-ellipsis"><a href="/pbootcms219/youhua/22.html" title="制造业仓促“智能化”警惕“反噬”风险">制造业仓促“智能化”警惕“反噬”风险</a></h2> 
        <p class="intro hidden-sm">在第二届进博会装备展区，日本那智不二越公司展台的超高速点焊SRA系列机器人。记者 方喆 摄在第二届进博会装备展区，日本那智不二越公司展台的超高速点焊SRA系列机...</p> 
        <p class="data clearfix"> <span class="hidden-sm-md-lg author fl"><i class="iconfont icon-user"></i>admin</span> <time class="time fl" datetime="2019-12-23" title="2019-12-23"> <i class="iconfont icon-time"></i>2019-12-23 </time> <span class="view fl"><i class="iconfont icon-view"></i>25</span> <span class="hidden-sm-md-lg tag ellipsis fr"> <i class="iconfont icon-tag"></i> 制造业 </span> </p> 
       </div> 
      </article> 
      <article class="article-list br mb sb clearfix"> 
       <figure class="figure fl"> 
        <a class="thumbnail" href="/pbootcms219/shoulu/21.html" title="传苹果明年发4款5G版iPhone 最贵售价或超13000元"> <img class="img-cover br" src="/static/images/1577085190150578.jpg" alt="传苹果明年发4款5G版iPhone 最贵售价或超13000元" title="传苹果明年发4款5G版iPhone 最贵售价或超13000元"> </a> 
       </figure> 
       <div class="content"> 
        <h2 class="title ellipsis m-multi-ellipsis"><a href="/pbootcms219/shoulu/21.html" title="传苹果明年发4款5G版iPhone 最贵售价或超13000元">传苹果明年发4款5G版iPhone 最贵售价或超13000元</a></h2> 
        <p class="intro hidden-sm">苹果将改变iPhone的发布周期。在上半年发布两款新iPhone，下半年发布另外两款。调整产品方向的周期变短是为了快速响应市场反馈。据上游供应链表示，苹果已经做...</p> 
        <p class="data clearfix"> <span class="hidden-sm-md-lg author fl"><i class="iconfont icon-user"></i>admin</span> <time class="time fl" datetime="2019-12-23" title="2019-12-23"> <i class="iconfont icon-time"></i>2019-12-23 </time> <span class="view fl"><i class="iconfont icon-view"></i>19</span> <span class="hidden-sm-md-lg tag ellipsis fr"> <i class="iconfont icon-tag"></i> 苹果 </span> </p> 
       </div> 
      </article> -->
      <!-- 广告位AD2  --> 
      <!-- 广告位AD3  --> 
     </div> 
     <!-- 双栏文章 --> 
    </div> 
    <aside id="sidebar" class="hidden-sm-md-lg fr"> 
     <div class="theiaStickySidebar"> 
      <section id="aside_about" class="widget widget_aside_about sb br mb"> 
       <img class="bg" src="/static/images/aboutbg.jpg"> 
       <div class="avatar">
        <img class="img" src="/static/images/user.png">
       </div> 
       <div class="wrap pd"> 
        <p class="title">某某新闻博客</p> 
        <p class="info">定律博客响应式模板，文字修改全局配置-定制标签，PbootCMS是全新内核且永久开源免费的PHP企业网站开发建设管理系统，是一套高效、简洁、 强悍的可商用的PHP CMS源码，能够满足各类企业网站开发建设的需要。</p> 
       </div> 
      </section> 
      <!--
      <section id="aside_hot" class="widget widget_aside_hot sb br mb"> 
       <p class="c-title mb"><span class="name">热门文章</span></p> 
       <ul class="widget-content aside_hot"> 
        <li class="clearfix"><span class="list list-1">1.</span><a href="/pbootcms219/youhua/6.html" title="锤子6年了 我们找到了它没有死的秘密">锤子6年了 我们找到了它没有死的秘密</a></li> 
        <li class="clearfix"><span class="list list-1">2.</span><a href="/pbootcms219/youhua/22.html" title="制造业仓促“智能化”警惕“反噬”风险">制造业仓促“智能化”警惕“反噬”风险</a></li> 
       </ul> 
      </section> 
      <section id="aside_hot_comment" class="widget widget_aside_hot_comment sb br mb"> 
       <p class="c-title mb"><span class="name">随机文章</span></p> 
       <ul class="widget-content aside_hot_comment"> 
        <li class="list clearfix"><a href="[list:like]" title="网站建设旗舰版"><span class="img-wrap"><img src="/static/images/1523499864406172.jpg" alt="网站建设旗舰版" class="img-cover br random-img"></span> 
          <div class="new-text"> 
           <p class="title">网站建设旗舰版</p> 
           <div class="info">
            <span class="time"><i class="iconfont icon-time"></i><script>document.write(moment("2018-04-12 10:24:04").startOf('hour').fromNow());</script></span>
            <span class="comment"><i class="iconfont icon-view"></i>19</span>
           </div> 
          </div> </a></li> 
        <li class="list clearfix"><a href="[list:like]" title="电脑长时间睡眠不关机有害么？英特尔官方答案来了"><span class="img-wrap"><img src="/static/images/1577084872374796.jpg" alt="电脑长时间睡眠不关机有害么？英特尔官方答案来了" class="img-cover br random-img"></span> 
          <div class="new-text"> 
           <p class="title">电脑长时间睡眠不关机有害么？英特尔官方答案来了</p> 
           <div class="info">
            <span class="time"><i class="iconfont icon-time"></i><script>document.write(moment("2019-12-23 14:59:16").startOf('hour').fromNow());</script></span>
            <span class="comment"><i class="iconfont icon-view"></i>9</span>
           </div> 
          </div> </a></li> 
       </ul> 
      </section>
      --> 
      <section id="divTags" class="widget widget_tags sb br mb"> 
       <p class="c-title mb"><span class="name">标签列表</span></p> 
       <ul class="widget-content divTags"> 
        {{range .TagData }}
            <li><a href="/pbootcms219/jiaocheng/?tag={{.Id}}">{{.Name}}</a></li> 
        {{end}}
       </ul> 
      </section> 
     </div> 
    </aside> 
   </div> 
   <!-- 通栏文章 --> 
   <!-- 多图模块 --> 
   <!--
   <div class="img-post sb br mb"> 
    <p class="c-title mb"> <span>SEO技术</span> <a class="more" href="/pbootcms219/jishu/"> <i class="iconfont icon-right"></i></a> </p> 
    <div class="clearfix"> 
     <article class="left fl"> 
      <a class="a" href="/pbootcms219/changgui/23.html" title="定律模板定制服务"> <img class="img img-cover br" src="/static/images/1577085762817377.jpg" alt="定律模板定制服务" title="定律模板定制服务"> <h2 class="title ellipsis m-multi-ellipsis">定律模板定制服务</h2> <i class="mask br"></i> </a> 
     </article> 
     <article class="top fl"> 
      <a class="a" href="/pbootcms219/heimao/13.html" title="网站空间"> <img class="img img-cover br" src="/static/images/1523499979727269.jpg" alt="网站空间" title="网站空间"> <h2 class="title ellipsis m-multi-ellipsis">网站空间</h2> <i class="mask br"></i> </a> 
     </article> 
     <article class="top fl"> 
      <a class="a" href="/pbootcms219/changgui/12.html" title="网站建设旗舰版"> <img class="img img-cover br" src="/static/images/1523499864406172.jpg" alt="网站建设旗舰版" title="网站建设旗舰版"> <h2 class="title ellipsis m-multi-ellipsis">网站建设旗舰版</h2> <i class="mask br"></i> </a> 
     </article> 
     <article class="bottom fl"> 
      <a class="a" href="/pbootcms219/changgui/11.html" title="网站建设专业版"> <img class="img img-cover br" src="/static/images/1523501297516241.jpg" alt="网站建设专业版" title="网站建设专业版"> <h2 class="title ellipsis m-multi-ellipsis">网站建设专业版</h2> <i class="mask br"></i> </a> 
     </article> 
     <article class="bottom fl"> 
      <a class="a" href="/pbootcms219/changgui/10.html" title="网站建设基础版"> <img class="img img-cover br" src="/static/images/1523499813391526.jpg" alt="网站建设基础版" title="网站建设基础版"> <h2 class="title ellipsis m-multi-ellipsis">网站建设基础版</h2> <i class="mask br"></i> </a> 
     </article> 
     <article class="bottom fl"> 
      <a class="a" href="/pbootcms219/heimao/9.html" title="域名注册服务"> <img class="img img-cover br" src="/static/images/1523499435499884.png" alt="域名注册服务" title="域名注册服务"> <h2 class="title ellipsis m-multi-ellipsis">域名注册服务</h2> <i class="mask br"></i> </a> 
     </article> 
    </div> 
   </div> 
    -->
   <!-- 三栏文章 --> 
   <div class="text-post-wrap clearfix"></div> 
   <!-- 友情链接 --> 
   <div class="flink container sb br mb"> 
    <p class="c-title mb">友情链接<span class="rule">如需交换友情链接，请联系QQ：927764151 </span></p> 
    <ul id="flink" class="f-list clearfix"> 
     {{range .LinkData }}
        <li><a href="{{.Url}}" title="{{.Name}}">{{.Name}}</a></li> 
     {{end}}
    </ul> 
   </div> 
  </div> 
  <footer class="footer"> 
   <div class="main container"> 
    <div class="f-about fl"> 
     <p class="title pb1">本站关键词</p> 
     <div class="intro">
      新闻博客网站模板,教程资讯网站源码
     </div> 
     <small><span>Copyright © 2022-2022 某某新闻博客 版权所有 </span><br><span><a href="/sitemap.xml" target="_blank">XML地图</a></span><span class="icp">备案号：<a href="http://beian.miit.gov.cn/">豫ICP备xxxxxxxx号</a></span> <a href="https://www.91084.com/" target="_blank">网站模板</a></small> 
    </div> 
    <div class="f-contact fl"> 
     <p class="title pb1">联系我们</p> 
     <div> 
      <p><i class="iconfont icon-qq-fill"></i>QQ：927764151</p> 
      <p><i class="iconfont icon-phone"></i>电话：0371-88886666</p> 
      <p><i class="iconfont icon-address"></i>广东省</p> 
     </div> 
    </div> 
    <div class="f-qr fr"> 
     <p class="title pb1">关注我们</p> 
     <div>
      <img class="img br" src="/static/images/1645527536351277.png">
     </div> 
    </div> 
    <div class="clear"></div> 
   </div> 
   <div id="toolbar" class="toolbar "> 
    <a class="hidden-sm-md-lg btn qq sb br" href="http://wpa.qq.com/msgrd?v=3&amp;uin=6364544&amp;site=qq&amp;menu=yes" target="_blank" rel="nofollow"> <i class="iconfont icon-qq"></i> <span class="qqnum sb br"></span> </a> 
    <div id="qr" class="hidden-sm-md-lg btn sb br"> 
     <i class="iconfont icon-qr"></i> 
     <img id="qr-img" class="br sb" src="/static/images/1645527536351277.png"> 
    </div> 
    <div id="totop" class="btn hidden sb br"> 
     <i class="iconfont icon-top"></i> 
    </div> 
   </div> 
  </footer> 
  <!--黑色透明遮罩--> 
  <div id="mask-hidden" class="mask-hidden transition"></div> 
  <script src="/static/js/common.js" type="text/javascript"></script> 
  <!--[if lt IE 9]><script src="/pbootcms219/template/blog/js/html5-css3.js"></script><![endif]--> 
  <!--初始化Swiper--> 
  <script>
      var swiper = new Swiper('.swiper-container', {
            pagination: '.swiper-pagination',
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            centeredSlides: true,
            autoplay: 3500,
            slidesPerView: 1,
            paginationClickable: true,
            autoplayDisableOnInteraction: false,
            spaceBetween: 0,
            loop: true
        });
  </script> 
  <div style="display:none"> 
   <script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?a1e569f0640dd71508eb026a11de2bbf";
        var s = document.getElementsByTagName("script")[0]; 
        s.parentNode.insertBefore(hm, s);
    })();
    </script> 
    <script>
        $(document).ready(function(){
            console.log("欢迎来到博客系统");
        });    
    </script>
  </div>  
 </body>
</html>