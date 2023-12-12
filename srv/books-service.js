const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    debugger;
    const{ Books } = this.entities

    this.after('READ',Books,function(data){

        const books = Array.isArray(data) ? data : [data];
        console.log("Working good for  u aevin")
        
        books.forEach((book)=>{
            if(book.stock == 0 ){
                book.criticality =1;
            }
            else if(book.stock <= 15 ) {
                book.criticality =2;
            }
            
            else  {
                book.criticality =3;}
        })
    })

})