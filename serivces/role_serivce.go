/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 17:49:03
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-29 13:10:43
 * @FilePath: \pm-admin\serivces\system_serivce.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package serivces

import (
	"fmt"
	"time"

	"pm-admin/models"
	"pm-admin/utils"

	"github.com/astaxie/beego/orm"
)

func CreatePmRole(pmRole models.PmRole) int64 {
	orm := orm.NewOrm()
	node, err := utils.NewWorker(1)
	Id := node.GetId()
	res, err := orm.Raw("insert into pm_role set id = ?,role_name = ?,role_sign = ?,remark = ?,user_id_create = ?,gmt_create = ?,gmt_modified = ?", Id, pmRole.RoleName, pmRole.RoleSign, pmRole.Remark, pmRole.UserIdCreate, time.Now(), time.Now()).Exec()
	if err == nil {
		//返回执行成功条数
		num, _ := res.RowsAffected()
		fmt.Println("mysql row affected nums: ", num)
	}
	return Id
}

func SelectPmRole() []models.PmRole {
	orm := orm.NewOrm()
	var list []models.PmRole
	res, err := orm.Raw("SELECT * FROM pm_role ").QueryRows(&list)
	if err == nil {
		//返回执行成功条数
		fmt.Println("mysql row affected nums: ", res)
	}
	return list
}
