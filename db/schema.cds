namespace books;

using {managed,cuid,Currency  } from '@sap/cds/common';

entity Books : managed, cuid{

    @title : 'Title of the book'
    title : String;

    @title : 'Description'
    descr: String;

    @title : 'Stock'
    stock : Integer;

    @title : 'Price'
    price : Decimal;

    @title : 'Currency'
    currency : Currency;   

    criticality : Integer;

    author : Association to one Authors ;

    
}


entity Authors : managed,cuid {
    @title :'Author name'
    name : String;
    
}
