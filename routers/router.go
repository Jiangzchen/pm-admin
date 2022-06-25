/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-10 19:57:13
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-25 18:00:46
 * @FilePath: \pm-admin\routers\router.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */

// Package routers @APIVersion 1.0.0
// @Title pm-admin
// @Description pm-admin APIs
// @Contact 927764151@qq.com
package routers

import (
	"fmt"
	"pm-admin/controllers"

	"github.com/astaxie/beego/context"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/plugins/cors"

	"pm-admin/controllers/modules/article"
	"pm-admin/controllers/modules/system"

	"github.com/astaxie/beego"
)

var JwtAuthFilter = func(ctx *context.Context) {
	fmt.Println("都要过滤")
	logs.Info("current router path is ", ctx.Request.RequestURI)

}

func init() {

	beego.InsertFilter("/*", beego.BeforeRouter, JwtAuthFilter)
	beego.InsertFilter("*", beego.BeforeRouter, cors.Allow(&cors.Options{
		AllowAllOrigins:  true,
		AllowMethods:     []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"},
		AllowHeaders:     []string{"Origin", "Authorization", "Access-Control-Allow-Origin", "Access-Control-Allow-Headers", "Content-Type"},
		ExposeHeaders:    []string{"Content-Length", "Access-Control-Allow-Origin", "Access-Control-Allow-Headers", "Content-Type"},
		AllowCredentials: true,
	}))

	beego.SetStaticPath("/swagger", "swagger") // 访问 http://localhost:8080/swagger即可看到swagger页面
	beego.Router("/", &controllers.MainController{})
	beego.Router("/system/index", &system.SystemController{}, "Get:Index")
	beego.Router("/system/toLogin", &system.SystemController{}, "Get:ToLogin")
	beego.Router("/system/login", &system.SystemController{}, "Post:Login")
	beego.Router("/system/captcha", &system.SystemController{}, "Get:Captcha")
	beego.Router("/system/check", &system.SystemController{}, "Post:Check")
	beego.Router("/system/loginOut", &system.SystemController{}, "Post:LoginOut")

	// 用户管理
	beego.Router("/user/view", &system.UserController{}, "Get:View")
	beego.Router("/user/create", &system.UserController{}, "Post:Create")
	beego.Router("/user/list", &system.UserController{}, "Post:List")
	beego.Router("/user/delete", &system.UserController{}, "Post:Delete")

	// 角色管理
	beego.Router("/role/view", &system.RoleController{}, "Get:View")
	beego.Router("/role/create", &system.UserController{}, "Post:Create")
	beego.Router("/role/list", &system.RoleController{}, "Post:List")

	// 菜单管理
	beego.Router("/menu/view", &system.MenuController{}, "Get:View")
	beego.Router("/menu/create", &system.UserController{}, "Post:Create")
	beego.Router("/menu/list", &system.MenuController{}, "Post:List")

	// 文章管理
	beego.Router("/article/view", &article.ArticleController{}, "Get:View")
	beego.Router("/article/list", &article.ArticleController{}, "Post:List")
	beego.Router("/article/create", &article.ArticleController{}, "Post:Create")

	// 标签管理
	beego.Router("/tag/list", &article.TagController{}, "Post:List")
	beego.Router("/tag/create", &article.TagController{}, "Post:Create")

	// 链接管理
	beego.Router("/link/list", &article.LinkController{}, "Post:List")
	beego.Router("/link/create", &article.LinkController{}, "Post:Create")

	// 轮播管理
	beego.Router("/rotation/list", &article.RotationController{}, "Post:List")
	beego.Router("/rotation/create", &article.RotationController{}, "Post:Create")
}
