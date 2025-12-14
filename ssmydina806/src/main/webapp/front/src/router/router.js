import VueRouter from 'vue-router'
//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Messages from '../pages/messages/list'
import Storeup from '../pages/storeup/list'
import payList from '../pages/pay'

import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import qicaixinxiList from '../pages/qicaixinxi/list'
import qicaixinxiDetail from '../pages/qicaixinxi/detail'
import qicaixinxiAdd from '../pages/qicaixinxi/add'
import qicaileixingList from '../pages/qicaileixing/list'
import qicaileixingDetail from '../pages/qicaileixing/detail'
import qicaileixingAdd from '../pages/qicaileixing/add'
import qicaicaigouList from '../pages/qicaicaigou/list'
import qicaicaigouDetail from '../pages/qicaicaigou/detail'
import qicaicaigouAdd from '../pages/qicaicaigou/add'
import qicaizulinList from '../pages/qicaizulin/list'
import qicaizulinDetail from '../pages/qicaizulin/detail'
import qicaizulinAdd from '../pages/qicaizulin/add'
import qicaiguihaiList from '../pages/qicaiguihai/list'
import qicaiguihaiDetail from '../pages/qicaiguihai/detail'
import qicaiguihaiAdd from '../pages/qicaiguihai/add'
import syslogList from '../pages/syslog/list'
import syslogDetail from '../pages/syslog/detail'
import syslogAdd from '../pages/syslog/add'
import aboutusList from '../pages/aboutus/list'
import aboutusDetail from '../pages/aboutus/detail'
import aboutusAdd from '../pages/aboutus/add'
import systemintroList from '../pages/systemintro/list'
import systemintroDetail from '../pages/systemintro/detail'
import systemintroAdd from '../pages/systemintro/add'
import discussqicaixinxiList from '../pages/discussqicaixinxi/list'
import discussqicaixinxiDetail from '../pages/discussqicaixinxi/detail'
import discussqicaixinxiAdd from '../pages/discussqicaixinxi/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'pay',
					component: payList,
				},
				{
					path: 'messages',
					component: Messages
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'qicaixinxi',
					component: qicaixinxiList
				},
				{
					path: 'qicaixinxiDetail',
					component: qicaixinxiDetail
				},
				{
					path: 'qicaixinxiAdd',
					component: qicaixinxiAdd
				},
				{
					path: 'qicaileixing',
					component: qicaileixingList
				},
				{
					path: 'qicaileixingDetail',
					component: qicaileixingDetail
				},
				{
					path: 'qicaileixingAdd',
					component: qicaileixingAdd
				},
				{
					path: 'qicaicaigou',
					component: qicaicaigouList
				},
				{
					path: 'qicaicaigouDetail',
					component: qicaicaigouDetail
				},
				{
					path: 'qicaicaigouAdd',
					component: qicaicaigouAdd
				},
				{
					path: 'qicaizulin',
					component: qicaizulinList
				},
				{
					path: 'qicaizulinDetail',
					component: qicaizulinDetail
				},
				{
					path: 'qicaizulinAdd',
					component: qicaizulinAdd
				},
				{
					path: 'qicaiguihai',
					component: qicaiguihaiList
				},
				{
					path: 'qicaiguihaiDetail',
					component: qicaiguihaiDetail
				},
				{
					path: 'qicaiguihaiAdd',
					component: qicaiguihaiAdd
				},
				{
					path: 'syslog',
					component: syslogList
				},
				{
					path: 'syslogDetail',
					component: syslogDetail
				},
				{
					path: 'syslogAdd',
					component: syslogAdd
				},
				{
					path: 'aboutus',
					component: aboutusList
				},
				{
					path: 'aboutusDetail',
					component: aboutusDetail
				},
				{
					path: 'aboutusAdd',
					component: aboutusAdd
				},
				{
					path: 'systemintro',
					component: systemintroList
				},
				{
					path: 'systemintroDetail',
					component: systemintroDetail
				},
				{
					path: 'systemintroAdd',
					component: systemintroAdd
				},
				{
					path: 'discussqicaixinxi',
					component: discussqicaixinxiList
				},
				{
					path: 'discussqicaixinxiDetail',
					component: discussqicaixinxiDetail
				},
				{
					path: 'discussqicaixinxiAdd',
					component: discussqicaixinxiAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
