/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-21 19:24:07
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-21 21:27:37
 * @FilePath: \pm-admin\serivces\tag_serivce.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package serivces

import (
	"fmt"

	"pm-admin/models"
	"pm-admin/utils"

	"github.com/astaxie/beego/orm"
)

func CreatePmRotation(pmRotation models.PmRotation) int64 {
	orm := orm.NewOrm()
	node, err := utils.NewWorker(1)
	Id := node.GetId()
	res, err := orm.Raw("insert into pm_rotation set id = ?,title = ?,url = ?", Id, pmRotation.Title, pmRotation.Url).Exec()
	if err == nil {
		//返回执行成功条数
		num, _ := res.RowsAffected()
		fmt.Println("mysql row affected nums: ", num)
	}
	return Id
}

/**
type TestStruct struct {
	Author 	string
	Content string
}

var tests2 []TestStruct
num, err := o.Raw("SELECT b.username as author,a.con_content as content from bus_content a LEFT JOIN sys_user b on a.create_by = b.id where b.username = ?","张三").QueryRows(&tests2)
if err == nil {
	fmt.Println("user nums: ", num)
	fmt.Println("user nums: ", tests2)
}
**/

func SelectPmRotation() []models.PmRotation {
	orm := orm.NewOrm()
	var list []models.PmRotation
	res, err := orm.Raw("SELECT * FROM pm_rotation").QueryRows(&list)
	if err == nil {
		//返回执行成功条数
		fmt.Println("mysql row affected nums: ", res)
	}
	return list
}
