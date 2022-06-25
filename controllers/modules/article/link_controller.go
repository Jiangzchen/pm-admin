/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-21 09:32:03
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-21 20:49:54
 * @FilePath: \pm-admin\controllers\modules\article\tag_controller.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package article

import (
	"encoding/json"
	"fmt"
	"pm-admin/models"
	"pm-admin/serivces"
	"pm-admin/utils"

	"github.com/astaxie/beego"
)

// 链接控制器
type LinkController struct {
	beego.Controller
}

// @Title 链接列表
// @Description 查询链接列表
// @router /list [post]
func (this *LinkController) List() {
	list := serivces.SelectPmLink()
	data := utils.R{0, "ok", list}
	this.Data["json"] = &data
	this.ServeJSON()
}

func (this *LinkController) Create() {
	var pmLink models.PmLink
	err := json.Unmarshal(this.Ctx.Input.RequestBody, &pmLink)

	if err != nil {
		fmt.Println("json.Unmarshal is err:", err.Error())
	}

	Id := serivces.CreatePmLink(pmLink)
	data := utils.R{0, "ok", Id}
	this.Data["json"] = &data
	this.ServeJSON()
}
