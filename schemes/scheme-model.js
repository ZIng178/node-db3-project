const db= require ("../data/knexconnect")



function find(){
 return db('schemes')
 
}

function findById(id){
    return db('schemes').where({id}).first()
}

function  findSteps(scheme_id){
    return db("steps as p")
    .join('schemes as s', 'p.scheme_id', 's.id')
    .select ("p.id","s.scheme_name", "p.step_number","p.instructions")
    .where({scheme_id})
   }
   
function add(schemes){
    return db('schemes').insert(schemes)
}

function update(changes,id){
    return db('schemes')
    .where({id})
    .update(changes)
    
}

 function remove(id){
     return db('schemes')
     .where({id})
     .del()
     
 }

module.exports={
    find,
    findById,
    findSteps,
    add,
    update,
    remove
    }