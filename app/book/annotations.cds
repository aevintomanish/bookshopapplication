using from '../../srv/books-service';
using from '../../db/schema';
using from '@sap/cds/common';

annotate BooksService.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
        {
            $Type : 'UI.DataField',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
            Criticality : criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : author.name,
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },
    ]
);
annotate BooksService.Books with @(
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : price,
        },
    }
);

annotate BooksService.Books with @(
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Book OverView ',
            ID : 'BookOverView',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Book Details',
                    ID : 'BookDetails',
                    Target : '@UI.FieldGroup#BookDetails',
                }]
        }
    ]
);
annotate BooksService.Books with @(
    UI.FieldGroup #BookDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },{
                $Type : 'UI.DataField',
                Value : descr,
            },{
                $Type : 'UI.DataField',
                Value : stock,
                Criticality : criticality,
            },{
                $Type : 'UI.DataField',
                Value : price,
            },{
                $Type : 'UI.DataField',
                Value : currency_code,
            },{
                $Type : 'UI.DataField',
                Value : author.name,
            },],
    }
);
