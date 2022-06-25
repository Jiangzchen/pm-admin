/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 11:16:38
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-23 13:21:18
 * @FilePath: \pm-admin\controllers\modules\system\user_controller.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package system

import (
	"encoding/json"
	"fmt"
	"pm-admin/models/dto"
	"pm-admin/serivces"
	"pm-admin/utils"

	"github.com/astaxie/beego"
)

// 用户控制器
type UserController struct {
	beego.Controller
}

// @Title 用户界面
// @Description 跳转用户界面
// @router /view [get]
func (this *UserController) View() {
	// 渲染模板
	this.TplName = "user/view.tpl"
}

func (this *UserController) Create() {
	var createUserDto dto.CreateUserDto
	err := json.Unmarshal(this.Ctx.Input.RequestBody, &createUserDto)

	if err != nil {
		fmt.Println("json.Unmarshal is err:", err.Error())
	}

	Id := serivces.CreatePmUser(createUserDto)
	data := utils.R{0, "ok", Id}
	this.Data["json"] = &data
	this.ServeJSON()
}

// @Title 用户列表
// @Description 查询用户列表
// @router /list [post]
func (this *UserController) List() {
	var userPageDto dto.UserPageDto
	err := json.Unmarshal(this.Ctx.Input.RequestBody, &userPageDto)

	if err != nil {
		fmt.Println("json.Unmarshal is err:", err.Error())
	}
	list := serivces.SelectPmUser(userPageDto)
	data := utils.R{0, "ok", list}
	this.Data["json"] = &data
	this.ServeJSON()
}

func (this *UserController) Delete() {
	var idArrDto dto.IdArrDto
	err := json.Unmarshal(this.Ctx.Input.RequestBody, &idArrDto)

	if err != nil {
		fmt.Println("json.Unmarshal is err:", err.Error())
	}
	serivces.DeletePmUser(idArrDto)
	data := utils.R{0, "ok", nil}
	this.Data["json"] = &data
	this.ServeJSON()
}
