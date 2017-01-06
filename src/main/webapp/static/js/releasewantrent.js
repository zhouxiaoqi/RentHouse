/**
 * 
 */

$(function($) {
	var wantrent = new Vue({
		el : "#wantrent",
		data : {
			warntip : false,
			warninfo : "",
		},
		methods : {
			submit : function() {
				var reg = /^1[34578]\d{9}$/;
				var province = $("#province").val();
				var city = $("#city").val();
				var room = $("#room").val();
				var office = $("#office").val();
				var rent_type = $("#rent-type").val();
				var renovation_type = $("#renovation-type").val();
				var orientation = $("#orientation").val();
				var name = $("#your-name").val();
				var telnum = $("#your-telnum").val();
				if (province === '' || city === '' || room === ''
						|| office === '' || rent_type === '') {
					this.warntip = true;
					this.warninfo = "请完整填写信息";
				} else if (renovation_type === '' || orientation === ''
						|| name === '' || telnum === '') {
					this.warntip = true;
					this.warninfo = "请完整填写信息";

				} else if (!reg.test(telnum)) {
					this.warntip = true;
					this.warninfo = "手机号码格式不对";
				} else {
					this.warntip = false;
					this.warninfo = "";
				}
			}
		}
	})
})