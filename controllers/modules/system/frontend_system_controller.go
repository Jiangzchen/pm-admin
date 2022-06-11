/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 12:04:44
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-11 12:09:51
 * @FilePath: \pm-admin\controllers\modules\system\frontend_system_controller.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package system

import (
	"github.com/astaxie/beego"
)

type FrontendSystemController struct {
	beego.Controller
}

func (this *FrontendSystemController) View() {
	// 渲染模板
	this.TplName = "frontend/view.tpl"
}
