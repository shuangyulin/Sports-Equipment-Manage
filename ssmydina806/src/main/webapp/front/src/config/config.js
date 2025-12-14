export default {
	baseUrl: 'http://localhost:8080/ssmydina806/',
	name: '/ssmydina806',
	indexNav: [
		{
			name: '器材信息',
			url: '/index/qicaixinxi',
		},
		{
			name: '留言反馈',
			url: '/index/messages'
		},
	],
	cateList: [
		{
			name: '器材信息',
			refTable: 'qicaileixing',
			refColumn: 'qicaileixing',
		},
	]
}
