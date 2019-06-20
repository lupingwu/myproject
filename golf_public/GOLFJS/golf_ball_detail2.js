 
 //固定返回顶部显示隐藏和点击事件 
  $(function(){ 
    let scrollTop=$(window).scrollTop(),
         $ding=$("[data-ding=bu]");
            if(scrollTop>=300){
              $ding.show();
            }
        $ding.click(function(){
           $("body,html").animate({
              scrollTop:0
            },1500)
        })
  })

//js/details.js
$(function(){
  //获得地址栏中?后的查询字符串部分，按等号一分为二，取后半部分。
 // var lid=location.search.split("=")[1];
  //只有地址栏中提供了lid时，才发送请求
 // if(lid!==undefined){
    $.ajax({
      url:"http://127.0.0.1:8081/golf/details",
      type:"get",
      data:{lid:4},
      dataType:"json",
      success:function(result){
         var html="";
        //遍历pics中每个图片对象
        for(var p of result){
          //每遍历一个就拼接一个li元素到html中
          
          html+=` <li class="m-3">
          <img src="${p.smimg}" data-tar="${p.mdimg}" data-lg="${p.lgimg}" alt="#">
      </li>`
        }
        //35行: <ul id="ulImgs"
        var $ul=$("#ulImgs").html(html)
        //动态计算ul的宽度:pics.length*62
          .css("width",result.length*96);
        
        //当单击左右按钮时，让ul左右移动一次
        //32行: <img id="btn-left"
        //41行: <img id="btn-right"
        //定义变量moved保存已经左移的li的个数
        var moved=0;
        //为两个按钮绑定单击事件
        var $btnLeft=$("#btn-left");
        var $btnRight=$("#btn-right");
        //如果pics的length<=4右边按钮就禁用
        if(result.length<=5){
          $btnRight.addClass("disabled");
        }
        $btnRight.click(function(){
          var $this=$(this);
          //只有当前按钮不是禁用样式时
          if($this.is(":not(.disabled)")){//才能点击
            //左移的li个数+1
            moved++;
            //ul的marginleft永远等于-moved*62
            $ul.css("margin-left",-96*moved);
            //只要右边按钮可以点一次，则左边按钮一定可以点
            $btnLeft.removeClass("disabled");
            //如果多余的图片已经移动完
            if(moved==result.length-5){
              $this.addClass("disabled")
            }
          }
        });
        $btnLeft.click(function(){
          var $this=$(this);
          //只有当前按钮不是禁用样式时
          if($this.is(":not(.disabled)")){//才能点击
            //左移的li个数-1
            moved--;
            $ul.css("margin-left",-96*moved);
            //只要左边按钮可以点一次，则右边按钮一定可以点一次
            $btnRight.removeClass("disabled");
            //如果左移的li个数为0，说明不能退了
            if(moved==0){
              $this.addClass("disabled");
            }
          }
        });
  
        //鼠标进入小图片切换中图片
        //先找到中图片<img
        var $mImg=$("#m-img");
        //查找右侧大图，随中图片一同更新
        var $divLg=$("#div-lg");
        //初始化中图片为pics中第一张图片的中图片版本
        $mImg.attr("src",result[0].mdimg);
        //同时初始化div-lg的背景图片
        $divLg.css("background-image","url("+result[0].lgimg+")");
        //事件代理/委托, 为ul绑定鼠标进入事件，只有鼠标进入li下的img元素时才能触发事件
        $ul.on(
          "mouseenter",
          "li>img",
          function(){
            //获得当前img
            var $img=$(this);
            //获得当前img的中图片路径
            var src=$img.attr("data-tar");
            //将md赋值给中图片的src属性
            //27行: <img id="m-img"
            $mImg.attr({src});
            //再获得大图片路径
            var src=$img.attr("data-lg");
            //设置大div的背景图片为src
            $divLg.css("background-image","url("+src+")");
          }
        )
  
        //鼠标进入中图片，显示半透明遮罩层
        //先查找半透明遮罩层
        var $mask=$("#mask");
        //获得上层充当保护层的玻璃板div
        var $superMask=$("#super-mask")
        //定义变量保存mask的大小:
        var maskSize=200;
        //事件绑定在上层玻璃板上，不会影响下层元素
        $superMask
        .mouseenter(function(){
          $mask.removeClass("d-none");
          $divLg.removeClass("d-none");
        })
        .mouseleave(function(){
          $mask.addClass("d-none");
          $divLg.addClass("d-none");
        })
        //当鼠标在super-mask上移动时，修改mask的位置
        .mousemove(function(e){
          var left=e.offsetX-maskSize/2;
          var top=e.offsetY-maskSize/2;
          //如果left<0，就固定在0，如果left>176，就固定在176
          if(left<0){
            left=0;
          }else if(left>215){
            left=215;
          }
          //top的规则同left
          if(top<0){
            top=0;
          }else if(top>215){
            top=215;
          }
          $mask.css({left,top});
          //作业：同时根据mask的left和top，修改$divLg的背景图片位置(background-position)
          $divLg.css("background-position",`${-left*4/2.15}px ${-top*4/2.15}px`)
        })
      }
    })
  }
)
  //在product_details.html结尾引入
  //<script src="js/header.js"
  //<script src="js/details.js"


//点击代替锚点三个位置
$(function(){
  $(".goumai").click(function(){
    // let scrollTop=$(window).scrollTop();
    // console.log(scrollTop);
    $("body,html").animate({scrollTop:645},500);
  })

  $(".shangping").click(function(){
    // let scrollTop=$(window).scrollTop();
     //console.log(scrollTop);
    $("body,html").animate({scrollTop:725},500);
  })

  $(".kehu").click(function(){
    // let scrollTop=$(window).scrollTop();
     //console.log(scrollTop);
    $("body,html").animate({scrollTop:11725},2000);
  })


})

/**文字的无限循环**/
$(function(){
 let speed=50;
   dimo2.innerHTML=dimo1.innerHTML
   function Marquee(){
   if(dimo2.offsetTop-dimo.scrollTop<=0)
   dimo.scrollTop-=dimo1.offsetHeight
   else{
   dimo.scrollTop++
     }
   }
   let MyMar=setInterval(Marquee,speed)
   dimo.onmouseover=function() {clearInterval(MyMar)}
   dimo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
})


/**一刷新就发送ajax请求客户评价的数据过来显示**/
$(function(){
    $.ajax({
      url:"http://127.0.0.1:8081/user/pingjia",
      type:"get",
      dataType:"json",
   }).then(function(res){
         let html="";
       for(var el of  res.data){
         html+=`
        <p class="d-flex justify-content-between flex-wrap swbk">
        <span class="ziti">设计：</span> <span class="xiaduqi">${el.sheji}</span>
        <span class="zwbj">服务：</span> <span class="xiaduqi">${el.fuwu}</span>
        <span class="zwbj">质量：</span> <span class="xiaduqi">${el.zhiliang}</span>
        <span class="zwbj">物流：</span> <span class="xiaduqi">${el.wuliu}</span>
        <span class="zwbj">电话：</span> <span class="xiaduqi">${el.dianhua}</span>
        <span class="zwbj">日期：</span> <span class="xiaduqi">${el.riqi}</span>
    </p>
    <p class="xwbk"> <span class="ziti">评价: </span> <span>${el.pingjia}</span> </p>`
    
       }
      $(".kongzhi").html(html);
   })
})

/**点击按钮发送ajax请求**/
$(function(){
    $(".anniu").on("click","[type=button]",function(){
          let $pno=$(this).val();
          $(this).addClass("btnbj").siblings().removeClass("btnbj");
          //console.log($pno)
          $.ajax({
            url:"http://127.0.0.1:8081/user/pingjia",
            type:"get",
            dataType:"json",
            data:{$pno},
          }).then(function(res){
       let html="";
    for(var el of  res.data){
      html+=`
      <p class="d-flex justify-content-between flex-wrap swbk">
      <span class="ziti">设计：</span> <span class="xiaduqi">${el.sheji}</span>
      <span class="zwbj">服务：</span> <span class="xiaduqi">${el.fuwu}</span>
      <span class="zwbj">质量：</span> <span class="xiaduqi">${el.zhiliang}</span>
      <span class="zwbj">物流：</span> <span class="xiaduqi">${el.wuliu}</span>
      <span class="zwbj">电话：</span> <span class="xiaduqi">${el.dianhua}</span>
      <span class="zwbj">日期：</span> <span class="xiaduqi">${el.riqi}</span>
  </p>
  <p class="xwbk"> <span class="ziti">评价: </span> <span>${el.pingjia}</span> </p>`
         }                                                     
     $(".kongzhi").html(html);
       })
    })
})




















