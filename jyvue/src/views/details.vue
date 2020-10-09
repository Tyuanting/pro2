<template>
<div>
    <my-header></my-header>
    <div class="box">
        <div class="purc-l">
            <div class="imgLoad">
                <div class="purc-img">
                    <div class="item">
                        <img :src="`image/${src_img}`" alt="">
                    </div>
                </div>
                <div class="purc-list">
                    <div style="width:360px;overflow:hidden;">
                        <span class="radius">
                            <img src="" alt="">
                        </span>
                        <span class="radius">
                            <img src="" alt="">
                        </span>
                        <span class="radius">
                            <img src="" alt="">
                        </span>
                        <span class="radius">
                            <img src="" alt="">
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="purc-r">
            <div class="purc-text">
                <h1 class="purc-name">
                    <span>{{this.title}}</span>
                </h1>
                <div class="purc-item">
                    <p class="desc">
                        <font style="font:bold;color:red">购机享收益，详情扫码关注</font>{{desc}}
                    </p>
                    <span class="purc-start">收藏</span>
                </div>
            </div>
            <div class="render-price">
                <div class="purc-text2">
                    <div class="qrcode">
                        <img src="../assets/qrcode.png" alt="" style="margin-top:-2px;">&nbsp;&nbsp;手机购买
                    </div>
                    <strong class="bold">商城价：</strong>
                    <i class="red">
                        <em class="lato-price">{{this.price}}</em>元
                    </i>
                    <span class="line-through">RMB：3599.00元</span>
                    <p></p>
                </div>
            </div>
            <div class="purc-text3">
                <strong class="bold" style="font-weight:normal">优惠券：</strong>
            </div>
            <div class="purc-text4">
                <div class="sele">双开门系列</div>
                <div class="option">
                    <span class="groupedproduct">
                        650L
                    </span>
                    <span class="groupedproduct">
                        fsdgfsdagbas
                    </span>
                    <span class="groupedproduct">
                        fssdgf
                    </span>
                    <span class="groupedproduct">
                        fssdgf
                    </span>
                </div>
            </div>
            <div class="purc-text5">
                <div class="select">
                    <input type="text" class="val" value="1">
                    <div class="mun">
                        <span class="add"></span>
                        <span class="reg"></span>
                    </div>
                </div>
                <div class="purc-submit">
                    <a href="" class="buy-now">立即购买</a>
                    <a href="" class="buy-to-cart">加入购物车</a>
                </div>
            </div>
        </div>
    </div>
</div>
    
</template>
<style>
.buy-to-cart{
    width: 136px;
    background-color: #fff;
    color: red;
    height: 64px;
    display: inline-block;
    vertical-align: top;
    line-height: 64px;
    font-size: 18px;
    text-align: center;
    text-decoration: none;
    border: 1px solid red;
    outline: 0;
    box-sizing: border-box;
}
.buy-now{
    margin-right: 5px;
    width:136px;
    background: red;
    height:64px;
    color: #fff;
    display: inline-block;
    vertical-align: top;
    line-height: 64px;
    font-size: 18px;
    text-align: center;
    border: 1px solid red;
    text-decoration: none;
    box-sizing: border-box;
}
.purc-submit{
    display: inline-block;
    vertical-align: top;
    padding: 0;
    border-color: transparent;
    border-bottom: 1px solid #ccc;
    position: relative;
}
*{
    border: 0;
}
.select .add{
    margin-top: 12px;
    background-size:20px 20px ;
    background-repeat: no-repeat;
    margin-left: 7px;
    width: 100%;
    height: 20px;
    text-align: center;
    display: block;
    cursor: pointer;
    background-image: url(../assets/add.png);
}
.select .reg{
    margin-bottom: 12px;
    width: 100%;
    height: 20px;
    text-align: center;
    display: block;
    cursor: pointer;
    background-image: url('../assets/reg.png');
    background-size:20px 20px ;
    background-repeat: no-repeat;
    margin-left: 7px;
}
.mun{
    width: 32px;
    height: 64px;
    right: 0;
    position: absolute;
}
.val{
    width: 56px;
    height: 64px;
    float: left;
    color: #666;
    border-right: 1px solid #ccc;
    line-height: 64px;
    font-size: 18px;
    text-align: center;
    vertical-align: middle;
    outline: 0;
}
.select{
    margin-right: 5px;
    width: 90px;
    height: 64px;
    display: inline-block;
    border: 1px solid #ccc;
    overflow: hidden;
    position: relative;
}
.purc-text5{
    border-bottom: 1px solid #ccc;
    position: relative;
    padding: 22px 0;
}
.purc-text4{
    border-bottom: 1px solid #ccc;
    position: relative;
    padding: 22px 0;
}
.option{
    font-size: 0;
    margin-top: 20px;
}
.sele{
    font-size: 14px;
    color: #333;
}
.groupedproduct{
    box-sizing: border-box;
    width: 28%;
    margin: 10px 8px 0 0;
    overflow: hidden;
    padding: 0 15px;
    line-height: 64px;
    text-align: center;
    border: 1px solid #ccc;
    font-size: 14px;
    color: #666;
    display: inline-block;
    height: 64px;
    cursor: pointer;
    white-space: nowrap;
    text-overflow: ellipsis;
}
.purc-text3{
    padding: 10px 0;
    display: block;
    border-bottom: 1px solid #ccc;
    position: relative;
    height: 70px;
}
.purc-text2 .line-through{
    font-size: 13px;
    line-height: 30px;
    margin-right: 10px;
    float: right;
    text-decoration: line-through;
}
.red{
    display: inline-block;
    margin-left: 8px;
    font-style: normal;
}
.red .lato-price{
    font-size: 24px;
    font-style: normal;
    line-height: 30px!important;
    color: red;
}
.purc-text2{
    padding: 22px 0;
    border-bottom: 1px solid #ccc;
    position: relative;
}
.bold{
    font-size: 14px;
    color: #333;
}
.qrcode img{
    vertical-align: middle;
}
.qrcode{
    position: relative;
    font-size: 12px;
    line-height: 30px;
    cursor: pointer;
    z-index: 99;
    float: right;
}
.purc-start{
    position:absolute;
    top: 0;
    right: 0;
    color: #999;
    cursor: pointer;
}
.desc{
    width: 80%;
    line-height: 19px;
}
.purc-item{
    color: #999;
    font-size: 12px;
    line-height: 19px;
    position: relative;
}
.purc-name{
    font-size: 30px;
    color: #333;
    line-height: 30px;
    padding-bottom: 20px;
    overflow: hidden;
}
.purc-text{
    padding-bottom: 22px;
    border-bottom: 1px solid #ccc;
    position: relative;
}
.purc-r{
    margin-left: 580px;
    min-height: 560px;
}
.box{
    width: 980px;
    min-height: 620px;
    margin: 60px auto;
    position: relative;
    background-color: #fff;
    z-index: 102;
    border: none !important;
    overflow: visible!important;
}
.purc-l{
    width: 580px;
    padding: 0 70px;
    position: absolute;
    top: 0;
}
.purc-img{
    width: 440px;
    height: 440px;
    overflow: hidden;
    position: relative;
    padding-bottom: 40px;
    border-bottom: 1px solid #ccc;
    box-sizing: border-box;
}
div{
    box-sizing: border-box;
}
.purc-img .item{
    position: absolute;
    /* opacity: 0.5; */
    z-index: -2;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
}
.purc-img .item img{
    max-width: 100%;
    vertical-align: middle;
}
.purc-list{
    height: 65px;
    margin: 20px auto 0;
    text-align: center;
    width: 430px;
    overflow: hidden;
    padding: 0 30px;
    position: relative;
    box-sizing: border-box;
}
.purc-list .radius{
    width: 60px;
    height: 60px;
    border-radius: 0;
    display: inline-block;
    margin: 0 5px;
    cursor: pointer;
    border: 2px solid #ccc;
    overflow: hidden;
    background: #fff;
}
.radius>img{
    max-width: 100%;
}
</style>
<script>
export default {
    props:["pid"],
  data(){
    return {
      title:"",
      desc:"",
      price:0,
      src_img:''
    }
  },
  mounted(){
    this.axios.get("/details",{
    //       参数名  props中获得地址栏中的商品编号
      params:{ pid: this.pid } 
    }).then(result=>{
      
      this.title=result.data[0].title;
      this.desc=result.data[0].details;
      this.price=result.data[0].price;
      this.src_img=result.data[0].pic;
    })
  }
}
</script>