using {
    cuid,
    managed
} from '@sap/cds/common';

namespace todoNamespace;

entity Notes : cuid {
    title     : String(100);
    date      : Date;
    text      : String;
    completed : Boolean;
    type      : Association to Type;
}

@cds.autoexpose
@readonly
entity Type {
    key ID   : Integer;
        type : String(15);
}
