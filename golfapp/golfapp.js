//使用express构建web服务器 
const express=require('express');
const cors=require("cors");
/*引入路由模块*/
const userRouter=require('./routes/user');
const golfIndex=require('./routes/golf_index');
//使用body-parser中间件
const bodyParser=require('body-parser');
const session=require('express-session');
const server=express();
server.listen(8081);

server.use(session({
  secret: 'sessiontest',//与cookieParser中的一致
  resave: true,
  saveUninitialized:true
}));
//统一伪装跨域，之后不用再res.writeHead
server.use(cors({
  origin:"http://127.0.0.1:5502",
  credentials:true
}))
//托管静态资源到golf_public目录下
server.use(express.static('golf_public'));
server.use(bodyParser.urlencoded({
  extended:false
}));
/*使用路由器来管理路由*/
server.use('/user',userRouter);
server.use('/golf',golfIndex);














































































