using { books as bd } from '../db/schema';

@path: 'srv/books'

service  BooksService {

    entity Books  @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'Viewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'Admin' ]
            }
      ]) as projection on bd.Books;
      annotate  Books with @odata.draft.enabled;
    entity Authors @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'Viewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'Admin' ]
            }
      ])as projection on bd.Authors;
      annotate Authors with @odata.draft.enabled;
      
    

}

