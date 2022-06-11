/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-10 20:18:57
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-11 12:03:56
 * @FilePath: \pm-admin\controllers\system.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package system

import (
	"fmt"
	"image/png"

	"github.com/astaxie/beego"
	"github.com/vcqr/captcha"
)

type BackendSystemController struct {
	beego.Controller
}

func (this *BackendSystemController) Login() {
	// 渲染模板
	this.TplName = "backend/system/login.tpl"
}

func (this *BackendSystemController) Index() {
	// 渲染模板
	this.TplName = "backend/system/index.tpl"
}

func (this *BackendSystemController) Captcha() {
	w := this.Ctx.ResponseWriter

	cp := captcha.NewCaptcha(120, 40, 4)
	cp.SetFontPath("./static/fonts/") // 指定字体目录
	cp.SetFontName("free")            // 指定字体名字
	// 1：设置为简单的数学算术运算公式； 其他为普通字符串
	cp.SetMode(1)
	code, img := cp.OutPut()
	// 备注：code 可以根据情况存储到session，并在使用时取出验证

	fmt.Println(code)

	w.Header().Set("Content-Type", "image/png; charset=utf-8")

	png.Encode(w, img) // 输出为图片
}
