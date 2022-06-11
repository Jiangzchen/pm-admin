/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-11 13:48:09
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-11 13:49:50
 * @FilePath: \pm-admin\models\dto\login_dto.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package dto

type LoginDto struct {
	Username string `json:"username"`
	Password string `json:"password"`
	VerCode  string `json:"verCode"`
}
