const express=require('express');
var router=express.Router();
var pool=require('../pool.js');
 
 
 //插入数据
router.post('/reg',(req,res)=>{
//	console.log(req.body);
	if(!req.body.uname){
	 res.send({code:401,msg:'uname required'});
	 return;
	}
	if(!req.body.upwd){
	  res.send({code:402,msg:'upwd required'});
	  return;
	}
    if(!req.body.email){
	  res.send({code:403,msg:'email required'});
	  return;
	}
	if(!req.body.phone){
	  res.send({code:404,msg:'phone required'});
	  return;
	}
	if(!req.body.gender){
	  res.send({code:404,msg:'gender required'});
	  return;
	}
	pool.query('INSERT INTO golf_user SET ?',[req.body],(err,result)=>{
	   	if(err) throw err;
	    if(result.affectedRows>0){
		res.send({code:1,msg:'register suc'});
		}
	});
});

// 登录   查询数据uid
router.post('/login',(req,res)=>{
   // console.log(req.body.uname,req.body.upwd);
    if(!req.body.uname){
	  res.send({code:401,msg:'uname required'});
	  return;
	}
    if(!req.body.upwd){
	  res.send({code:402,msg:'upwd required'});
	  return;
	}
    pool.query('select usid from golf_user where uname=? and upwd=?',[req.body.uname,req.body.upwd],(err,result)=>{
			//console.log(result[0].usid);
		 if(err) throw err;
		if(result.length>0){
			req.session.uid=result[0].usid;
	  	res.send({code:1,msg:'login suc',data:result[0].usid});
		  }else{
		res.send({code:-1,msg:'login err'});
		}
	});
});

/**获得客户评价的信息**/
router.get('/pingjia',(req,res)=>{
			let pno=req.query.$pno;
			//console.log(pno)
	    if(!pno){pno=1};
	  pool.query('select sheji,fuwu,zhiliang,wuliu,dianhua,riqi,pingjia from golf_khpj limit ?,?',[pno-1,5],(err,result)=>{
			if (err) throw err;
			if(result.length>0){
				res.send({code:1,msg:"查询成功",data:result});
			}
		})
})


//删除
/*router.get('/delete',function(req,res){
   //console.log(req.query); 
   if(!req.query.uid){
     res.send({code:401,msg:'uid required'});
	 return;
   }
   pool.query('delete from xz_user where uid=?',[req.query.uid],function(err,result){
    if(err) throw err;
	if(result.affectedRows>0){
	 res.send({code:200,msg:'delete suc'});
	     }else{
	res.send({code:301,msg:'delete err'});
	  }
   });
});
//查询
router.get('/detail',function(req,res){
  if(!req.query.uid){
    res.send({code:401,msg:'uid required'});
	return;
  }
  pool.query('select * from xz_user where uid=?',[req.query.uid],function(err,result){
	  if(err) throw err;
   res.send(result);
	});
});
//遍历批量验证是否为空        修改
router.post('/update',function(req,res){
  var num=400;
  var obj=req.body;
  for( var key in obj){
	num++;
    if(!obj[key]){
	 res.send({code:num,msg:key+'required'});
	  return;
	}
  }
  pool.query('update xz_user set email=?,phone=?,user_name=?,gender=? where uid=?',[obj.email,obj.phone,obj.user_name,obj.gender,obj.uid],function(err,result){
     if(err) throw err;
	  if(result.affectedRows>0){
	    res.send({code:200,msg:'update suc'});
	         }else{
	    res.send({code:301,msg:'update err'});
	  }
  });
});
//分页显示 查询
router.get('/list',function(req,res){
  var pno=req.query.pno;
  var count=req.query.count;
  if(!pno) pno=1;
  if(!count) count=2;
   pno=parseInt(pno);
   count=parseInt(count);
  var start=(pno-1)*count;
pool.query('select * from xz_user limit ?,?',[start,count],function(err,result){
  if(err) throw err;
   res.send(result);
});

});*/





module.exports=router;
































































