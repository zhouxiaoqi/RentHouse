$(function($) {
	var location = new Vue({
		el: "#housecontent",
		data: {
			togglemask: false,
			houses:[],
			provinces:[],
			cityname:"未选择"
		},
		created(){
			this.request();
			this.getAllProvince();
		},
		methods: {
			togglecity: function() {
				this.togglemask = true;
				$('body').css("overflow", "hidden");
			},
			closemask:function(){
				this.togglemask = false;
				$('body').css("overflow", "scroll");
			},
			getcities:function(id,pname){
				var me = this;
				this.$http.post('city/getthiscities/' + id + '.do').then((response)=>{
					console.log(response.data);
					vm.cities = response.data;
					me.togglemask = false;
					$('body').css("overflow", "scroll");
					me.cityname = pname; 
				});
				this.$http.post('releasehouse/gethousesbyprovince/' + id + '.do').then((response)=>{
					console.log(response.data);
					me.houses = response.data;
				});
			},
			request(){
				var me = this;
				this.$http.post('releasehouse/getallhouse.do').then((response)=>{
					console.log(response.data); 
					me.houses = response.data;
				});
			},
			getAllProvince(){
				var me =this;
				this.$http.post('province/getallprovince.do').then((response)=>{
					console.log(response.data);
					me.provinces = response.data;
				});
			}
		}
	});
	
	
	var vm = new Vue({
		el:"#middle-nav",
		data:{
			cities:[]
		},
		methods:{
			gethouses:function(id){
				var me = this;
				this.$http.post('releasehouse/gethousesbycity/' + id + '.do').then((response)=>{
					console.log(response.data);
					location.houses = response.data;
				})
			},
			gethousebyprice:function(startprice,endprice){
				var me = this;
				this.$http.post('releasehouse/gethousesbyprice/' + startprice + '/' + endprice  + '.do').then((response)=>{
					console.log(response.data);
					location.houses = response.data;
				})
			},
			gethousebyroom:function(room){
				var me = this;
				this.$http.post('releasehouse/gethousesbyroom/' + room + '.do').then((response)=>{
					console.log(response.data);
					location.houses = response.data;
				})
			}
		}
	})
});