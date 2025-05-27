@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ITEMS'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_I_ITEMS_BRIS

 as projection on Z_R_ITEMS_BRIS
{
    key Pos,
    key Id,
    Name,
    Description,
    Releasedate,
    Discontinueddate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
    CurrencyCode,
    @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
    Height,
    @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
    Width,
    Depth,
    Quantity,
    Unitofmeasure,
    /* Associations */
    _HEADER: redirected to parent Z_I_HEADER_BRIS
}
