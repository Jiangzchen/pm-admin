/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 11:31:43
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-11 15:18:14
 * @FilePath: \pm-admin\controllers\modules\system\menu_controller.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package system

import (
	"encoding/json"
	"fmt"
	"pm-admin/models"
	"pm-admin/serivces"
	"pm-admin/utils"

	"github.com/astaxie/beego"
)

// 菜单控制器
type MenuController struct {
	beego.Controller
}

// @Title 菜单界面
// @Description 跳转菜单页面
// @router /view [get]
func (this *MenuController) View() {
	// 渲染模板
	this.TplName = "menu/view.tpl"
}

// @Title 菜单列表
// @Description 查询菜单列表
// @router /list [post]
func (this *MenuController) List() {
	list := serivces.SelectPmMenu()
	data := utils.R{0, "ok", list}
	this.Data["json"] = &data
	this.ServeJSON()
}

func (this *MenuController) Create() {
	var pmMenu models.PmMenu
	err := json.Unmarshal(this.Ctx.Input.RequestBody, &pmMenu)

	if err != nil {
		fmt.Println("json.Unmarshal is err:", err.Error())
	}

	Id := serivces.CreatePmMenu(pmMenu)
	data := utils.R{0, "ok", Id}
	this.Data["json"] = &data
	this.ServeJSON()
}
