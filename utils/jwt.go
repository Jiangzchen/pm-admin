package utils

import (
	"fmt"
	"pm-admin/models/vo"
	"time"

	"github.com/astaxie/beego/logs"
	"github.com/dgrijalva/jwt-go"
)

const (
	KEY                    string = "JWT-ARY-STARK"
	DEFAULT_EXPIRE_SECONDS int    = 600 // default 10 minutes

)

// JWT -- json web token
// HEADER PAYLOAD SIGNATURE
// This struct is the PAYLOAD
type MyCustomClaims struct {
	vo.LoginVo
	jwt.StandardClaims
}

// update expireAt and return a new token
func RefreshToken(tokenString string) (string, error) {
	// first get previous token
	token, err := jwt.ParseWithClaims(
		tokenString,
		&MyCustomClaims{},
		func(token *jwt.Token) (interface{}, error) {
			return []byte(KEY), nil
		})
	claims, ok := token.Claims.(*MyCustomClaims)
	if !ok || !token.Valid {
		return "", err
	}
	mySigningKey := []byte(KEY)
	expireAt := time.Now().Add(time.Second * time.Duration(DEFAULT_EXPIRE_SECONDS)).Unix()
	newClaims := MyCustomClaims{
		claims.LoginVo,
		jwt.StandardClaims{
			ExpiresAt: expireAt,
			Issuer:    claims.LoginVo.Username,
			IssuedAt:  time.Now().Unix(),
		},
	}
	// generate new token with new claims
	newToken := jwt.NewWithClaims(jwt.SigningMethodHS256, newClaims)
	tokenStr, err := newToken.SignedString(mySigningKey)
	if err != nil {
		logs.Info("generate new fresh json web token failed !! error :", err)
		return "", err
	}
	return tokenStr, err
}

func ValidateToken(tokenString string) error {
	token, err := jwt.ParseWithClaims(
		tokenString,
		&MyCustomClaims{},
		func(token *jwt.Token) (interface{}, error) {
			return []byte(KEY), nil
		})
	if claims, ok := token.Claims.(*MyCustomClaims); ok && token.Valid {
		logs.Info("%v %v", claims.LoginVo, claims.StandardClaims.ExpiresAt)
		logs.Info("token will be expired at ", time.Unix(claims.StandardClaims.ExpiresAt, 0))
	} else {
		logs.Info("validate tokenString failed !!!", err)
		return err
	}
	return nil
}

func CreateToken(loginVo vo.LoginVo, expiredSeconds int) (tokenString string) {
	if expiredSeconds == 0 {
		expiredSeconds = DEFAULT_EXPIRE_SECONDS
	}
	// Create the Claims
	mySigningKey := []byte(KEY)
	expireAt := time.Now().Add(time.Second * time.Duration(expiredSeconds)).Unix()
	logs.Info("token will be expired at ", time.Unix(expireAt, 0))
	// pass parameter to this func or not

	// user := User{"007", "Kev"}
	claims := MyCustomClaims{
		loginVo,
		jwt.StandardClaims{
			ExpiresAt: expireAt,
			Issuer:    loginVo.Username,
			IssuedAt:  time.Now().Unix(),
		},
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	tokenStr, err := token.SignedString(mySigningKey)
	if err != nil {
		logs.Info("generate json web token failed !! error :", err)
	}
	return tokenStr

}

// return this result to client then all later request should have header "Authorization: Bearer <token> "
func getHeaderTokenValue(tokenString string) string {
	//Authorization: Bearer <token>
	return fmt.Sprintf("Bearer %s", tokenString)
}
