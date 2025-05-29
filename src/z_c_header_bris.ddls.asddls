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
    @Consumption.valueHelpDefinition: [{
         entity : {name: 'Z_R_HEADER_BRIS',
                   element: 'Id'},
                   useForValidation: true }]
    key Id,
    Email,
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [{
         entity : {name: 'Z_R_HEADER_BRIS',
                   element: 'Firstname'},
                   useForValidation: true }]
    Firstname,
    Lastname,
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [{
         entity : {name: 'Z_R_HEADER_BRIS',
                   element: 'Country'},
                   useForValidation: true }]
    Country,
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [{
         entity : {name: 'Z_R_HEADER_BRIS',
                   element: 'Createon'},
                   useForValidation: true }]
    Createon,
    Deliverydate,
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [{
         entity : {name: 'Z_R_HEADER_BRIS',
                   element: 'Orderstatus'},
                   useForValidation: true }]
    Orderstatus,
    Imageurl,
    /* Associations */
    _ITEMS: redirected to composition child Z_C_ITEMS_BRIS
}
