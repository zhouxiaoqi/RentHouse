$(function($) {
	var wantrent = new Vue({
		el: "#rentcontent",
		data: {
			togglemask: false
		},
		methods: {
			togglecity: function() {
				this.togglemask = true;
			},
			closemask: function() {
				this.togglemask = false;
			}
		}
	})
})