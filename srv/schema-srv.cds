using {todoNamespace as my} from '../db/schema';

@(requires : 'authenticated-user')
service api {
    // @(restrict : [
    //     {
    //         grant : [
    //             'READ',
    //             'WRITE',
    //             'DELETE',
    //             'PATCH',
    //             'PUT'
    //         ],
    //         to    : 'admin'
    //     },
    //     {
    //         grant : 'READ',
    //         to    : 'user'
    //     }
    // ])
    entity Notes as projection on my.Notes;
}
