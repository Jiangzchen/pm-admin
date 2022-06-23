/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-23 09:31:45
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-23 09:32:09
 * @FilePath: \pm-admin\models\dto\page.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package dto

type Page struct {
	PageNum  int `json:"pageNum"`
	PageSize int `json:"pageSize"`
}
