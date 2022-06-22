/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-21 19:24:07
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-22 17:12:43
 * @FilePath: \pm-admin\serivces\tag_serivce.go
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

func CreatePmArticle(pmArticle models.PmArticle) int64 {
	orm := orm.NewOrm()
	node, err := utils.NewWorker(1)
	Id := node.GetId()
	res, err := orm.Raw("insert into pm_article set id = ?,title = ?,content = ?,author = ?,gmt_create = ?,gmt_modified = ?", Id, pmArticle.Title, pmArticle.Content, pmArticle.Author, time.Now(), time.Now()).Exec()
	if err == nil {
		//返回执行成功条数
		num, _ := res.RowsAffected()
		fmt.Println("mysql row affected nums: ", num)
	}
	return Id
}

func SelectPmArticle() []models.PmArticle {
	orm := orm.NewOrm()
	var list []models.PmArticle
	res, err := orm.Raw("SELECT * FROM pm_article").QueryRows(&list)
	if err == nil {
		//返回执行成功条数
		fmt.Println("mysql row affected nums: ", res)
	}
	return list
}
