<template>
    
        <div class="banner-box">
            <!-- 类目导航 -->
            <div class="banner-nav">
                <div class="ban-nav">
                    <ul class="ul" @mouseout="offList()">
                        <li class="li" v-for="(item) of bnav" @mouseover="onList(item)">
                            <a href="" class="a">{{item.bname}}</a>
                            <i class="flex-next">&gt;</i>
                        </li>
                    </ul>
                    <div class="ban-nav-box" v-show="isList" @mouseout="offList()" @mouseover="showsel()">
                        <div class="ban-nav-cont">
                            <ul class="ban-cont-list">
                                <li v-for="(item,index) of sel" :key="index">
                                    <router-link :to="`/details/${item.pid}`">
                                        <img :src="`image/${item.pic}`" alt="" class="bnav-img">
                                        <div class="dj">
                                            <p>{{item.title}}</p>
                                            <p class="price">￥{{item.price.toFixed(2)}}</p>
                                        </div>
                                    </router-link>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 轮播图 -->
        <div class="banner-content">
          <div class="banner">
            <div class="banner-slide" v-for="(image,index) of imgs" :key="index" v-show="index == mark" :class="index == mark?'go_in':''">
              <a href="#" class="inner-link">
                <img :src="`carousel/${image.img}`" alt="">
              </a>
            </div>
            <!-- 指示器 -->
            <div class="dots-box">
                <div class="banner-dots">
                    <span v-for="(img,index) of imgs" :key="index" :class="index == mark?'active':''" @click="change(index)"></span>
                </div>
            </div>
			<div class="anchors">
                <a href="javascript:;" class="prev anchor" @click="prev()"></a>
                <a href="javascript:;" class="next anchor" @click="next()"></a>
            </div>			
          </div>
        </div>
      </div>
    
</template>
<style>
.ban-cont-list{
    margin: 57px 0 0 30px;
    width: 674px;
    float: left;
}
.ban-nav-box .ban-cont-list li{
    margin: 0 0 38px 23px;
    float: left;
    list-style-type: none;
}
.ban-nav-box .ban-cont-list li a{
    display: block;
    color: #555;
    text-decoration: none;
}
.ban-nav-box .ban-cont-list li img{
    width: 120px;
    height: 120px;
    vertical-align: middle;
}
.dj{
    width: 168px;
    display: inline-block;
    font-size: 14px;
    margin-top: 15px;
    margin-left: 20px;
    vertical-align: middle;
    box-sizing: border-box;
}
.dj p{
    box-sizing: border-box;
    margin: 0;
}
.dj .price{
    font-size: 14px;
    color: #ff2524;
    margin-top: 10px;
    font-weight: 600;
    position: relative;
    display: inline-block;
    vertical-align: top;
    box-sizing: border-box;
}
.ban-nav-box{
    width: 758px;
    position: absolute;
    top: 0;
    left: 176px;
    background-color: #fff;
    height: 550px;
    border-top: 1px solid #efe7e7;
    box-sizing: border-box;
}
.banner-nav{
    width: 1228px;
    margin: 0 auto;
    
}
.ban-nav{
    width: 176px;
    position: absolute;
    z-index: 100;
    height: 550px;
}
.ban-nav .ul{
    padding-top: 40px;
    background-color: rgba(0,0,0,.5);
    width: 176px;
    z-index: 100;
    height: 550px;
    list-style-type: none;
    box-sizing: border-box;
}
.ban-nav .li{
    width: 100%;
    height: 67px;
    text-align: center;
    line-height: 67px;
    cursor: pointer;
    padding-left: 32px;
    padding-right: 22px;
    float: left;
    box-sizing: border-box;
    list-style-type: none;
}
.ban-nav .li:hover{
    background-color: rgba(255, 255, 255, .9);
    
}
.ban-nav .li:hover .a{
    color: #f40;
}
.ban-nav .li:hover .flex-next{
    color: #f40;
}
.ban-nav .a{
    color: #fff;
    float: left;
    font-size: 14px;
    text-decoration: none;
}
.flex-next{
    font-size: 14px;
    width: 14px;
    height: 67px;
    right: 0;
    margin: 0 0 0 8px;
    padding: 0;
    color: #fff;
    position: inherit;
    font-style: normal;
    float: right;
    display: inline-block;
}

.banner-box{
  position: relative;
  height: 550px;
}
.banner{
  position: relative;
  overflow: hidden;
  height: 100%;
  width: 100%;
  min-width: 1226px;
  min-height: 550px;
  left:0;
  z-index: 1;
}
.banner-slide{
  position: absolute;
  width: 100%;
}
.banner-slide a{
  display: block;
  color: #555;
  text-decoration: none;
}
.banner-slide img{
  position:absolute;
  left: 50%;
  transform: translateX(-50%);
  max-width: 1920px;
  width:auto;
  vertical-align: middle;
}
.anchors{
    width: 1050px;
    height: 0;
    position: absolute;
    left: 50%;
    margin-left: -437px;
    top: 50%;
    margin-top: -35px;
}
.anchors .anchor{
    font-weight: 700;
    pointer-events: auto;
    /* background: 0 0; */
    font-size: 50px;
    top: 0;
    margin-top: 0;
}
.prev{
    position: absolute;
    left: 20px;
    color: #fff;
    width: 70px;
    text-align: center;
    height: 70px;
    opacity: 1;
    overflow: hidden;
    z-index: 1001;
    display: inline-block;
    background-size: 70px 70px;
    background-repeat: no-repeat;
    background-image: url('../assets/prev.png');
}
.next{
    position: absolute;
    right: 35px;
    color: #fff;
    width: 70px;
    height: 70px;
    text-align: center;
    opacity: 1;
    overflow: hidden;
    z-index: 1001;
    display: inline-block;
     background-size: 70px 70px;
    background-repeat: no-repeat;
    background-image: url('../assets/next.png');
}
.dots-box{
    text-align: right;
    position: absolute;
    bottom: 22px;
    pointer-events: none;
    width: 1228px;
    left: 50%;
    margin-left: -614px;
    cursor: pointer;
}
.banner-dots{
    position: absolute;
    bottom: 0;
    right: 0;

}
.banner-dots span{
    pointer-events: auto;
    display: inline-block;
    width: 10px;
    height: 10px;
    border-radius: 50%;
    margin: 0 5px;
    background-color: #fff;
    cursor: pointer;
}
.banner-dots .active{
    background-color: #db192a;
}
.go_in{
    animation: go_in 3s;
}
@keyframes go_in{
    0%{opacity: 0;}
    100%{opacity: 1;}
}
</style>
<script>
export default {
    data(){
        return {
             
            mark:0,//当前正在播放
            imgs:[],
            // products:[],
            bnav:[],
            isList:0,
            sel:[]
        }
    },
    methods:{
         onList(item){
            this.isList = true;
            this.active = item.id;
            // console.log(item.id)
            this.axios.get('/index/sel?cid=' + this.active).then(result=>{
            this.sel = result.data;
            // console.log(this.active)
        })
        },
         offList(){
            this.isList = false;
        },
        showsel(){
            this.isList = true;
        },
        autoPlay(){
            this.mark++;
            if(this.mark === 3){
                this.mark = 0
            }
        },
        play(){
            setInterval(this.autoPlay,5000)
        },
        change(i){
            this.mark = i
        },
        prev(){
            
            if(this.mark === 0){
                this.mark = 2
            }else{
                this.mark--;
            }
        },
        next(){
            this.mark++;
            if(this.mark === 3){
                this.mark = 0
            }
        }
    },
    created(){
        this.play()
    },

    mounted(){
        this.axios.get('/index/carousel').then(result=>{
            this.imgs = result.data;
            
        });
        this.axios.get('/index/bnav').then(result=>{
            this.bnav = result.data;
            
        });
        // this.axios.get('/index').then(result=>{
        //     this.products = result.data;
        // });
    }
    
}
</script>