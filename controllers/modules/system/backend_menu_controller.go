/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 11:31:43
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-11 12:04:07
 * @FilePath: \pm-admin\controllers\modules\system\menu_controller.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package system

import (
	"github.com/astaxie/beego"
)

type BackendMenuController struct {
	beego.Controller
}

func (this *BackendMenuController) View() {
	// 渲染模板
	this.TplName = "backend/menu/view.tpl"
}