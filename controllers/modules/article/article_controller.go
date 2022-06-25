/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-21 09:32:03
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-23 16:03:44
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

// 文章控制器
type ArticleController struct {
	beego.Controller
}

func (this *ArticleController) View() {
	// 渲染模板
	this.TplName = "article/13.tpl"
}

func (this *ArticleController) List() {
	list := serivces.SelectPmArticle()
	data := utils.R{0, "ok", list}
	this.Data["json"] = &data
	this.ServeJSON()
}

func (this *ArticleController) Create() {
	var pmArticle models.PmArticle
	err := json.Unmarshal(this.Ctx.Input.RequestBody, &pmArticle)

	if err != nil {
		fmt.Println("json.Unmarshal is err:", err.Error())
	}

	Id := serivces.CreatePmArticle(pmArticle)
	data := utils.R{0, "ok", Id}
	this.Data["json"] = &data
	this.ServeJSON()
}
