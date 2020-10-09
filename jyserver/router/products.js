const express=require('express');
const pool=require('../pool.js')
const r=express.Router();
/*类目菜单 */
r.get('/bnav',(req,res)=>{
    pool.query('select * from banner_nav',(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
/*轮播图接口*/
r.get('/carousel',(req,res)=>{
    pool.query('select * from jy_index_carousel',(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
r.get('/category',(req,res)=>{
    pool.query('select * from product_category',(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send('0');
        }
    })
});

r.get('/sel',(req,res)=>{
    let cid = req.query.cid;
    pool.query('select title,details,price,pic,pid from jy_index_product where category_id = ?',[cid],(err,result)=>{
        if (err) throw err;
        res.send(result);
    })
})

r.get('/tv',(req,res)=>{
    var _title=req.params.title;
    var _details=req.params.details;
    var _price=req.params.price;
    pool.query('select * from jy_index_product where category_id=1',(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send('0');
        }
    });
});

r.get('/',(req,res)=>{
    var kw = req.query.kw;
    // console.log(kw);
    let sql=`select * from jy_index_product where title like '%${kw}%'`;
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send('0');
        }
    })
})

module.exports=r;