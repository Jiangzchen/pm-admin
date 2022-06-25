/*
 * @Author: Jiangzchen 927764151@qq.com
 * @Date: 2022-06-10 20:18:57
 * @LastEditors: Jiangzchen 927764151@qq.com
 * @LastEditTime: 2022-06-25 17:55:29
 * @FilePath: \pm-admin\controllers\system.go
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
package system

import (
	"encoding/json"
	"fmt"
	"image/png"

	"pm-admin/models/dto"
	"pm-admin/serivces"
	"pm-admin/utils"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/validation"
	"github.com/vcqr/captcha"
)

// 系统控制器
type SystemController struct {
	beego.Controller
}

// @Title 登录界面
// @Description 跳转登录页面
// @router /toLogin [get]
func (this *SystemController) ToLogin() {
	// 渲染模板
	this.TplName = "system/login.tpl"
}

// @Title 登录
// @Description 登录
// @Param body body	dto.LoginDto true "The object content"
// @Success 200 {object} utils.R
// @Failure 403 body is empty
// @router /login [post]
func (this *SystemController) Login() {
	verCode := this.GetSession("CaptchaCode")
	if verCode == nil {
		data := utils.R{-1, "验证码过期", nil}
		this.Data["json"] = &data
		this.ServeJSON()
	}

	var loginDto dto.LoginDto
	err := json.Unmarshal(this.Ctx.Input.RequestBody, &loginDto)

	if err != nil {
		fmt.Println("json.Unmarshal is err:", err.Error())
	}

	if loginDto.VerCode != verCode {
		data := utils.R{-1, "验证码错误", nil}
		this.Data["json"] = &data
		this.ServeJSON()
	}

	valid := validation.Validation{} //创建验证数据对象
	valid.Required(loginDto.Username, "Username").Message("用户名不能为空")
	valid.MinSize(loginDto.Username, 6, "Username").Message("用户名最短为6位")

	if valid.HasErrors() {
		// 如果有错误信息，证明验证没通过
		// 打印错误信息
		for _, err := range valid.Errors {
			logs.Info(err.Key, err.Message)
			data := utils.R{-1, err.Message, nil}
			this.Data["json"] = &data
			this.ServeJSON()
		}
	}

	loginVo := serivces.SelectPmUserWithUsername(loginDto.Username)

	token := utils.CreateToken(loginVo, 0)

	if err != nil {
		fmt.Println("token:", token)
	} else {
		//获取jwt
		this.Ctx.WriteString(token)
	}

	data := utils.R{0, "请求成功", loginVo}
	this.Data["json"] = &data
	this.ServeJSON()
}

//验证token
func (this *SystemController) Check() {
	token := "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwicGFzc3dvcmQiOiIwYjQ5OGZiYjIyZGFiZDI0ZmQ4NjYyZmRmZGEwZGNlNyIsImV4cCI6MTY1NjA0Mjk2OCwiaWF0IjoxNjU2MDQyMzY4LCJpc3MiOiJhZG1pbiJ9.yZwRzKIrmzy_nfWmzVRD_JO0TNP7bZHazPcWpmyKorI"
	info := utils.ValidateToken(token)
	fmt.Println(info)
	this.Ctx.WriteString("success")
}

func (this *SystemController) Index() {
	// 渲染模板
	this.TplName = "system/index.tpl"
}

// @Title 验证码
// @Description 获取验证码图片
// @router /captcha [get]
func (this *SystemController) Captcha() {
	w := this.Ctx.ResponseWriter

	cp := captcha.NewCaptcha(120, 40, 4)
	cp.SetFontPath("./static/fonts/") // 指定字体目录
	cp.SetFontName("free")            // 指定字体名字
	// 1：设置为简单的数学算术运算公式； 其他为普通字符串
	cp.SetMode(1)
	code, img := cp.OutPut()
	// 备注：code 可以根据情况存储到session，并在使用时取出验证
	this.SetSession("CaptchaCode", code)
	w.Header().Set("Content-Type", "image/png; charset=utf-8")

	png.Encode(w, img) // 输出为图片
}

// 退出
func (this *SystemController) LoginOut() {
}
