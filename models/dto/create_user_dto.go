/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-20 22:35:09
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-20 22:35:40
 * @FilePath: \pm-admin\models\dto\create_user.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package dto

type CreateUserDto struct {
	Id           int64  `json:"id" orm:"column(id)"`
	Username     string `json:"username" orm:"column(username)"`
	Nickname     string `json:"nickname" orm:"column(nickname)"`
	Password     string `json:"password" orm:"column(password)"`
	Email        string `json:"email" orm:"column(email)"`
	Mobile       string `json:"mobile" orm:"column(mobile)"`
	Status       int64  `json:"status" orm:"column(status)"`
	Salt         int64  `json:"salt" orm:"column(salt)"`
	Remark       string `json:"remark" orm:"column(remark)"`
	UserIdCreate int64  `json:"userIdCreate" orm:"column(user_id_create)"`
	GmtCreate    string `json:"gmtCreate" orm:"column(gmt_create)"`
	GmtModified  string `json:"gmtModified" orm:"column(gmt_modified)"`
}
