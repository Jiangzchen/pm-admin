/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-20 22:45:32
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-20 22:55:45
 * @FilePath: \pm-admin\utils\md5.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package utils

import (
	"crypto/md5"
	"fmt"
	"math/rand"
	"strings"
)

//给字符串生成md5
//@params str 需要加密的字符串
//@params salt interface{} 加密的盐
//@return str 返回md5码
func Md5Crypt(str string, salt ...interface{}) (CryptStr string) {
	if l := len(salt); l > 0 {
		slice := make([]string, l+1)
		str = fmt.Sprintf(str+strings.Join(slice, "%v"), salt...)
	}
	return fmt.Sprintf("%x", md5.Sum([]byte(str)))
}

const salts = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

// 创建一个盐
func CreateSalt() string {
	var n = 8
	b := make([]byte, n)
	for i := range b {
		b[i] = salts[rand.Int63()%int64(len(salts))]
	}
	return string(b)
}
