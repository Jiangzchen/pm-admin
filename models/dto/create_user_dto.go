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
	Id       int    `json:"id"`
	Username string `json:"username"`
	Password string `json:"password"`
	Salt string `json:"salt"`
}
