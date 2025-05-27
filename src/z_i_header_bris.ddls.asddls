@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'HEADER'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_HEADER_BRIS
provider contract transactional_interface
  as projection on Z_R_HEADER_BRIS
{
  key Id,
      Email,
      Firstname,
      Lastname,
      Country,
      Createon,
      Deliverydate,
      Orderstatus,
      Imageurl,
      /* Associations */
      _ITEMS: redirected to composition child Z_I_ITEMS_BRIS
}
