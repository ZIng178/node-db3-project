const db= require ("../data/knexconnect")

module.exports={
find,
findById,

}

function find(){
 return db('schemes')
 
}

function findById(id){
    db('schemes').where({id}).first()
}