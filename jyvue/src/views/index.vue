<template>
    <div>
      <my-header></my-header>
      <carousel></carousel>
      <div class="layout">
          <div class="series">
              <div class="tv_series">
                  <header class="cleared"></header>
                  <div class="tv_series_content">
                      <div class="tv_sec_left">
                          <a href="">
                              <img src="image/tvhost.jpg" alt="">
                          </a>
                      </div>
                      <ul class="tv_sec_right">
                          <li v-for="(item,index) of p_tv" :key="index">
                              <router-link :to="`/details/${item.pid}`">
                                  <img :src="`image/${item.pic}`" alt="">
                                  <p class="title">{{item.title}}</p>
                                  <p class="desc">{{item.details}}</p>
                                  <p class="price">￥{{item.price.toFixed(2)}}</p>
                              </router-link>
                          </li>
                          
                      </ul>
                  </div>
              </div>
          </div>
      </div>
    </div>
</template>
<style>
div{
    box-sizing: border-box;
}
.series{
    width: 1228px;
    margin: 0 auto 25px;
    position: relative;
    background-color: #f2f2f2;

}
.tv_series{
    margin-bottom: 45px;
}
.series header{
    position: relative;
    margin: 0 0 24px;
    clear: both;
    height: 1%;
    overflow: hidden;
}
.tv_series_content{
    overflow: initial;
    clear: both;
    height: 1%;
}
.tv_series_content::after{
    clear: both;
    content: "";
    display: block;
    height: 0;
}
.tv_sec_left{
    width: 297px;
    height: 614px;
    float: left;
}
.tv_sec_left a{
    font-size: 14px;
    color: #555;
    text-decoration: none;
}
.tv_sec_right{
    width: 931px;
    text-align: center;
    float: left;
    list-style-type: none;
}
.tv_sec_right li{
    width: 296px;
    height: 300px;
    overflow: hidden;
    margin: 0 0 14px 14px;
    background-color: #fff;
    position: relative;
    top: 0;
    transition: all .2s ease-in;
    float: left;
}
.tv_sec_right li:hover{
    top: -8px;
    box-shadow: 0 0 15px 5px #d9d9d9;
}
.tv_sec_right li a{
    display: block;
    font-size: 14px;
    color: #555;
    outline: 0;
    text-decoration: none;
}
.tv_sec_right li a img{
    height: 180px;
    width: 180px;
    margin: 4px auto 2px;
    vertical-align: middle;
}
.tv_sec_right li p{
    line-height: 100%;
}
.tv_sec_right li .title{
    font-size: 14px;
    color: #333;
}
.tv_sec_right li .desc{
    font-size:12px;
    color: #9b9bb9;
    margin: 12px auto 0;
    height: 30px;
    line-height: 15px;
    overflow: hidden;
    width: 237px;
}
.tv_sec_right li .price{
    font-size: 14px;
    color: #ff2524;
    margin-top: 10px;
    font-weight: 600;
    position: relative;
}
</style>
<script>
import carousel from "../components/carousel"
export default {
    data(){
        return {
            p_tv:[]
        }
        
    },
    mounted(){
        this.axios.get("/index/tv").then(result=>{
          this.p_tv=result.data;
        //   console.log(this.p_tv[0].pic)
        //   console.log(this.p_tv)
        })
    },
    components:{ carousel }
}
</script>