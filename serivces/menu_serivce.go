/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 17:49:03
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-21 12:57:18
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

func CreatePmMenu(pmMenu models.PmMenu) int64 {
	orm := orm.NewOrm()
	node, err := utils.NewWorker(1)
	Id := node.GetId()
	res, err := orm.Raw("insert into pm_menu set id = ?,name = ?,url = ?,parent_id = ?,perms = ?,type = ?,icon = ?,order_num = ?,gmt_create = ?,gmt_modified = ?", Id, pmMenu.Name, pmMenu.Url, pmMenu.ParentId, pmMenu.Perms, pmMenu.Type, pmMenu.Icon, pmMenu.OrderNum, time.Now(), time.Now()).Exec()
	if err == nil {
		//返回执行成功条数
		num, _ := res.RowsAffected()
		fmt.Println("mysql row affected nums: ", num)
	}
	return Id
}

func SelectPmMenu() []models.PmMenu {
	orm := orm.NewOrm()
	var list []models.PmMenu
	res, err := orm.Raw("SELECT * FROM pm_menu").QueryRows(&list)
	if err == nil {
		//返回执行成功条数
		fmt.Println("mysql row affected nums: ", res)
	}
	return list
}
