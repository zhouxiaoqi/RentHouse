$(function($) {
	var location = new Vue({
		el: "#housecontent",
		data: {
			togglemask: false
		},
		methods: {
			togglecity: function() {
				this.togglemask = true;
				$('body').css("overflow", "hidden");
			},
			closemask:function(){
				this.togglemask = false;
				$('body').css("overflow", "scroll");
			}
		}
	});
});