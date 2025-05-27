@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'HEADER'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_R_HEADER_BRIS as select from zheader_bris
composition [0..*] of Z_R_ITEMS_BRIS as _ITEMS
{
    key id as Id,
    email as Email,
    firstname as Firstname,
    lastname as Lastname,
    country as Country,
    createon as Createon,
    deliverydate as Deliverydate,
    orderstatus as Orderstatus,
    imageurl as Imageurl,
    _ITEMS // Make association public
}
