/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 13:33:41
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-22 16:57:35
 * @FilePath: \pm-admin\models\def.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package models

type PmUser struct {
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

type PmRole struct {
	Id           int64  `json:"id" orm:"column(id)"`
	RoleName     string `json:"roleName" orm:"column(role_name)"`
	RoleSign     string `json:"roleSign" orm:"column(role_sign)"`
	Remark       string `json:"remark" orm:"column(remark)"`
	UserIdCreate int64  `json:"userIdCreate" orm:"column(user_id_create)"`
	GmtCreate    string `json:"gmtCreate" orm:"column(gmt_create)"`
	GmtModified  string `json:"gmtModified" orm:"column(gmt_modified)"`
}

type PmMenu struct {
	Id          int64  `json:"id" orm:"column(id)"`
	ParentId    string `json:"parentId" orm:"column(parent_id)"`
	Name        string `json:"name" orm:"column(name)"`
	Url         string `json:"url" orm:"column(url)"`
	Perms       int64  `json:"perms" orm:"column(perms)"`
	Type        string `json:"type" orm:"column(type)"`
	Icon        string `json:"icon" orm:"column(icon)"`
	OrderNum    string `json:"orderNum" orm:"column(order_num)"`
	GmtCreate   string `json:"gmtCreate" orm:"column(gmt_create)"`
	GmtModified string `json:"gmtModified" orm:"column(gmt_modified)"`
}

type PmUserRole struct {
	Id     int64  `json:"id" orm:"column(id)"`
	UserId string `json:"userId" orm:"column(user_id)"`
	RoleId string `json:"roleId" orm:"column(role_id)"`
}

type PmRoleMenu struct {
	Id     int64  `json:"id" orm:"column(id)"`
	RoleId string `json:"roleId" orm:"column(role_id)"`
	MenuId string `json:"menuId" orm:"column(menu_id)"`
}

type PmTag struct {
	Id   int64  `json:"id" orm:"column(id)"`
	Name string `json:"name" orm:"column(name)"`
	Url  string `json:"url" orm:"column(url)"`
}

type PmLink struct {
	Id   int64  `json:"id" orm:"column(id)"`
	Name string `json:"name" orm:"column(name)"`
	Url  string `json:"url" orm:"column(url)"`
}

type PmRotation struct {
	Id    int64  `json:"id" orm:"column(id)"`
	Title string `json:"title" orm:"column(title)"`
	Url   string `json:"url" orm:"column(url)"`
}

type PmArticle struct {
	Id          int64  `json:"id" orm:"column(id)"`
	Title       string `json:"title" orm:"column(title)"`
	Content     string `json:"content" orm:"column(content)"`
	Author      string `json:"author" orm:"column(author)"`
	GmtCreate   string `json:"gmtCreate" orm:"column(gmt_create)"`
	GmtModified string `json:"gmtModified" orm:"column(gmt_modified)"`
}
