<template>
  
      <div class="myheader">
    <div class="top-bar" @mouseover="offList()">
        <div class="top-bar-wrap">
            <ul class="top-left">
                <li><a href="">企业文化</a></li>
                <li><a href="">合作商家</a></li>
                <li><a href="">会员中心</a></li>
                <li><a href="">人才招聘</a></li>
            </ul>
            <ul class="top-right">
                <li><a href="">微信商城</a></li><i></i>
                <li><a href="">app商城</a></li><i></i>
                <li v-show="showname"><a href="">我的订单</a></li><i v-show="showname"></i>
                <li><a href="">购物车（0）</a></li><i></i>
                <li v-show="!showname"><router-link to="/register">注册</router-link></li><i v-show="!showname"></i>
                <li v-show="!showname"><router-link to="/login">登录</router-link></li>
                <li v-show="showname" class="index_user"><a href="" id="only_name"  v-if="showname">{{current}}</a></li>
            </ul>
        </div>
    </div>
    <div class="nav">
        <div class="nav-bar">
            <div class="menu-wrap clear">
                <a href="#" class="logo-box"><img src="../assets/logo.png" alt=""></a>
                <div class="menu">
                    <div><a href="#" @mouseover="offList()">首页</a></div>
                    <div @mouseover="onList(item)" v-for="(item) of category" :key="item.id"><a href="#">{{item.cname}}</a></div>
                    </div>
								<div class="menu-late" @mouseover="offList()">
									<i></i>
									<a href="">服务</a>
									<a href="">视频教程</a>
									<a href="">XESS门店</a>
									<span class="menu-search"><input type="text" v-model="kw" @keydown.13="search"><span><img src="../assets/search.png" alt="" @click="search"></span></span>
								</div>
            </div>
        </div>
    </div>
    <div class="menu-list" v-show="isList" @mouseover="showsel()" @mouseout="offList()">
        <div class="list-bar"  >
        <ul>
            <li v-for="(item,index) of sel" :key="index">
                <router-link :to="`/details/${item.pid}`">
                    <span><img :src="`image/${item.pic}`" alt=""></span>
                    <p>{{item.title}}</p>
                    <p style="color:red;">￥{{item.price.toFixed(2)}}</p>
                </router-link>
            </li>
        </ul>
        
    </div>
    </div>
    </div>
  
</template>
<style>
@import '../assets/css/MyHeader.css';
</style>
<script>
export default {
    data(){
        return {
            isList:false,
            category:[],
            // products:[],
            active:1,
            sel:[],
            sel_id:1,
            kw:''
        }
    },
    computed:{
        showname:function(){
            return this.$store.getters.getshowname;
        },
        current:function(){
            return this.$store.getters.getcurrentuser;
        }
    },
    methods:{
        search(){
            this.$router.push("/products/"+this.kw)
        },
        
        onList(item){
            this.isList = true;
            this.active = item.id;
            // console.log(item.id)
            this.axios.get('/index/sel?cid=' + this.active).then(result=>{
            this.sel = result.data;
            
        })
        },
        offList(){
            this.isList = false;
        },
        showsel(){
            this.isList = true;
        }
    },
    created(){
        this.kw=this.$route.params.kw;
    },
    watch:{
        $route(){
            this.kw=this.$route.params.kw;
        }
    },
    mounted(){
        this.axios.get('/index/category').then(result=>{
            this.category = result.data;
            
        });
        
        
    }
}
</script>