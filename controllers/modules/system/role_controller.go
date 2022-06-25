/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 11:31:30
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-11 15:20:35
 * @FilePath: \pm-admin\controllers\modules\system\role_controller.go
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

// 角色控制器
type RoleController struct {
	beego.Controller
}

// @Title 角色界面
// @Description 跳转角色页面
// @router /view [get]
func (this *RoleController) View() {
	// 渲染模板
	this.TplName = "role/view.tpl"
}

// @Title 角色列表
// @Description 查询角色列表
// @router /list [post]
func (this *RoleController) List() {
	list := serivces.SelectPmRole()
	data := utils.R{0, "ok", list}
	this.Data["json"] = &data
	this.ServeJSON()
}

func (this *RoleController) Create() {
	var pmRole models.PmRole
	err := json.Unmarshal(this.Ctx.Input.RequestBody, &pmRole)

	if err != nil {
		fmt.Println("json.Unmarshal is err:", err.Error())
	}

	Id := serivces.CreatePmRole(pmRole)
	data := utils.R{0, "ok", Id}
	this.Data["json"] = &data
	this.ServeJSON()
}
