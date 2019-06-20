

// var vm=new Vue({
//   el:"#app",
//   data:{
//     uname:"",
//     upwd:"",
//   },
//   watch: {
    
//   },
//   updated() {
//     console.log(this.uname,this.upwd)
//   },
//   methods: {
//     btn(){
//       this.axios.post("http://127.0.0.1:8081/user/login",{
//         params:{
//          uname:this.uname,
//          upwd:this.upwd,
//         },
//       }).then(res=>{
//           if(res.data.code==1){
//             alert("恭喜你,登录成功");
//             req.cookie.uid=res.data.data;
//             location.replace("section.html");
            
//           }

//       })
//     },
//   },
// })


$(function(){
      $("#denglu").click(function(){
        let $btn=$(this),
      $una=$(".una").val(),
      $upw=$(".upw").val();
        $.ajax({
          type:"post",
          url:"http://127.0.0.1:8081/user/login",
          xhrFields: {//携带证书过去
            withCredentials: true
          },
          data:{
            uname:$una,
            upwd:$upw
          },
          dataType:"json",
          success: function(res) {
              //console.log(res);
              if(res.code==1){
                sessionStorage.setItem(//要分开保存，不能用对象语法报错
                      "uname",$una
              );
                sessionStorage.setItem(
                 "uid",res.data
              );
                alert("登录成功跳转回首页");
              setTimeout(function(){
                location.href="section.html";
              },1000);
            }
          }
        })
      })



})






















