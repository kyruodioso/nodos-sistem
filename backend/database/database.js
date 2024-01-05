const mysql=require('mysql');

const conex= mysql.createConnection({
    host:'localhost',
    database:'nodos',
    user:'root',
    password:''
});


conex.connect(function(error){
    try {
        console.log('conexion exitosa')
    } catch (error) {
        throw error
    }
})

conex.query('SELECT * from datadht', function(error, results,fields){

    try {
        results.forEach(result=>{
            console.log(result);})
    } catch (error) {
        throw error;
    }

})
conex.end();

module.exports = conex
