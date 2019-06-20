

//js/header.js

$(function(){//加载头部样式和行为
  $.ajax({
    url:"header.html",
    type:"get",
    success: function(html) {
       $(html).replaceAll("#header");
       $(`<link rel="stylesheet"
       href="../GOLFCSS/header.css"/>`)
         .appendTo("head");

           //包含页头相关的所有js代码
            //自动获得搜索框焦点
         var input=document.getElementsByClassName("border-radius")[0];
    input.focus();
              //鼠标移入ul和移出ul时a的样式
           $("[data-br=tr]").hover(function(){
               $(this).prev().prev().toggleClass("back");
           })

          //判断前端存储的uid 位置要正确
      let uname=sessionStorage.getItem("uname");
      let uid=sessionStorage.getItem("uid");
      let $hui=$(".hmgrf");
      if(uid){
        let $welcome=$(".welcome");
        let html=`欢迎回来${uname}`;
        html+=`<a href="javascript:;" class="zhuxiao">注销</a>`;
        $welcome.html(html).addClass("hyhl");
        $hui.css("display","block");
      
        let $zhuxiao=$(".zhuxiao");
        $zhuxiao.click(function(){
        sessionStorage.removeItem("uid");
          alert("注销成功");
        setTimeout(function(){
          location.href="section.html";
        },1000);
      })
    }
                   

  }
})

         //头部固定起来定位放在外面，因为监听的是在首页里面
      $(window).scroll(function(){
        let $scrollTop=$(this).scrollTop();
        if($scrollTop>=130){
          $(".guding").addClass("backhome");
        }else{
          $(".guding").removeClass("backhome");
        }
      })



});



























