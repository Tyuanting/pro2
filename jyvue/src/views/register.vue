<template>
<div class="register">
        <div class="headerbox">
        <p class="header">
            <a href="#" class="logo_link"><img class="logo_img" src="../assets/logo.png" alt=""></a>
            <span class="crumb"> JUYOU账号注册</span>
        </p>
    </div>
    <div class="login-box">
        <div class="mask">
            </div>
            <div class="login-cont">
                <div class="login-head">
                    <p class="login-title">注册JUYOU账号</p>
                </div>
                <div class="fm-group">
                    <span class="user_icon"></span>
                    <input type="text" class="user_int" v-model="uname" placeholder="">
                    <span class="user_msg msg">数字、英文、汉字与下划线组成，不得以下划线开头结尾</span>
                </div>
                <div class="fm-group">
                    <span class="upwd_icon"></span>
                    <input type="password" class="user_int" v-model="upwd" placeholder="请输入密码">
                    <span class="upwd_msg msg"></span>
                </div>
                <button class="login-btn" @click="register">注册</button>
                <p class="methods">
                    
                    <router-link to="/login" id="tologin">已有账号？去登录！</router-link>
                </p>
            </div>
    </div>
</div>
</template>
<style>
.register p{
    margin:24px 0 24px 0;
}
.logo_link{
            display: inline-block;
            float: left;
        }
        .headerbox{
            margin: 0 auto;
            width: 1229px;
        }
        .header{
            padding: 20px 0 20px;
            height: 45px;
            border: none;
            margin-left: 0 auto;
        }
        .logo_img{
            height: 60px;
            float: left;
        }
        .crumb{
            font-family: "Hiragino Sans GB","Microsoft Yahei",'Arial','sans-serif';
            font-size: 32px;
            color: #666;
            line-height: 45px;
            margin-left: 30px;
            margin-top: 10px;
            font-weight: lighter;
            float: left;
        }
        .login-box{
            position: relative;
            height: 550px;
            background-color: #871aeed5;
            background-image: url(../assets/1.jpg);
            background-size: 480px 480px;
            
        }
        .mask{
            background-color: rgb(165, 12, 12);
            height: 550px;
            opacity: 0.6;
        }
        .login-cont{
            width: 350px;
            height: 350px;
            border: 1px solid #ccc;
            background: #fff;
            top: 60px;
            left: 40%;
            padding: 20px 40px 20px;
            border-radius: 6px;
            position: absolute;
        }
        .login-head{
            border-bottom:2px solid dimgrey;
        }
        .login-title{
            font-size: 24px;
            color: firebrick;
        }
        .fm-group{
            margin-top: 25px;
            padding-bottom: 15px;
            position: relative;
        }
        .user_icon{
            width: 30px;
            height: 30px;
            margin: 5px 0 0 5px;
            background: url(../assets/user.png);
            background-size: 30px 30px;
            position: absolute;
        }
        .upwd_icon{
            width: 30px;
            height: 30px;
            margin: 5px 0 0 5px;
            background: url(../assets/upwd.png);
            background-size: 30px 30px;
            position: absolute;
        }
        .user_int{
            border: 1px solid #999;
            padding: 0;
            width: 100%;
            height: 40px;
            line-height: 40px;
            text-indent: 50px;
            font-size: 12px;
            box-sizing: border-box;
        }
        .login-btn{
            color: #fff;
            width: 100%;
            height: 40px;
            cursor: pointer;
            border: 0;
            line-height: 40px;
            text-align: center;
            background: crimson;
            font-size: 16px;
            margin-top: 20px;
        }
        .methods{
            margin-top: 16px;
        }
        #tologin{
            margin-left: 60px;
            font-size: 12px;
            color: #333;
            line-height: 20px;
            display: inline-block;
            text-decoration: none;
        }
        #tologin:hover{
            text-decoration: underline;
        }
        .msg{
            font-size: 12px;
            color: gray;
            position: absolute;
            bottom: -2px;
            left: 9px;
        }
</style>
<script>
export default {
    data(){
        return {
            uname:"",
            upwd:"",
            reg:/^(?!_)(?!.*?_$)[a-zA-Z0-9_\u4e00-\u9fa5]+$/
        }
    },
    methods:{
        register(){
            if(this.reg.test(this.uname)){
            this.axios.post(
            "/user/register",
            `uname=${this.uname}&upwd=${this.upwd}`
          ).then(result=>{
            if(result.data==1){
              alert('注册成功')
              this.$router.push('/login')
            }else{
              alert("注册失败")
            } 
          })
        }else{
            alert("用户名不可用！")
        }
        }
    }
}
</script>