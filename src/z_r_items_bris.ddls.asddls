@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ITEMS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_R_ITEMS_BRIS
  as select from zitems_bris
  association to parent Z_R_HEADER_BRIS as _HEADER
  on  $projection.Id = _HEADER.Id
{
  key pos              as Pos,
  key id               as Id,
      name             as Name,
      description      as Description,
      releasedate      as Releasedate,
      discontinueddate as Discontinueddate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price            as Price,
      currency_code    as CurrencyCode,
      @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
      height           as Height,
      @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
      width            as Width,
      depth            as Depth,
      quantity         as Quantity,
      unitofmeasure    as Unitofmeasure,
      _HEADER
}
