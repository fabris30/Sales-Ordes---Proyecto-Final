@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'HEADER'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true
@Search.searchable: true

define root view entity Z_C_HEADER_BRIS 
provider contract transactional_query
as projection on Z_R_HEADER_BRIS
{
    @Search.defaultSearchElement: true
    key Id,
    Email,
    @Search.defaultSearchElement: true
    Firstname,
    Lastname,
    Country,
    Createon,
    Deliverydate,
    Orderstatus,
    Imageurl,
    /* Associations */
    _ITEMS
}
