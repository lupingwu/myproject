//js/新建myquery.js
//先向jQuery的原型对象中添加一个公共的sum函数
jQuery.fn.sum=function(){
  //获得将来调用sum()的点前的jQuery查找结果集合
    var $elems=this;//已经是$("ul>li")
    var total=0;
    //遍历jQuery查找结果集合
    $elems.each(function(i,elem){
      //每遍历一个dom元素,就累加元素的内容
      total+=parseFloat($(elem).html());
    })
    //返回累加结果
    return total;
}
//这样调用
//var total=$("ul>li").sum();



























































































