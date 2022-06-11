/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-10 19:57:13
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-11 15:21:03
 * @FilePath: \pm-admin\routers\router.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package routers

import (
	"pm-admin/controllers"

	"pm-admin/controllers/modules/system"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/plugins/cors"
)

func init() {
	beego.InsertFilter("*", beego.BeforeRouter, cors.Allow(&cors.Options{
		AllowAllOrigins:  true,
		AllowMethods:     []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"},
		AllowHeaders:     []string{"Origin", "Authorization", "Access-Control-Allow-Origin", "Access-Control-Allow-Headers", "Content-Type"},
		ExposeHeaders:    []string{"Content-Length", "Access-Control-Allow-Origin", "Access-Control-Allow-Headers", "Content-Type"},
		AllowCredentials: true,
	}))

	beego.Router("/", &controllers.MainController{})
	beego.Router("/system/index", &system.SystemController{}, "Get:Index")
	beego.Router("/system/toLogin", &system.SystemController{}, "Get:ToLogin")
	beego.Router("/system/login", &system.SystemController{}, "Post:Login")
	beego.Router("/system/captcha", &system.SystemController{}, "Get:Captcha")

	// 用户管理
	beego.Router("/user/view", &system.UserController{}, "Get:View")

	// 角色管理
	beego.Router("/role/view", &system.RoleController{}, "Get:View")

	// 菜单管理
	beego.Router("/menu/view", &system.MenuController{}, "Get:View")

}
