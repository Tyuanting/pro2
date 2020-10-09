<template>
    <div>
    <my-header></my-header>
			<div class="comm-mar">
				<ul>
					<li v-for="(item,index) of products" :key="index">
						<div class="commimg">
							<a href=""><img :src="`image/${item.pic}`" alt=""></a>
						</div>
						<div class="commtext">
							<div class="intro">
								<strong>{{item.title}}
									<span style="color:red;">{{kw}}</span>
								</strong>
								<p>TCL 75V2 75英寸大屏/95.9%屏占比/AI人工智能语音
									<span style="color:red;">{{kw}}</span>
								</p>
							</div>
							<div class="pri">{{item.price}}元</div>
							<router-link :to="`/details/${item.pid}`" class="addCart">立即购买</router-link>
						</div>
					</li>
				</ul>
			</div>
    </div>
</template>
<style>
.comm-mar{
	padding-top: 100px;
	padding-left: 50px;
	background-color: #f2f2f2;
}
.comm-mar ul{
	width: 1500px;
	list-style-type: none;
}
.comm-mar ul::after{
	clear: both;
    content: "";
    display: block;
    height: 0;
}
.comm-mar li{
	background: #fff;
	padding: 0;
	width: 400px;
	margin-right: 14px;
	margin-bottom: 14px;
	border: none;
	position: relative;
	float: left;
}
.comm-mar li .commimg{
	display: table;
	width: 100%;
	text-align: center;
	height: 242px;
	overflow: hidden;
}
.comm-mar li .commimg a{
	text-align: center;
	vertical-align: middle;
	display: table-cell;
	color: #555;
	outline: 0;
	text-decoration: none;
}
.comm-mar li .commimg a img{
	max-height: 230px;
	max-width: 230px;
	vertical-align: middle;
}
.commtext{
	margin: -20px 20px;
	text-align: left;
}
.commtext .intro{
	margin-top: 14px;
	padding: 0 10px;
	text-align: center;
	line-height: 30px;
	font-weight: 400;
	font-size: 18px;
}
.commtext .intro strong{
	display: block;
	width: 100%;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}
.commtext .intro p{
	width: 296px;
	margin: 2px auto 0;
	font-size: 12px;
	height: 40px;
	line-height: 20px;
	overflow: hidden;
	position: relative;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	color: #908f8f;
}
.commtext .pri{
	font-weight: 700;
	color: red;
	font-size: 14px;
	text-align: center;
	margin-top: 15px;
	line-height: 24px;
}
.addCart{
	width: 148px;
	height: 40px;
	line-height: 40px;
	margin: 15px auto 34px;
	text-align: center;
	border: 1px solid red;
	cursor: pointer;
	color: red;
	display: block;
	position: relative;
	font-size: 14px;
	text-decoration: none;

}
</style>
<script>
export default {
	data(){
		return{
		products:[]
		}
	},
	props:["kw"],
	created(){
			this.axios.get(
				"/index",
				{
					params:{
						kw:this.kw
					}
				}
			).then(result=>{
				console.log(result.data);
				this.products = result.data;
			})
	}
}
</script>