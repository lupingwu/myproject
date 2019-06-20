//DOM功能:
  //1. 查找触发事件的元素
  //2. 绑定事件处理函数
  //3. 查找要修改的元素
  //4. 修改元素
  $(function(){
    //1. 查找触发事件的元素
//查找data-man属性为tab的元素
/*$("[data-man=tab]").each(function(i,elem){
    elem.click(function(){

    })
})*/
    var tabs=document.body.querySelectorAll("[data-man=tab]");
    for(var tab of tabs){
        //2. 绑定事件处理函数
        tab.onclick=function(){
                var tab=this;
             //3. 查找要修改的元素
            var pai1=document.body.querySelector("div.paiming>div:nth-child(2)"); 
            var pai2=document.body.querySelector("div.paiming>div:nth-child(3)"); 
            var pai3=document.body.querySelector("div.paiming>div:nth-child(4)"); 
            var pai4=document.body.querySelector("div.paiming>div:nth-child(5)"); 
              //4. 修改元素
            pai1.style.display="none";
            pai2.style.display="none";
            pai3.style.display="none";
            pai4.style.display="none";
            //tab.setAttribute("style","color:#0ff;backgrouondColor:#dc3545");
            //tab.className="zgx";
            //获得当前tab对应div的id
            var id=tab.getAttribute("data-div");
             //id:"#content1"
            //用id找到对应的div，并设置其显示
            document.body.querySelector(id).style.display="block";
                    
        }
    }
      //单独做一个颜色的变化 利用冒泡绑定在父元素上
      $(".ysbh").on("click","[data-man=tab]",function(){
            let $liftys=$(this);
            $liftys.addClass("zgx1").siblings().removeClass("zgx1");
      })

});

//ajax请求轮播图
$(function(){
 $.ajax({
    url:'http://127.0.0.1:8081/golf',
    type:'get',
    dataType:'json',
    success: function(result1) {
       // console.log(result1);
        var html1=`     <div class="carouser-inner" >    
        <div class="carousel-item active">
              <a href="">
                  <img src="${result1[0].lg}" class="bigwidth" alt="#"/>
              </a>
          </div>
          <div class="carousel-item ">
              <a href="">
                  <img src="${result1[1].lg}" class="bigwidth" alt="#"/>
              </a>
          </div>
          <div class="carousel-item">
              <a href="">
                  <img src="${result1[2].lg}" class="bigwidth" alt="#"/>
              </a>
          </div>
          <div class="carousel-item">
              <a href="">
                  <img src="${result1[3].lg}" class="bigwidth" alt="#"/>
              </a>
          </div>
          <div class="carousel-item">
              <a href="">
                  <img src="${result1[4].lg}" class="bigwidth" alt="#"/>
              </a>
          </div>
          <div class="carousel-item">
              <a href="">
                  <img src="${result1[5].lg}" class="bigwidth" alt="#"/>
              </a>
          </div>
          <div class="carousel-item">
              <a href="">
                  <img src="${result1[6].lg}" class="bigwidth" alt="#"/>
              </a>
          </div>
          <div class="carousel-item">
              <a href="">
                  <img src="${result1[7].lg}" class="bigwidth" alt="#"/>
              </a>
          </div> 
          </div>
          <!--2.左右箭头 要自己重写样式-->
          <a href="#demo2" data-slide="next" class="carousel-control-next">
              <span class="carousel-control-next-icon"></span>
          </a>
          <a href="#demo2" data-slide="prev" class="carousel-control-prev">
              <span  class="carousel-control-prev-icon"></span>
          </a>
          <!--3.轮播指示符 小圆点要自己重写样式-->
          <ul class="carousel-indicators">
              <li data-target="#demo2" data-slide-to="0" class="active"></li>
              <li data-target="#demo2" data-slide-to="1" ></li>
              <li data-target="#demo2" data-slide-to="2"></li>
              <li data-target="#demo2" data-slide-to="3"></li>
              <li data-target="#demo2" data-slide-to="4"></li>
              <li data-target="#demo2" data-slide-to="5"></li>
              <li data-target="#demo2" data-slide-to="6"></li>
              <li data-target="#demo2" data-slide-to="7"></li>
          </ul>
          <!--无顺序关系--> `
var lunbo1=document.getElementById("demo2");            
lunbo1.innerHTML=html1;  
    }
  })


/*实现“省”和“市”的级联下拉列表*/
var cities=[
    [
      {"name":'深圳市',"value":101},
      {"name":'广州市',"value":102},
      {"name":'东莞市',"value":103},
      {"name":'惠州市',"value":104},
      {"name":'珠海市',"value":105},
      {"name":'中山市',"value":106},
      {"name":'河源市',"value":107},
      {"name":'韶关市',"value":108}
    ],
    [
      {"name":'南昌市',"value":201},
      {"name":'赣州市',"value":202},
      {"name":'吉安市',"value":203},
      {"name":'九江市',"value":204},
      {"name":'新余市',"value":205},
      {"name":'井冈山市',"value":206},
      {"name":'上饶市',"value":207},
      {"name":'景德镇市',"value":208},
      
    ],
    [
      {"name":'长沙市',"value":301},
      {"name":'衡阳市',"value":302},
      {"name":'株洲市',"value":303},
      {"name":'湘潭市',"value":304},
      {"name":'邵阳市',"value":305},
      {"name":'岳阳市',"value":306},
      {"name":'常德市',"value":307},
      {"name":'张家界市',"value":308}
    ],
    [
        {"name":'武汉市',"value":301},
        {"name":'黄石市',"value":302},
        {"name":'十堰市',"value":303},
        {"name":'宜昌市',"value":304},
        {"name":'襄阳市',"value":305},
        {"name":'鄂州市',"value":306},
        {"name":'荆州市',"value":307},
        {"name":'孝感市',"value":308}
      ],
      [
        {"name":'合肥市',"value":301},
        {"name":'芜湖市',"value":302},
        {"name":'蚌埠市',"value":303},
        {"name":'淮南市',"value":304},
        {"name":'马鞍山市',"value":305},
        {"name":'铜陵市',"value":306},
        {"name":'安庆市',"value":307},
        {"name":'黄山市',"value":308}
      ],
      [
        {"name":'杭州市',"value":301},
        {"name":'宁波市',"value":302},
        {"name":'温州市',"value":303},
        {"name":'嘉兴市',"value":304},
        {"name":'金华市',"value":305},
        {"name":'舟山市',"value":306},
        {"name":'台州市',"value":307},
        {"name":'丽水市',"value":308}
      ]
  ];
  
  //1. 选中省份列表中的一个省份，获得选中省份对应的子数组城市列表
  //查找触发事件的元素: name="provs"
  var selProvs=
   document.getElementsByName("provs")[0]
  //先查找第二个select备用
  var selCts=document.getElementsByName("cities")[0];
  //绑定事件处理函数
  //当selProvs的选中项改变时
  selProvs.onchange=function(){
    var selProvs=this;
    //获得当前选中项的下标位置:selectedIndex
    var i=selProvs.selectedIndex;
    //除非选中的不是第一项-请选择-时，才
    if(i>0){
      //获得当前省份对应的城市列表子数组
      var cts=cities[i-1];
      //2. 将子数组中的城市转为option加入到第二个select中
      //因为第二个select已经在页面上了，所以要添加多个平级option，应该先放在文档片段中
      var frag=
       document.createDocumentFragment()
      //在遍历之前，应该先添加一个<option>-请选择-，然后再添加有意义的城市内容
      frag.appendChild(
        new Option("-请选择城市-"));
      //遍历子数组中每个城市对象
      for(var c of cts){
        //每遍历一个城市对象，就创建一个option元素对象，并加入文档片段中，同时设置option的内容为当前城市名
        frag.appendChild(
          new Option(c.name,c.value));
      }
      //将整个文档片段加入第二个select中
      //坑: 在追加新option之前，应该先删除旧的所有option(清空selCts的内容)
      //selCts.innerHTML="";
      selCts.length=0;//了解
      selCts.appendChild(frag);
      //将第二个select显示出来(清除class)
      selCts.className="";
    }else{//如果用户选的是-请选择-
      //将第二个select隐藏，恢复成开始样子
      selCts.className="hide";
    }
  }


//左边固定栏的交互
 $(function(){ 
  let $divLift=$("#lift"),
  $floors=$(".floor");
$(window).scroll(function(){
  let scrollTop=$(window).scrollTop();
  
if(scrollTop>=300){
    $divLift.show();
    $floors.each(function(i,f){
       let $f=$(f),
       offsetTop=$f.offset().top;
        
        if(offsetTop<=scrollTop+innerHeight/2)
        $divLift.find(".lift_item:eq("+i+")")
            .addClass("lift_item_on")
            .siblings().removeClass("lift_item_on");
        })
           }else{
        $divLift.hide();
     }
  });
$divLift.children("ul").on("click","li",function(){
            let $li=$(this);
            let i=$li.index();
            let offsetTop=$($floors[i]).offset().top;
$("html,body").stop(true).animate({
    scrollTop: offsetTop
        },500);
    })
})


        //秒杀专场计时器  
     function antitime() {
        var now = new Date();
        var to = new Date('2019/9/30 20:20:10');
        //2. 拿到当前时间和过期时间之间的时间差（毫秒）
        var deltaTime = to - now; //到期时间和当前时间相差的毫秒数
        
        //如果超时了，就停止倒计时
        if (deltaTime <= 0) {
            //停止计时器
            window.clearInterval(timer);
            //停止执行下面的代码
            return;
    }
  	var s=deltaTime/1000;
		var h=parseInt(s%(3600*24)/3600);
		var m=parseInt(s%3600/60);
    var s=parseInt(s%60);
    var $parent=$(".qianggou");
		h>=10?h:h="0"+h;
		m>=10?m:m="0"+m;
		s>=10?s:s="0"+s;
		$parent.children("strong:eq(0)").html(h);
		$parent.children("strong:eq(1)").html(m);
    $parent.children("strong:eq(2)").html(s);

      }
	//秒杀专场计时器
  setInterval(()=>{antitime()},1000);
	




//底线触碰
$(window).scroll(function(){
    let clientHeight=$(this).height();
    let scrollTop=$(this).scrollTop();
    let scrollHeight=$(document).height();
    if(scrollTop+clientHeight==scrollHeight){
        alert("我是有底线的哦！");
    }
})

});











