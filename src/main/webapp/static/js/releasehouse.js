$(function($) {
	var releasehouse = new Vue({
		el: "#release-form",
		data: {
			hidefile: false,
			warntip: false,
			warninfo: "",
			/** img1 ~ img5 :五张预览图路径存放 */
			img1: "",
			img2: "",
			img3: "",
			img4: "",
			img5: "",
			/** hide1 ~ hide5 : 加号➕隐藏 */
			hide1: true,
			hide2: true,
			hide3: true,
			hide4: true,
			hide5: true,
			/** toggleimg1 ~ toggleimg5 : 预览图显示或隐藏 */
			toggleimg1: false,
			toggleimg2: false,
			toggleimg3: false,
			toggleimg4: false,
			toggleimg5: false,
			getallprovinceapi:'province/getallprovince.do',
			provinces:[],		// 用来存放省的json
			cities:[]  // 用来存放城市json
		},
		created(){
			this.request();
		},
		methods: {
			clickpic1: function() {
				var me = this;
				$("#pic1").click();
				$("#pic1").change(function() {
					var objUrl = getObjectURL(this.files[0]);
					if(objUrl) {
						console.log(objUrl);
						me.hide1 = false;
						me.img1 = objUrl;
						me.toggleimg1 = true;
					}
				});
			},
			clickpic2: function() {
				var me = this;
				$("#pic2").click();
				$("#pic2").change(function() {
					var objUrl = getObjectURL(this.files[0]);
					if(objUrl) {
						console.log(objUrl);
						me.hide2 = false;
						me.img2 = objUrl;
						me.toggleimg2 = true;
					}
				});
			},
			clickpic3: function() {
				var me = this;
				$("#pic3").click();
				$("#pic3").change(function() {
					var objUrl = getObjectURL(this.files[0]);
					if(objUrl) {
						console.log(objUrl);
						me.hide3 = false;
						me.img3 = objUrl;
						me.toggleimg3 = true;
					}
				});
			},
			clickpic4: function() {
				var me = this;
				$("#pic4").click();
				$("#pic4").change(function() {
					var objUrl = getObjectURL(this.files[0]);
					if(objUrl) {
						console.log(objUrl);
						me.hide4 = false;
						me.img4 = objUrl;
						me.toggleimg4 = true;
					}
				});
			},
			clickpic5: function() {
				var me = this
				$("#pic5").click();
				$("#pic5").change(function() {
					var objUrl = getObjectURL(this.files[0]);
					if(objUrl) {
						console.log(objUrl);
						me.hide5 = false;
						me.img5 = objUrl;
						me.toggleimg5 = true;
					}
				});
			},
			datepicker:function(){
				$("#date").datepicker({
					dateFormat:"yy-mm-dd",
					minDate:+1
				});
			},
			releasesubmit: function() {
				var reg = /^1[34578]\d{9}$/;
				var province = $("#province").val();
				var city = $("#city").val();
				var detail_address = $("#detail-address").val();
				var house_area = $("#area").val();
				var room = $("#room").val();
				var office = $("#office").val();
				var price = $("#price").val();
				var house_layer = $("#layer").val();
				var total_layer = $("#total-layer").val();
				var house_type = $("#house-type").val();
				var pic1 = $("#pic1").val();
				var pic2 = $("#pic2").val();
				var pic3 = $("#pic3").val();
				var pic4 = $("#pic4").val();
				var pic5 = $("#pic5").val();
				var house_date = $("#date").val()
				var renovation_type = $("#renovation-type").val();
				var orientation = $("#orientation").val();
				var said = $("#said").val();
				var telnum = $("#telnum").val();
				var realname = $("#realname")
				if(province === '' || city === '' || detail_address === '' || house_area === '' || room === '' || office === '' || price === '' ) {
					this.warntip = true;
					this.warninfo = "请完整填写房源信息!"
				} else if(house_layer === '' || total_layer === '' || house_type === '' || house_date === '' || renovation_type === '' || orientation === '' || said === '' || telnum === '' || realname === '') {
					this.warntip = true;
					this.warninfo = "请完整填写房源信息!"
				} else if(pic1 === '' && pic2 === '' && pic3 === '' && pic4 === '' && pic5 === '') {
					this.warntip = true;
					this.warninfo = "一张房源图都不给？过分了！"
				} else if(!reg.test(telnum)) {
					this.warntip = true;
					this.warninfo = "请输入正确的手机号码"
				} else {
					this.warntip = false;
					this.warninfo = "";
					$("#myform").submit();
					
				}
			},
			getcity:function(){
				var me = this
				var theid =$("#province").val();
				this.$http.post('city/getthiscities'+ '/' + theid + '.do').then((response)=>{
					me.cities = response.data;
					console.log(me.cities);
				})
			},
			request(){
				var me = this;
				this.$http.post(this.getallprovinceapi).then((response)=>{
					me.provinces = response.data;
					console.log(me.provinces);
				})
			},
			
		}
	})

	// 建立一個可存取到該file的url
	function getObjectURL(file) {
		var url = null;
		if(window.createObjectURL != undefined) { // basic
			url = window.createObjectURL(file);
		} else if(window.URL != undefined) { // mozilla(firefox)
			url = window.URL.createObjectURL(file);
		} else if(window.webkitURL != undefined) { // webkit or chrome
			url = window.webkitURL.createObjectURL(file);
		}
		return url;
	}
});