/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 17:49:03
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-11 17:49:12
 * @FilePath: \pm-admin\serivces\system_serivce.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package serivces

import (
	"fmt"

	"pm-admin/models/vo"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

func SelectPmUserWithUsername(username string) (loginVo vo.LoginVo) {
	orm := orm.NewOrm()
	err := orm.Raw("select * from pm_user where username = ?", username).QueryRow(&loginVo)
	if err != nil {
		fmt.Println("err = ", err)
		beego.Info("查询出错!")
		return
	}
	return loginVo
}
