/**
 * 
 */

$(function($){
	var admin_house = new Vue({
		el:"#admin_house",
		data:{
			houses:[],
			showuri:"releasehouse/updateshow/",
			hideuri:"releasehouse/updatehide/"
		},
		created(){
			this.request();
		},
		methods:{
			request(){
				var me = this;
				this.$http.post('releasehouse/admingetallhouse.do').then((response)=>{
					console.log(response.data);
					me.houses = response.data;
				})
			},
			show:function(){
				house.showorhide = 0;
			}
		}
	})
})