/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-10 19:57:13
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-11 10:57:18
 * @FilePath: \pm-admin\routers\router.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package routers

import (
	"pm-admin/controllers"

	"pm-admin/controllers/modules/system"

	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	// beego.Router("/index", &controllers.SystemController{}, "get:Index")
	beego.Router("/system/login", &system.SystemController{}, "get,post:Login")
	beego.Router("/system/captcha", &system.SystemController{}, "get:Captcha")

}
