$(function(){
    $(window).scroll(function(){
        let scrollValue=$(window).scrollTop();
        //console.log(scrollValue);
        if(scrollValue<=200){
         // console.log(111111);
        }
        if(scrollValue>200){//自定义属性权值不够
          $(".my-fixed>p").css("display","block");
         
        }else{
          $(".my-fixed>p").css("display","none");
         
        }
    })
   
    $(".zhixun").hover(function(){//右边固定栏的hover事件 客服服务
         $(".xianshi").toggle();
         $(this).toggleClass("jiayi");
    });
    $(".xianshi").hover(function(){
      $(this).toggle().toggleClass("jiayi");
      $(this).parent().find(".zhixun").toggleClass("jiayi");
 });
    $(".shoujin").hover(function(){//右边固定栏的hover事件 手机订场
      $(".dingchang").toggle();
      $(this).toggleClass("jiayi");
    });
    $(".dingchang").hover(function(){
    $(this).toggle().toggleClass("jiayi");
    $(this).parent().find(".shoujin").toggleClass("jiayi");
    });


  $(".fanhui").click(function(){
    //var scrollTop=$(window).scrollTop();
    $("body,html").animate({scrollTop:0},1000);
  })
    //调用百度地图
  let map=new BMap.Map("container");
  let point=new BMap.Point(114.046368,22.628567);
      map.centerAndZoom(point,16);
   // 添加带有定位的导航控件
   let navigationControl = new BMap.NavigationControl({
    // 靠左上角位置
    anchor: BMAP_ANCHOR_TOP_LEFT,
    // LARGE类型
    type: BMAP_NAVIGATION_CONTROL_LARGE,
    // 启用显示定位
    enableGeolocation: true
  });
  map.addControl(navigationControl);
  map.enableScrollWheelZoom();
  map.enableInertialDragging();
  map.enableContinuousZoom();
  let size = new BMap.Size(10, 20);
  map.addControl(new BMap.CityListControl({
      anchor: BMAP_ANCHOR_TOP_LEFT,
      offset: size,
      // 切换城市之间事件
       onChangeBefore: function(){
         alert('before');
       },
      // 切换城市之后事件
      onChangeAfter:function(){
        alert('after');
      }
  }));


    //视频控制 第一个视频
    let v3=document.getElementById("v3");
    let m3=document.getElementById("m3");
    let ctrl=document.getElementById("ctrl");
    let img=document.querySelector("#ctrl img");
    let conta=document.querySelector(".conta");
    ctrl.onclick=function(e){
      e.preventDefault();
      if(v3.paused){
        v3.play();
        img.src="../img/golf2/pause.png";
        m3.style.display="none";
      }else{
        v3.pause();
        img.src="../img/golf2/play.png";
        m3.style.display="block";
      }
    }

    conta.onmouseenter=function(){
      ctrl.style.display="block";
    }
    conta.onmouseleave=function(){
      ctrl.style.display="none";
    }





















})
























