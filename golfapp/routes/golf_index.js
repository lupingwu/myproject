const express=require('express');
 var router=express.Router();
 var pool=require('../pool.js');
 //轮播图查找
router.get('/',(req,res)=>{
   pool.query('select * from golf_ball_pic order by pid asc',[],(err,result1)=>{
    if(err) throw err;
    res.send(result1);

   });
   
});

router.get('/details',(req,res)=>{
   var fnid=req.query.lid;
   if(fnid!==undefined){
   pool.query('select * from golf_ball_details where fnid=? ',[fnid],(err,result)=>{
      if(err) throw err;
      
      res.send(result);

     })
   }
});



module.exports=router;



















