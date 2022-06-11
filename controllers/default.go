/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-10 19:57:13
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-11 15:29:52
 * @FilePath: \pm-admin\controllers\default.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {

	this.Data["Website"] = "www.jiangzc.cn"
	this.Data["Email"] = "927764151@qq.com"

	// this.TplName = "index.tpl"
	this.TplName = "view.tpl"
}
