
$(function(){
  $("#golfuname").focus(function(){//用户名获得焦点时的样式
     //$(this).val("");
     $("#uname-msg").html("用户名必须在6-10位之间").removeClass("msgg")
  });
  $("#golfuname").blur(function(){//用户名失去焦点时的样式
    var reg=/^\w{6,10}$/;
    var $str=$(this).val();
    if(!reg.test($str)){
      $("#uname-msg").html(`<img src="../img/golf2/err.png">用户名不符合要求请重新输入`).removeClass("msgg")
    }else{
      $("#uname-msg").html(`<img src="../img/golf2/ok.png">用户名输入正确厉害啰`).addClass("msgg")
    }
  });


  $("#golfupwd").focus(function(){//密码获得焦点时的样式
    
    $("#upwd-msg").html("长度为6-12位包含数字、字母、特殊字符的密码").removeClass("msgg")
 });
 $("#golfupwd").blur(function(){//用户名失去焦点时的样式
   var reg=/^(?=.*\d)(?=.*[a-zA-Z])(?=.*[\W_]).{6,12}$/;
   //长度为6-12位包含数字、字母、特殊字符的密码
   var $str=$(this).val();
   if(!reg.test($str)){
     $("#upwd-msg").html(`<img src="../img/golf2/err.png">密码不符合要求请重新输入`).removeClass("msgg")
   }else{
     $("#upwd-msg").html(`<img src="../img/golf2/ok.png">密码输入正确厉害啰`).addClass("msgg")
   }
 });

 
 $("[data-con=pwd]").focus(function(){//确认密码获得焦点时的样式
  
  $("#upwd-qie").html(`请确认密码`).removeClass("msgg")
 });
 $("[data-con=pwd]").blur(function(){
      if($("[data-con=pwd]").val()==$("#golfupwd").val())
       $("#upwd-qie").html(`<img src="../img/golf2/ok.png">密码确认正确`).addClass("msgg");
      if( $("[data-con=pwd]").val()=="")
      $("#upwd-qie").html(`<img src="../img/golf2/err.png">密码不能为空`).removeClass("msgg");
      if($("[data-con=pwd]").val()!=$("#golfupwd").val())
      $("#upwd-qie").html(`<img src="../img/golf2/err.png">密码确认失败`).removeClass("msgg");
});


$("#golfemail").focus(function(){//邮箱地址验证
   
    $("#email-msg").html(`请输入邮箱地址`).removeClass("msgg");
});
$("#golfemail").blur(function(){
  var reg=/^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/;
  if(!reg.test($("#golfemail").val())){
    $("#email-msg").html(`<img src="../img/golf2/err.png">请输入正确的邮箱地址`).removeClass("msgg");
  }else{
    $("#email-msg").html(`<img src="../img/golf2/ok.png">邮箱地址输入正确厉害啰`).addClass("msgg");
  }
})


$("#golfphone").focus(function(){//手机号码验证
  
  $("#phone-msg").html(`请输入手机号码`).removeClass("msgg");
});
$("#golfphone").blur(function(){
var reg=/^1[3|4|5|7|8][0-9]{9}$/;
if(!reg.test($("#golfphone").val())){
  $("#phone-msg").html(`<img src="../img/golf2/err.png">请输入正确的手机号码`).removeClass("msgg");
}else{
  $("#phone-msg").html(`<img src="../img/golf2/ok.png">手机号码输入正确厉害啰`).addClass("msgg");
}
})


/**
	 * 生产验证码，随机生成样式并添加进入验证码框中
	 */
  let result = true;
  let $box = $("#c-box");
  const NUM=4;
	function getCode(n){
		$box.children().remove();
		let arr = [0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f","g","h","i","j",
					"k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
		let code = [];
		for(let i=0;i < n;i++){
			let num = Math.ceil(Math.random()*35);
			if(typeof arr[num] == "string"){
				Math.random() > 0.5?arr[num]:(arr[num] = arr[num].toUpperCase());			
			}
			$("<span>"+arr[num]+"</span>").appendTo($box).css({
				"display":"inline-block",
				"color":rc(0,180),
				"transform":`skewY(${Math.random()>0.5?"-":""}${Math.ceil(Math.random()*45)}deg)`,
				"width":20,
				"height":30,
				"fontSize":20
			});
		}			
	}
  getCode(NUM);
  /**
	 * 生成一个指定范围内的随机数
	 */
	function rn(min,max){
		return Math.floor(Math.random()*(max-min) + min);
  }
  	/**
	 * 生成指定范围内随机颜色
	 */
	function rc(min,max){
		let r = rn(min,max);
		let g = rn(min,max);
		let b = rn(min,max);
		return `rgb(${r},${g},${b})`;
	}

	/**
	 * 点击切换验证码并改变背景颜色
	 */
	$box.click(e=>{
		getCode(NUM);
		$box.css("background",rc(180,230));
  });
  		/**
	*点击验证码框显示验证码
	*/
	$("input[name=c-code]").click(e=>{
		$box.css("opacity",1);
	});
	
	/**
	*检验验证码是否输入正确
	*/
	// function checkCode(){
	// 	let $code=$("input[name=c-code]");
	// 	let $box=$code.next();
	// 	let $span=$code.next().next();
	// 	console.log($box.text());
	// 	if($code.val()==""){
	// 		getStyle($span,"right","error","请输入验证码");
	// 		result=false;
	// 	}else{
	// 		if($code.val().toUpperCase()==$box.text().toUpperCase()){
	// 			getStyle($span,"error","right","通过");
	// 			result=true;
	// 		}else{
	// 			getStyle($span,"right","error","输入错误,请重新输入");
	// 			result=false;
	// 			getCode(NUM);
	// 		}
	// 	}
	// }

	/**
	*检验验证码
	*/
	// $("input[name=c-code]").blur(e=>{
	// 	checkCode();
  // });
  
  



//发送ajax请求
$("#tjzc").click(function(){
  var uname=$("#golfuname").val();
  var upwd=$("[data-con=pwd]").val();
  var email=$("#golfemail").val();
  var phone=$("#golfphone").val();
  var gender=$("#sex1").val();
   $.ajax({
      url:"http://127.0.0.1:8081/user/reg",
      type:"post",
      data:{
        uname,
        upwd,
        email,
        phone,
        gender,
      },
      dataType:"json",
      success: function(res) {
        if(res.code==1){
            alert("注册成功");
            location.href="login.html";
        }
      }
   })
})

//滑动解锁的方法
 //一、定义了一个获取元素的方法
 function getEle(selector){
	return document.querySelector(selector);
}
//二、获取到需要用到的DOM元素
var box = getEle("#box"),//容器
	bgColor = getEle(".bgColor"),//背景色
	txt = getEle(".txt"),//文本
	slider = getEle(".slider"),//滑块
	icon = getEle(".slider>i"),
	successMoveDistance = box.offsetWidth- slider.offsetWidth,//解锁需要滑动的距离
	downX,//用于存放鼠标按下时的位置
	isSuccess = false;//是否解锁成功的标志，默认不成功

//三、给滑块添加鼠标按下事件
slider.onmousedown = mousedownHandler;

//3.1鼠标按下事件的方法实现
function mousedownHandler(e){
	bgColor.style.transition = "";
	slider.style.transition = "";
	var e = e || window.event || e.which;
	downX = e.clientX;
	//在鼠标按下时，分别给鼠标添加移动和松开事件
	document.onmousemove = mousemoveHandler;
	document.onmouseup = mouseupHandler;
};

//四、定义一个获取鼠标当前需要移动多少距离的方法
function getOffsetX(offset,min,max){
	if(offset < min){
			offset = min;
	}else if(offset > max){
			offset = max;
	}
	return offset;
}

//3.1.1鼠标移动事件的方法实现
function mousemoveHandler(e){
	var e = e || window.event || e.which;
	var moveX = e.clientX;
	var offsetX = getOffsetX(moveX - downX,0,successMoveDistance);
	bgColor.style.width = offsetX + "px";
	slider.style.left = offsetX + "px";

	if(offsetX == successMoveDistance){
			success();
	}
	//如果不设置滑块滑动时会出现问题（目前还不知道为什么）
	e.preventDefault();
};

//3.1.2鼠标松开事件的方法实现
function mouseupHandler(e){
	if(!isSuccess){
			bgColor.style.width = 0 + "px";
			slider.style.left = 0 + "px";
			bgColor.style.transition = "width 0.8s linear";
			slider.style.transition = "left 0.8s linear";
	}
	document.onmousemove = null;
	document.onmouseup = null;
};

//五、定义一个滑块解锁成功的方法
function success(){
	isSuccess = true;
	txt.innerHTML = "解锁成功";
	bgColor.style.backgroundColor ="lightgreen";
	slider.className = "slider active";
	icon.className = "iconfont icon-icon_xuanzhong";
	//滑动成功时，移除鼠标按下事件和鼠标移动事件
	slider.onmousedown = null;
	document.onmousemove = null;
};




})



















