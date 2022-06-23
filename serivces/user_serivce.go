/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 17:49:03
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-23 13:22:51
 * @FilePath: \pm-admin\serivces\system_serivce.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package serivces

import (
	"fmt"
	"time"

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
	res, err := orm.Raw("insert into pm_user set id = ?,username = ?,nickname = ?,password = ?,salt = ?,email = ?,mobile = ?,remark = ?,gmt_create = ?,gmt_modified = ?", Id, createUserDto.Username, createUserDto.Nickname, newMd5Pass, newSalt, createUserDto.Email, createUserDto.Mobile, createUserDto.Remark, time.Now(), time.Now()).Exec()
	if err == nil {
		//返回执行成功条数
		num, _ := res.RowsAffected()
		fmt.Println("mysql row affected nums: ", num)
	}
	return Id
}

func SelectPmUser(userPageDto dto.UserPageDto) []models.PmUser {
	orm := orm.NewOrm()
	var list []models.PmUser
	res, err := orm.Raw("SELECT * FROM pm_user where username = ? limit ?,?", userPageDto.Keyword, (userPageDto.PageNum-1)*userPageDto.PageSize, userPageDto.PageSize*userPageDto.PageNum).QueryRows(&list)
	if err == nil {
		//返回执行成功条数
		fmt.Println("mysql row affected nums: ", res)
	}
	return list
}

func DeletePmUser(idArrDto dto.IdArrDto) {
	orm := orm.NewOrm()
	// 读取 value
	for _, value := range idArrDto.Data {
		res, err := orm.Raw("delete from pm_user where id = ?", value).Exec()
		if err == nil {
			//返回执行成功条数
			fmt.Println("mysql row affected nums: ", res)
		}
	}
}
