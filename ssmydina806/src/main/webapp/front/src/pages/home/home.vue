<template>
	<div class="home-preview">



		<!-- 关于我们 -->
		<div id="about" class="animate__animated">
			<div class="about_item">
				<div class="about_title_box">
					<div class="about_title">{{aboutUsDetail.title}}</div>
					<div class="about_subtitle">{{aboutUsDetail.subtitle}}</div>
				</div>
				<div class="about_img">
					<img :src="baseUrl + aboutUsDetail.picture1">
					<img :src="baseUrl + aboutUsDetail.picture2">
					<img :src="baseUrl + aboutUsDetail.picture3">
				</div>
				<div class="about_content ql-snow ql-editor" v-html="aboutUsDetail.content"></div>
				<div class="about_idea1" />
				<div class="about_idea2" />
				<div class="about_idea3" />
				<div class="about_idea4" />
				<div class="about_more" @click="toDetail('aboutusDetail',aboutUsDetail)">
					<span>MORE+</span>
					<span class="icon iconfont icon-jiantou25"></span>
				</div>
			</div>
		</div>
		<!-- 关于我们 -->

		<!-- 系统简介 -->
		<div id="system" class="animate__animated">
			<div class="system_item">
				<div class="system_title_box">
					<div class="system_title">{{systemIntroductionDetail.title}}</div>
					<div class="system_subtitle">{{systemIntroductionDetail.subtitle}}</div>
				</div>
				<div class="system_img">
					<img :src="baseUrl + systemIntroductionDetail.picture1">
					<img :src="baseUrl + systemIntroductionDetail.picture2">
					<img :src="baseUrl + systemIntroductionDetail.picture3">
				</div>
				<div class="system_content ql-snow ql-editor" v-html="systemIntroductionDetail.content"></div>
				<div class="system_idea1" />
				<div class="system_idea2" />
				<div class="system_idea3" />
				<div class="system_idea4" />
				<div class="system_more" @click="toDetail('systemintroDetail',systemIntroductionDetail)">
					<span>MORE+</span>
					<span class="icon iconfont icon-gengduo1"></span>
				</div>
			</div>
		</div>
		<!-- 系统简介 -->
		<!-- 特价商品 -->
		<div id="animate_listqicaixinxi" class="lists animate__animated">
			<div class="list_title_box">
				<span class="list_title">器材信息展示</span>
				<span class="list_subhead">{{'qicaixinxi'.toUpperCase()}} SHOW</span>
			</div>
			<!-- 样式八 -->
			<div class="list list8 index-pv1">
				<div class="list-body-left">
					<div v-if="qicaixinxiList.length>0" @click="toDetail('qicaixinxiDetail', qicaixinxiList[0])" class="list-item1 animation-box">
						<img v-if="preHttp(qicaixinxiList[0].tupian)" :src="qicaixinxiList[0].tupian.split(',')[0]" alt="" />
						<img v-else :src="baseUrl + (qicaixinxiList[0].tupian?qicaixinxiList[0].tupian.split(',')[0]:'')" alt="" />
						<div class="infoBox">
							<div class="name">器材编号:{{qicaixinxiList[0].qicaibianhao}}</div>
							<div class="name">{{qicaixinxiList[0].qicaileixing}}</div>
							<div class="name">{{qicaixinxiList[0].gengxinriqi}}</div>
							<div class="time_item">
								<span class="icon iconfont icon-shijian21"></span>
								<span class="label">发布时间：</span>
								<span class="text">{{qicaixinxiList[0].addtime.split(' ')[0]}}</span>
							</div>
							<div class="like_item">
								<span class="icon iconfont icon-zan10"></span>
								<span class="label">点赞：</span>
								<span class="text">{{qicaixinxiList[0].thumbsupnum}}</span>
							</div>
							<div class="collect_item">
								<span class="icon iconfont icon-shoucang10"></span>
								<span class="label">收藏：</span>
								<span class="text">{{qicaixinxiList[0].storeupnum}}</span>
							</div>
						</div>
					</div>
					<div v-if="qicaixinxiList.length>1" @click="toDetail('qicaixinxiDetail', qicaixinxiList[1])" class="list-item2 animation-box">
						<img v-if="preHttp(qicaixinxiList[1].tupian)" :src="qicaixinxiList[1].tupian.split(',')[0]" alt="" />
						<img v-else :src="baseUrl + (qicaixinxiList[1].tupian?qicaixinxiList[1].tupian.split(',')[0]:'')" alt="" />
						<div class="infoBox">
							<div class="name">器材编号:{{qicaixinxiList[1].qicaibianhao}}</div>
							<div class="name">{{qicaixinxiList[1].qicaileixing}}</div>
							<div class="name">{{qicaixinxiList[1].gengxinriqi}}</div>
							<div class="time_item">
								<span class="icon iconfont icon-shijian21"></span>
								<span class="label">发布时间：</span>
								<span class="text">{{qicaixinxiList[1].addtime.split(' ')[0]}}</span>
							</div>
							<div class="like_item">
								<span class="icon iconfont icon-zan10"></span>
								<span class="label">点赞：</span>
								<span class="text">{{qicaixinxiList[1].thumbsupnum}}</span>
							</div>
							<div class="collect_item">
								<span class="icon iconfont icon-shoucang10"></span>
								<span class="label">收藏：</span>
								<span class="text">{{qicaixinxiList[1].storeupnum}}</span>
							</div>
						</div>
					</div>
					<div v-if="qicaixinxiList.length>2" @click="toDetail('qicaixinxiDetail', qicaixinxiList[2])" class="list-item3 animation-box">
						<img v-if="preHttp(qicaixinxiList[2].tupian)" :src="qicaixinxiList[2].tupian.split(',')[0]" alt="" />
						<img v-else :src="baseUrl + (qicaixinxiList[2].tupian?qicaixinxiList[2].tupian.split(',')[0]:'')" alt="" />
						<div class="infoBox">
							<div class="name">器材编号:{{qicaixinxiList[2].qicaibianhao}}</div>
							<div class="name">{{qicaixinxiList[2].qicaileixing}}</div>
							<div class="name">{{qicaixinxiList[2].gengxinriqi}}</div>
							<div class="time_item">
								<span class="icon iconfont icon-shijian21"></span>
								<span class="label">发布时间：</span>
								<span class="text">{{qicaixinxiList[2].addtime.split(' ')[0]}}</span>
							</div>
							<div class="like_item">
								<span class="icon iconfont icon-zan10"></span>
								<span class="label">点赞：</span>
								<span class="text">{{qicaixinxiList[2].thumbsupnum}}</span>
							</div>
							<div class="collect_item">
								<span class="icon iconfont icon-shoucang10"></span>
								<span class="label">收藏：</span>
								<span class="text">{{qicaixinxiList[2].storeupnum}}</span>
							</div>
						</div>
					</div>
				</div>
				<div class="list-body-right">
					<div v-if="qicaixinxiList.length>3" @click="toDetail('qicaixinxiDetail', qicaixinxiList[3])" class="list-item1 animation-box">
						<img v-if="preHttp(qicaixinxiList[3].tupian)" :src="qicaixinxiList[3].tupian.split(',')[0]" alt="" />
						<img v-else :src="baseUrl +  (qicaixinxiList[3].tupian?qicaixinxiList[3].tupian.split(',')[0]:'')" alt="" />
						<div class="infoBox">
							<div class="name">器材编号:{{qicaixinxiList[3].qicaibianhao}}</div>
							<div class="name">{{qicaixinxiList[3].qicaileixing}}</div>
							<div class="name">{{qicaixinxiList[3].gengxinriqi}}</div>
							<div class="time_item">
								<span class="icon iconfont icon-shijian21"></span>
								<span class="label">发布时间：</span>
								<span class="text">{{qicaixinxiList[3].addtime.split(' ')[0]}}</span>
							</div>
							<div class="like_item">
								<span class="icon iconfont icon-zan10"></span>
								<span class="label">点赞：</span>
								<span class="text">{{qicaixinxiList[3].thumbsupnum}}</span>
							</div>
							<div class="collect_item">
								<span class="icon iconfont icon-shoucang10"></span>
								<span class="label">收藏：</span>
								<span class="text">{{qicaixinxiList[3].storeupnum}}</span>
							</div>
						</div>
					</div>
					<div v-if="qicaixinxiList.length>4" @click="toDetail('qicaixinxiDetail', qicaixinxiList[4])" class="list-item2 animation-box">
						<img v-if="preHttp(qicaixinxiList[4].tupian)" :src="qicaixinxiList[4].tupian.split(',')[0]" alt="" />
						<img v-else :src="baseUrl + (qicaixinxiList[4].tupian?qicaixinxiList[4].tupian.split(',')[0]:'')" alt="" />
						<div class="infoBox">
							<div class="name">器材编号:{{qicaixinxiList[4].qicaibianhao}}</div>
							<div class="name">{{qicaixinxiList[4].qicaileixing}}</div>
							<div class="name">{{qicaixinxiList[4].gengxinriqi}}</div>
							<div class="time_item">
								<span class="icon iconfont icon-shijian21"></span>
								<span class="label">发布时间：</span>
								<span class="text">{{qicaixinxiList[4].addtime.split(' ')[0]}}</span>
							</div>
							<div class="like_item">
								<span class="icon iconfont icon-zan10"></span>
								<span class="label">点赞：</span>
								<span class="text">{{qicaixinxiList[4].thumbsupnum}}</span>
							</div>
							<div class="collect_item">
								<span class="icon iconfont icon-shoucang10"></span>
								<span class="label">收藏：</span>
								<span class="text">{{qicaixinxiList[4].storeupnum}}</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="moreBtn" @click="moreBtn('qicaixinxi')">
				<span class="text">查看更多</span>
				<i class="icon iconfont icon-gengduo1"></i>
			</div>
	

		</div>
		<!-- 特价商品 -->
	</div>
</template>

<script>
import 'animate.css'
import Swiper from "swiper";

	export default {
		//数据集合
		data() {
			return {
				baseUrl: '',
				aboutUsDetail: {},
				systemIntroductionDetail: {},
				newsList: [],

				qicaixinxiList: [],




			}
		},
		created() {
			this.baseUrl = this.$config.baseUrl;
			this.getAboutUs();
			this.getSystemIntroduction();
			this.getList();
		},
		mounted() {
			window.addEventListener('scroll', this.handleScroll)
			setTimeout(()=>{
				this.handleScroll()
			},100)
			
			this.swiperChanges()
		},
		beforeDestroy() {
			window.removeEventListener('scroll', this.handleScroll)
		},
		//方法集合
		methods: {
			swiperChanges() {
				setTimeout(()=>{
				},750)
			},


			handleScroll() {
				let arr = [
					{id:'about',css:'animate__'},
					{id:'system',css:'animate__'},
					{id:'animate_listqicaixinxi',css:'animate__'},
				]
			
				for (let i in arr) {
					let doc = document.getElementById(arr[i].id)
					if (doc) {
						let top = doc.offsetTop
						let win_top = window.innerHeight + window.pageYOffset
						// console.log(top,win_top)
						if (win_top > top && doc.classList.value.indexOf(arr[i].css) < 0) {
							// console.log(doc)
							doc.classList.add(arr[i].css)
						}
					}
				}
			},
			preHttp(str) {
				return str && str.substr(0,4)=='http';
			},
			preHttp2(str) {
				return str && str.split(',w').length>1;
			},
			getAboutUs() {
				this.$http.get('aboutus/detail/1', {}).then(res => {
					if(res.data.code == 0) {
						this.aboutUsDetail = res.data.data;
					}
				})
			},
			getSystemIntroduction() {
				this.$http.get('systemintro/detail/1', {}).then(res => {
					if(res.data.code == 0) {
						this.systemIntroductionDetail = res.data.data;
					}
				})
			},
			getList() {
				let autoSortUrl = "";
				let data = {}
			
				data = {
					page: 1,
					limit: 5,
				}

				this.$http.get('qicaixinxi/list', {params: data}).then(res => {
					if (res.data.code == 0) {
						this.qicaixinxiList = res.data.data.list;
					}
				});
			},
			toDetail(path, item) {
				this.$router.push({path: '/index/' + path, query: {id: item.id}});
			},
			moreBtn(path) {
				this.$router.push({path: '/index/' + path});
			}
		}
	}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.home-preview {
		margin: 0px auto;
		flex-direction: column;
		background: #fff;
		display: flex;
		width: 100%;
		#about {
			padding: 0;
			margin: 40px auto;
			background: #fff;
			width: 100%;
			height: auto;
			order: 3;
			.about_item {
				padding: 0;
				margin: 0px auto;
				z-index: 9;
				background: none;
				display: block;
				width: 1200px;
				position: relative;
				flex-wrap: wrap;
				.about_title_box {
					padding: 0 0 0 60px;
					margin: 0 auto 10px;
					background: url(http://codegen.caihongy.cn/20250210/8fb3155213d34ce2bbcef9c9b572508f.png) no-repeat left center / 100% 100%;
					width: 1200px;
					position: relative;
					text-align: left;
					height: 40px;
					.about_title {
						margin: 0;
						color: #5d62de;
						background: none;
						font-weight: 600;
						width: auto;
						font-size: 26px;
						line-height: 30px;
						text-align: left;
					}
					.about_subtitle {
						margin: 0;
						color: #999;
						display: none;
						width: auto;
						font-size: 18px;
						line-height: 40px;
						text-align: center;
					}
				}
				.about_img {
					padding: 0;
					margin: 0;
					background: none;
					display: flex;
					width: auto;
					flex-wrap: wrap;
					height: auto;
					img:nth-child(1) {
						border-radius: 100%;
						margin: 0;
						top: 140px;
						left: 210px;
						object-fit: cover;
						display: block;
						width: 200px;
						position: absolute;
						height: 200px;
					}
					img:nth-child(2) {
						border-radius: 100%;
						margin: 0;
						top: 310px;
						left: 60px;
						object-fit: cover;
						display: block;
						width: 200px;
						position: absolute;
						height: 200px;
					}
					img:nth-child(3) {
						border-radius: 100%;
						margin: 0;
						top: 310px;
						left: 360px;
						object-fit: cover;
						display: block;
						width: 200px;
						position: absolute;
						height: 200px;
					}
				}
				.about_content {
					border-radius: 60px 0px 60px 0px;
					padding: 60px 60px 60px 58%;
					box-shadow: 0px 10px 20px 0px rgba(0, 0, 0, 0.25),0px -10px 20px 0px rgba(0, 0, 0, 0.25);
					margin: 40px 0 0;
					overflow: hidden;
					color: #333;
					text-indent: 2em;
					background: url(http://codegen.caihongy.cn/20250210/41a644a701564a7aa337669da7b8735d.jpg) no-repeat center top / 100% 100%;
					width: 100%;
					font-size: 16px;
					line-height: 30px;
					height: 480px;
				}
				.about_idea1 {
					z-index: -1;
					top: 0;
					background: #d10602;
					display: none;
					width: 50%;
					position: absolute;
					right: 0;
					height: 400px;
				}
				.about_idea2 {
					background: url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat;
					display: none;
					width: 285px;
					height: 100px;
				}
				.about_idea3 {
					background: url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat;
					display: none;
					width: 285px;
					height: 100px;
				}
				.about_idea4 {
					background: url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat;
					display: none;
					width: 285px;
					height: 100px;
				}
				.about_more {
					border: 0px solid #999;
					cursor: pointer;
					padding: 0;
					margin: 0;
					display: inline-block;
					line-height: 40px;
					right: calc((100% - 1200px)/2);
					float: right;
					top: 20px;
					background: url(http://codegen.caihongy.cn/20250210/1ca24bd8c8544b5a9d3d3b45cbb7649a.png) no-repeat center top / 100% 100%;
					width: 113px;
					position: absolute;
					text-align: center;
					span:nth-child(1) {
						color: #e7e1f8;
						font-size: 14px;
					}
					span:nth-child(2) {
						color: #333;
						display: none;
						font-size: 15px;
					}
				}
				.about_more:hover {
					cursor: pointer;
					opacity: 1;
				}
			}
		}
		#system {
			padding: 0;
			margin: 20px auto;
			background: #fff;
			width: 100%;
			height: auto;
			order: 5;
			.system_item {
				padding: 0;
				margin: 0px auto;
				z-index: 9;
				background: none;
				display: block;
				width: 1200px;
				position: relative;
				flex-wrap: wrap;
				.system_title_box {
					padding: 0 0 0 60px;
					margin: 0 auto 10px;
					background: url(http://codegen.caihongy.cn/20250210/8fb3155213d34ce2bbcef9c9b572508f.png) no-repeat left center / 100% 100%;
					width: 1200px;
					position: relative;
					text-align: left;
					height: 40px;
					.system_title {
						margin: 0;
						color: #5d62de;
						background: none;
						font-weight: 600;
						width: auto;
						font-size: 26px;
						line-height: 30px;
						text-align: left;
					}
					.system_subtitle {
						margin: 0;
						color: #999;
						display: none;
						width: auto;
						font-size: 18px;
						line-height: 40px;
						text-align: center;
					}
				}
				.system_img {
					padding: 0;
					margin: 0;
					background: none;
					display: flex;
					width: auto;
					flex-wrap: wrap;
					height: auto;
					img:nth-child(1) {
						margin: 0;
						top: 80px;
						object-fit: cover;
						display: block;
						width: 40%;
						position: absolute;
						right: 0px;
						height: 420px;
					}
					img:nth-child(2) {
						object-fit: cover;
						display: none;
						width: 100%;
						height: 480px;
					}
					img:nth-child(3) {
						bottom: 0;
						object-fit: cover;
						display: none;
						width: 330px;
						position: absolute;
						right: 0;
						height: 120px;
					}
				}
				.system_content {
					padding: 60px 50% 60px 60px;
					margin: 30px 0 0;
					color: #333;
					font-size: 16px;
					border-color: #ddd;
					line-height: 30px;
					box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25),0px -4px 4px 0px rgba(0, 0, 0, 0.25);
					overflow: hidden;
					text-indent: 2em;
					background: url(http://codegen.caihongy.cn/20250210/59bbe0c79dff4984be26d61650e01ea2.jpg) no-repeat left center / auto 100%;
					width: 100%;
					border-width: 0px;
					border-style: solid;
					height: 420px;
				}
				.system_idea1 {
					z-index: -1;
					top: 0;
					background: #d10602;
					display: none;
					width: 50%;
					position: absolute;
					right: 0;
					height: 400px;
				}
				.system_idea2 {
					background: url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat;
					display: none;
					width: 285px;
					height: 100px;
				}
				.system_idea3 {
					background: url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat;
					display: none;
					width: 285px;
					height: 100px;
				}
				.system_idea4 {
					background: url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat;
					display: none;
					width: 285px;
					height: 100px;
				}
				.system_more {
					border: 0px solid #999;
					cursor: pointer;
					padding: 0;
					margin: 0;
					display: inline-block;
					line-height: 40px;
					right: calc((100% - 1200px)/2);
					float: right;
					top: 0px;
					background: url(http://codegen.caihongy.cn/20250210/1ca24bd8c8544b5a9d3d3b45cbb7649a.png) no-repeat center top / 100% 100%;
					width: 113px;
					position: absolute;
					text-align: center;
					span:nth-child(1) {
						color: #e7e1f8;
						font-size: 14px;
					}
					span:nth-child(2) {
						color: #333;
						display: none;
						font-size: 15px;
					}
				}
				.system_more:hover {
					cursor: pointer;
					opacity: 1;
				}
			}
		}
		.lists {
			padding: 30px 0 20px;
			margin: 0;
			background: rgb(244, 245, 252);
			width: 100%;
			position: relative;
			order: 2;
			.list_title_box {
				padding: 0 0 0 60px;
				margin: 0 auto 10px;
				background: url(http://codegen.caihongy.cn/20250210/8fb3155213d34ce2bbcef9c9b572508f.png) no-repeat left center / 100% 100%;
				width: 1200px;
				position: relative;
				text-align: left;
				height: 40px;
				.list_title {
					margin: 0;
					color: #5d62de;
					background: none;
					font-weight: 600;
					width: auto;
					font-size: 26px;
					line-height: 30px;
					text-align: left;
				}
				.list_subhead {
					margin: 0;
					color: #999;
					display: none;
					width: auto;
					font-size: 18px;
					line-height: 40px;
					text-align: center;
				}
			}
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
			.list8 {
				padding: 0;
				margin: 30px auto 20px;
				color: #fff;
				background: none;
				display: flex;
				width: 1200px;
				font-size: 14px;
				flex-wrap: wrap;
				height: auto;
				.list-body-left {
					margin: 0 10px 0 0;
					display: flex;
					width: calc(50% - 10px);
					flex-wrap: wrap;
					height: auto;
					.list-item1 {
						cursor: pointer;
						margin: 0 0 20px;
						width: 100%;
						position: relative;
						height: 350px;
						img {
							border-radius: 6px;
							object-fit: cover;
							width: 100%;
							float: left;
							height: 100%;
						}
						.infoBox {
							border-radius: 6px;
							padding: 5px 0 10px;
							left: 0;
							bottom: 0;
							background: rgba(0,0,0,.3);
							width: 100%;
							position: absolute;
							.name {
								padding: 0 10px;
								overflow: hidden;
								color: #fff;
								white-space: nowrap;
								width: 100%;
								font-size: 15px;
								line-height: 30px;
								text-overflow: ellipsis;
							}
							.price {
								padding: 0 10px;
								color: #f00;
								font-size: 16px;
								line-height: 30px;
							}
							.time_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.publisher_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.like_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.collect_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.view_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
						}
					}
					.list-item2 {
						cursor: pointer;
						margin: 0 10px 0 0;
						width: calc(50% - 10px);
						position: relative;
						height: 350px;
						img {
							border-radius: 6px;
							object-fit: cover;
							width: 100%;
							float: left;
							height: 100%;
						}
						.infoBox {
							border-radius: 6px;
							padding: 5px 0 10px;
							left: 0;
							bottom: 0;
							background: rgba(0,0,0,.3);
							width: 100%;
							position: absolute;
							.name {
								padding: 0 10px;
								overflow: hidden;
								color: #fff;
								white-space: nowrap;
								width: 100%;
								font-size: 15px;
								line-height: 30px;
								text-overflow: ellipsis;
							}
							.price {
								padding: 0 10px;
								color: #f00;
								font-size: 16px;
								line-height: 30px;
							}
							.time_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.publisher_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.like_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.collect_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.view_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
						}
					}
					.list-item3 {
						cursor: pointer;
						margin: 0 0 0 10px;
						width: calc(50% - 10px);
						position: relative;
						height: 350px;
						img {
							border-radius: 6px;
							object-fit: cover;
							width: 100%;
							float: left;
							height: 100%;
						}
						.infoBox {
							border-radius: 6px;
							padding: 5px 0 10px;
							left: 0;
							bottom: 0;
							background: rgba(0,0,0,.3);
							width: 100%;
							position: absolute;
							.name {
								padding: 0 10px;
								overflow: hidden;
								color: #fff;
								white-space: nowrap;
								width: 100%;
								font-size: 15px;
								line-height: 30px;
								text-overflow: ellipsis;
							}
							.price {
								padding: 0 10px;
								color: #f00;
								font-size: 16px;
								line-height: 30px;
							}
							.time_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.publisher_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.like_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.collect_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.view_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
						}
					}
				}
				.list-body-right {
					margin: 0 0 0 10px;
					display: flex;
					width: calc(50% - 10px);
					flex-wrap: wrap;
					height: auto;
					.list-item1 {
						cursor: pointer;
						margin: 0 0 20px;
						width: 100%;
						position: relative;
						height: 350px;
						img {
							border-radius: 6px;
							object-fit: cover;
							width: 100%;
							float: left;
							height: 100%;
						}
						.infoBox {
							border-radius: 6px;
							padding: 5px 0 10px;
							left: 0;
							bottom: 0;
							background: rgba(0,0,0,.3);
							width: 100%;
							position: absolute;
							.name {
								padding: 0 10px;
								overflow: hidden;
								color: #fff;
								white-space: nowrap;
								width: 100%;
								font-size: 15px;
								line-height: 30px;
								text-overflow: ellipsis;
							}
							.price {
								padding: 0 10px;
								color: #f00;
								font-size: 16px;
								line-height: 30px;
							}
							.time_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.publisher_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.like_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.collect_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.view_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
						}
					}
					.list-item2 {
						cursor: pointer;
						width: 100%;
						position: relative;
						height: 350px;
						img {
							border-radius: 6px;
							object-fit: cover;
							width: 100%;
							float: left;
							height: 100%;
						}
						.infoBox {
							border-radius: 6px;
							padding: 5px 0 10px;
							left: 0;
							bottom: 0;
							background: rgba(0,0,0,.3);
							width: 100%;
							position: absolute;
							.name {
								padding: 0 10px;
								overflow: hidden;
								color: #fff;
								white-space: nowrap;
								width: 100%;
								font-size: 15px;
								line-height: 30px;
								text-overflow: ellipsis;
							}
							.price {
								padding: 0 10px;
								color: #f00;
								font-size: 16px;
								line-height: 30px;
							}
							.time_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.publisher_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.like_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.collect_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
							.view_item {
								padding: 0 0 0 10px;
								display: inline-block;
								.icon {
									margin: 0 2px 0 0;
									line-height: 1.5;
								}
								.label {
									display: none;
									line-height: 1.5;
								}
								.text {
									line-height: 1.5;
								}
							}
						}
					}
				}
			}
			.moreBtn {
				border: 0px solid #999;
				cursor: pointer;
				padding: 0;
				margin: 0;
				display: inline-block;
				line-height: 40px;
				right: calc((100% - 1200px)/2);
				float: right;
				top: 30px;
				background: url(http://codegen.caihongy.cn/20250210/1ca24bd8c8544b5a9d3d3b45cbb7649a.png) no-repeat center top / 100% 100%;
				width: 113px;
				position: absolute;
				text-align: center;
				.text {
					color: #e7e1f8;
					font-size: 14px;
				}
				.icon {
					color: #333;
					display: none;
					font-size: 15px;
				}
			}
		}
	}
</style>
