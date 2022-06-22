/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-21 19:09:36
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-21 19:14:52
 * @FilePath: \pm-admin\utils\res.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package utils

type R struct {
	Code    int64       `json:"code"`
	Message string      `json:"message"`
	Data    interface{} `json:"data"` // 返回数据
}

// 自定义响应信息
func (res *R) OkToMessage(message string) R {
	return R{
		Code:    res.Code,
		Message: message,
		Data:    res.Data,
	}
}

func (res *R) OkToData(data interface{}) R {
	return R{
		Code:    res.Code,
		Message: res.Message,
		Data:    data,
	}
}

// 构造函数
func r(code int64, message string) *R {
	return &R{
		Code:    code,
		Message: message,
		Data:    nil,
	}
}
