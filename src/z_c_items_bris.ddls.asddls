@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ITEMS C'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true
@Search.searchable: true

define view entity Z_C_ITEMS_BRIS 
as projection on Z_R_ITEMS_BRIS
{
    key Pos,
    key Id,
    Name,
    Description,
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [{
         entity : {name: 'Z_R_ITEMS_BRIS',
                   element: 'Releasedate'},
                   useForValidation: true }]
    Releasedate,
    Discontinueddate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
    CurrencyCode,
    @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
    Height,
     @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
    Width,
    Depth,
    Quantity,
    Unitofmeasure,
    /* Associations */
    _HEADER: redirected to parent Z_C_HEADER_BRIS
}
