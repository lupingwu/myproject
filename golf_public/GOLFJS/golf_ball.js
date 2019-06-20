$(function(){
    //单击第一张图片，切换下一张
			$(".imgg1")
      .click(function(){
        var $img=$(this);
        var n=$img.attr("alt");//获取alt属性的值n
        n<1014?n++:n=1011;
        $img.attr({src:`../img/${n}.jpg`,alt:n});//对象语法改多个属性
      })

    //单击第二张图片，切换下一张
    $(".imgg2")
    .click(function(){
      var $img=$(this);
      var n=$img.attr("alt");//获取alt属性的值n
      n<19?n++:n=16;
      $img.attr({src:`../img/qc${n}.jpg`,alt:n});//对象语法改多个属性
    })

    $(".my_big2").click(function(){/** 点击去结算变双态按钮**/
      let $btn1=$(this);
      //console.log($btn1)
      let $jie=$btn1.children();
     // console.log($jie)
      if(!$btn1.hasClass("bjys")){
            $btn1.addClass("bjys");
      }else{
            $btn1.removeClass("bjys");
      }
      if(!$jie.hasClass("ztys")){
        $jie.addClass("ztys");
      }else{
        $jie.removeClass("ztys");
      }
    })

  /*
  *
  *单击按钮实现购物车的加减功能
  * 
  * */
  $("[data-dian=wo]").click(function(){
   var $btn=$(this);
   var n=$btn.next().val();
   if( n>0){
      n--;
      $btn.next().val(n);
     }
  });
  $("[data-dian=me]").click(function(){
    var $btn=$(this);
    var n=$btn.prev().val();
    n++;
    $btn.prev().val(n);
  })

$(".cenda").hover(function(){
  $(".cenxiao").toggleClass("cenxiaoht")
})













})











