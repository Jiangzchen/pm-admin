/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-10 20:18:57
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-10 20:23:29
 * @FilePath: \pm-admin\controllers\system.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package system

import (
	"github.com/astaxie/beego"
)

type SystemController struct {
	beego.Controller
}

func (this *SystemController) Login() {

	// 渲染模板
	this.TplName = "backend/system/login.tpl"

}
