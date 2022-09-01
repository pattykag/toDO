using {
    cuid,
    managed
} from '@sap/cds/common';

namespace todoNamespace;

entity ToDos : cuid {
    title     : String;
    todoDate  : Date;
    content   : String;
    completed : Boolean;
    category  : Association to Categories;
}

@cds.autoexpose
entity Categories {
    key ID       : String(2);
        category : String(15);
}
