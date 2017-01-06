$(function($) {
	var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/; //验证邮箱正则
	var mask = new Vue({
		el: "#maskcontent",
		data: {
			togglehidden: false,
			togglewarn:false,
			warnmsg:""
		},
		methods:{
			showthis:function(){
				this.togglehidden = !this.togglehidden;
				this.warnmsg = "";
			},
			login:function(){
				var l_username = $("#l-username").val();
				var l_password = $("#l-password").val();
				if(l_username === '' || l_password === ''){
					this.togglewarn = true;
					this.warnmsg = "账号或密码错误";
				}else{
					this.togglewarn = false;
				}
			},
			regist:function(){
				var r_username = $("#r-username").val();
				var r_password = $("#r-password").val();
				var r_repassword = $("#r-repassword").val();
				if(r_username === '' || r_password === '' || r_repassword === ''){
					this.togglewarn = true;
					this.warnmsg = "请完整填写注册信息";
				}else if(r_password != r_repassword){
					this.togglewarn = true;
					this.warnmsg = "两次密码不一致";
				}
			}
		}
	})
});