const sensor ={};

sensor.dht= (req, res, next) =>{
    req.getConnection((err,conn)=>{
     
            conn.query('SELECT * FROM datadht',(err,rows)=>{
                try {
                    console.log(rows)
                
                    const dht={data:rows}
                    res.header('Access-Control-Allow-Origin', '*');
                    res.json(dht)
                    
                } catch (error) {
                    next(err)
                }
            })
        
    });
  }

  module.exports=sensor