$(function($) {
	var wantrent = new Vue({
		el: "#rentcontent",
		data: {
			togglemask: false,
			wantrents:[]
		},
		created(){
			this.request();
		},
		methods: {
			togglecity: function() {
				this.togglemask = true;
			},
			closemask: function() {
				this.togglemask = false;
			},
			request(){
				var me = this;
				this.$http.post('releasewantrent/getallwantrent.do').then((response)=>{
					console.log(response.data);
					me.wantrents = response.data;
				})
			}
		}
	})
})