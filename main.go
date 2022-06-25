/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-10 19:57:13
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-24 18:52:51
 * @FilePath: \pm-admin\main.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package main

import (
	_ "pm-admin/routers"

	"pm-admin/utils"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

func init() {
	utils.MysqlInit()
}
func main() {
	orm.Debug = true
	beego.SetLogger("file", `{"filename":"logs/dev.log"}`)
	beego.Run()
}
