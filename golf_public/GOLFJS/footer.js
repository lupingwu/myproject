
$(function(){
  $.ajax({
    url:"footer.html",
    type:"get",
    success: function(html) {
       $(html).replaceAll("#footer");
       $(`<link rel="stylesheet"
       href="../GOLFCSS/footer.css"/>`)
         .appendTo("head");

           //包含页尾相关的所有代码
            
         
    }

  })
});















































