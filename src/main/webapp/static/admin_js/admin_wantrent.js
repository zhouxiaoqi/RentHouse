/**
 * 
 */

$(function($){
	var admin_wantrent = new Vue({
		el:"#admin_wantrent",
		data:{
			wantrents:[]
		},
		created(){
			this.getall();
		},
		methods:{
			getall(){
				var me = this;
				this.$http.post('releasewantrent/admingetwantrent.do').then((response)=>{
					console.log(response.data);
					me.wantrents = response.data;
				})
			}
		}
	})
})