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

	"pm-admin/models"
	"pm-admin/models/dto"
	"pm-admin/models/vo"
	"pm-admin/utils"

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

func CreatePmUser(createUserDto dto.CreateUserDto) int64 {
	orm := orm.NewOrm()
	node, err := utils.NewWorker(1)
	Id := node.GetId()
	newSalt := utils.CreateSalt()
	newMd5Pass := utils.Md5Crypt(createUserDto.Password, newSalt)
	res, err := orm.Raw("insert into pm_user set id = ?,username = ?,nickname = ?,password = ?,salt = ?,email = ?,mobile = ?", Id, createUserDto.Username, createUserDto.Nickname, newMd5Pass, newSalt, createUserDto.Email, createUserDto.Mobile).Exec()
	if err == nil {
		//返回执行成功条数
		num, _ := res.RowsAffected()
		fmt.Println("mysql row affected nums: ", num)
	}
	return Id
}

func SelectPmUser() []models.PmUser {
	orm := orm.NewOrm()
	var list []models.PmUser
	res, err := orm.Raw("SELECT * FROM pm_user").QueryRows(&list)
	if err == nil {
		//返回执行成功条数
		fmt.Println("mysql row affected nums: ", res)
	}
	return list
}
