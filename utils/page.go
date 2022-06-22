/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-22 21:27:04
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-22 21:27:33
 * @FilePath: \pm-admin\utils\page.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package utils

type Page struct {
	PageNo     int
	PageSize   int
	TotalPage  int
	TotalCount int
	FirstPage  bool
	LastPage   bool
	List       interface{}
}

func PageHelper(pageNo int, pageSize int, list interface{}) Page {
	return Page{}
}
