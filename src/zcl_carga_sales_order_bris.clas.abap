CLASS zcl_carga_sales_order_bris DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_carga_sales_order_bris IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_ITEMS   TYPE TABLE OF zitems_bris,
          lt_HEADERS TYPE TABLE OF zheader_bris.

    lt_ITEMS = VALUE #(

  ( pos = 1 id = '005638984K-1' name = 'Ergonomic Keyboard' description = 'Wireless keyboard with wrist' releasedate = '20141010' discontinueddate = '20221201' price = 50000 currency_code = 'USD' height = 12 width = 6 depth = 10 quantity = 8
unitofmeasure = 'CM' )
  ( pos = 2 id = '005638984K-1' name = 'Keyboard Wrist Rest' description = 'Gel padding for comfort' releasedate = '20151115' discontinueddate = '20230115' price = 15000 currency_code = 'USD' height = 3 width = 6 depth = 10 quantity = 12 unitofmeasure =
'CM' )
  ( pos = 3 id = '005638984K-1' name = 'Keyboard Cleaner Kit' description = 'Brush and cleaning solution' releasedate = '20170305' discontinueddate = '20230520' price = 8000 currency_code = 'USD' height = 5 width = 5 depth = 5 quantity = 25 unitofmeasure
= 'CM' )
  ( pos = 4 id = '005638984K-2' name = 'Mechanical Keyboard' description = 'RGB gaming keyboard with blue switches' releasedate = '20180515' discontinueddate = '20230630' price = 65000 currency_code = 'USD' height = 13 width = 5 depth = 8 quantity = 15
unitofmeasure = 'CM' )
  ( pos = 5 id = '005638984K-2' name = 'Keycap Set' description = 'Custom colored keycaps' releasedate = '20190620' discontinueddate = '20201109' price = 12000 currency_code = 'USD' height = 2 width = 5 depth = 5 quantity = 30 unitofmeasure = 'CM' )
  ( pos = 6 id = '005638984K-3' name = 'Compact Keyboard' description = 'Slim profile for space-saving workspaces' releasedate = '20200120' discontinueddate = '20201109' price = 35000 currency_code = 'USD' height = 10 width = 4 depth = 7 quantity = 23
unitofmeasure = 'CM' )
  ( pos = 7 id = '005638984K-3' name = 'Keyboard Dust Cover' description = 'Silicone protective cover' releasedate = '20200218' discontinueddate = '20231015' price = 5000 currency_code = 'USD' height = 1 width = 10 depth = 7 quantity = 50 unitofmeasure =
'CM' )
  ( pos = 8 id = '005638984K-3' name = 'USB Extension Cable' description = '1m extension for peripherals' releasedate = '20210710' discontinueddate = '20201109' price = 3000 currency_code = 'USD' height = 1 width = 1 depth = 100 quantity = 100
unitofmeasure = 'CM' )
  ( pos = 9 id = '005638984K-4' name = 'Conference Speaker' description = '360° sound for meeting rooms' releasedate = '20191111' discontinueddate = '20241111' price = 120000 currency_code = 'USD' height = 15 width = 15 depth = 10 quantity = 6
unitofmeasure = 'CM' )
  ( pos = 10 id = '005638984K-4' name = 'Speaker Mount' description = 'Wall mounting bracket' releasedate = '20200822' discontinueddate = '20201109' price = 18000 currency_code = 'USD' height = 5 width = 15 depth = 5 quantity = 10 unitofmeasure = 'CM' )
  ( pos = 11 id = '005638984K-5' name = 'Noise-Canceling Headset' description = 'Dual microphone for calls' releasedate = '20210305' discontinueddate = '20210822' price = 89000 currency_code = 'USD' height = 18 width = 8 depth = 5 quantity = 12
unitofmeasure = 'CM' )
  ( pos = 12 id = '005638984K-5' name = 'Headset Stand' description = 'Desktop organizer' releasedate = '20220412' discontinueddate = '20250412' price = 12000 currency_code = 'USD' height = 20 width = 10 depth = 10 quantity = 8 unitofmeasure = 'CM' )
  ( pos = 13 id = '005638984K-5' name = 'Replacement Ear Pads' description = 'Premium memory foam' releasedate = '20220930' discontinueddate = '20210825' price = 9000 currency_code = 'USD' height = 2 width = 8 depth = 8 quantity = 25 unitofmeasure = 'CM'
)
  ( pos = 14 id = '005638984K-6' name = 'Document Scanner' description = 'Auto-feed 50 pages per minute' releasedate = '20170730' discontinueddate = '20230730' price = 140000 currency_code = 'USD' height = 15 width = 30 depth = 20 quantity = 5
unitofmeasure = 'CM' )
  ( pos = 15 id = '005638984K-6' name = 'Scanner Maintenance Kit' description = 'Cleaning sheets and tools' releasedate = '20180815' discontinueddate = '20210820' price = 10000 currency_code = 'USD' height = 5 width = 10 depth = 5 quantity = 15
unitofmeasure = 'CM' )
  ( pos = 16 id = '005638984K-7' name = 'Portable Projector' description = 'HD resolution with built-in battery' releasedate = '20210922' discontinueddate = '20200819' price = 185000 currency_code = 'USD' height = 8 width = 12 depth = 8 quantity = 7
unitofmeasure = 'CM' )
  ( pos = 17 id = '005638984K-7' name = 'Projector Screen' description = '84" portable screen' releasedate = '20211015' discontinueddate = '20241015' price = 45000 currency_code = 'USD' height = 5 width = 84 depth = 5 quantity = 10 unitofmeasure = 'CM' )
  ( pos = 18 id = '005638984K-7' name = 'Projector Carry Case' description = 'Padded protective case' releasedate = '20220110' discontinueddate = '20200815' price = 18000 currency_code = 'USD' height = 10 width = 15 depth = 10 quantity = 12 unitofmeasure
= 'CM' )
  ( pos = 19 id = '005638984K-8' name = 'Wireless Presenter' description = 'Laser pointer with slide control' releasedate = '20200401' discontinueddate = '20200810' price = 25000 currency_code = 'USD' height = 2 width = 4 depth = 1 quantity = 18
unitofmeasure = 'CM' )
  ( pos = 20 id = '005638984K-8' name = 'Presenter Charging Dock' description = 'Dual charging station' releasedate = '20210520' discontinueddate = '20250520' price = 8000 currency_code = 'USD' height = 3 width = 10 depth = 5 quantity = 10 unitofmeasure
= 'CM' )
  ( pos = 21 id = '005638984K-9' name = 'Dual Monitor Stand' description = 'Holds two 24" displays' releasedate = '20200618' discontinueddate = '20210520' price = 75000 currency_code = 'USD' height = 25 width = 50 depth = 30 quantity = 9 unitofmeasure =
'CM' )
  ( pos = 22 id = '005638984K-9' name = 'Monitor Stand Tray' description = 'Attachment for accessories' releasedate = '20210905' discontinueddate = '20240905' price = 15000 currency_code = 'USD' height = 5 width = 20 depth = 15 quantity = 12
unitofmeasure = 'CM' )
  ( pos = 23 id = '005638984K-9' name = 'Cable Management Kit' description = 'Clips and sleeves' releasedate = '20211115' discontinueddate = '20210520' price = 8000 currency_code = 'USD' height = 2 width = 10 depth = 5 quantity = 30 unitofmeasure = 'CM'
)
  ( pos = 24 id = '005638984K-10' name = 'Monitor Cleaning Kit' description = 'Screen wipes and solution' releasedate = '20200210' discontinueddate = '20211115' price = 6000 currency_code = 'USD' height = 3 width = 8 depth = 3 quantity = 25 unitofmeasure
= 'CM' )
  ( pos = 25 id = '005638984K-10' name = 'Anti-Glare Filter' description = '24" monitor filter' releasedate = '20210312' discontinueddate = '20240312' price = 12000 currency_code = 'USD' height = 24 width = 1 depth = 24 quantity = 8 unitofmeasure = 'CM'
)
  ( pos = 26 id = '005638984K-18' name = 'Monitor Privacy Shield' description = 'Dual screen protector' releasedate = '20220518' discontinueddate = '20211115' price = 15000 currency_code = 'USD' height = 24 width = 5 depth = 24 quantity = 6 unitofmeasure
= 'CM' )
  ( pos = 27 id = '005638984K-17' name = 'Monitor Arm' description = 'Adjustable VESA mount' releasedate = '20220830' discontinueddate = '20220214' price = 35000 currency_code = 'USD' height = 30 width = 30 depth = 30 quantity = 5 unitofmeasure = 'CM' )
  ( pos = 28 id = '005638984K-19' name = 'Collaboration Whiteboard' description = 'Digital sticky' releasedate = '20220214' discontinueddate = '20250214' price = 250000 currency_code = 'USD' height = 120 width = 80 depth = 2 quantity = 4 unitofmeasure =
'CM' )
  ( pos = 29 id = '005638984K-20' name = 'Air Purifier' description = 'HEPA filter for offices' releasedate = '20210110' discontinueddate = '20220214' price = 180000 currency_code = 'USD' height = 50 width = 30 depth = 30 quantity = 3 unitofmeasure =
'CM' )
).
*    DELETE FROM zitems_bris.
*    INSERT zitems_bris FROM TABLE @lt_items.
*
*    IF sy-subrc EQ 0.
*      out->write( |ITEMS: { sy-dbcnt } registros insertados| ).
*    ENDIF.

    lt_HEADERS = VALUE #(
     ( id = '005638984K-1'  email = 'maria.gonzalez25@email.com'       firstname = 'MIGUEL'   lastname = 'SILVER' country = 'MOÑITOS'   createon = '20001211' deliverydate = '19990509' orderstatus = 2 imageurl = '' )
    ( id = '005638984K-2'  email = 'carlos_reyes84@mail.com'          firstname = 'JERO'     lastname = 'SILVER' country = 'New York'  createon = '20001213' deliverydate = '19990513' orderstatus = 3 imageurl = '' )
    ( id = '005638984K-3'  email = 'laura.martinez2023@example.com'   firstname = 'JUANPIS'  lastname = 'SILVER' country = 'New York'  createon = '20001214' deliverydate = '19990515' orderstatus = 4 imageurl = '' )
    ( id = '005638984K-4'  email = 'juan.perez7@correo.com'           firstname = 'CRIS'     lastname = 'SILVER' country = 'New York'  createon = '20001215' deliverydate = '19990517' orderstatus = 1 imageurl = '' )
    ( id = '005638984K-5'  email = 'sofia_rodriguez91@mail.com'       firstname = 'MELA'     lastname = 'SILVER' country = 'USA'       createon = '20001216' deliverydate = '19990519' orderstatus = 2 imageurl = '' )
    ( id = '005638984K-6'  email = 'pedro.hernandez42@email.com'      firstname = 'JUANDA'   lastname = 'SILVER' country = 'New York'  createon = '20001217' deliverydate = '19990521' orderstatus = 3 imageurl = '' )
    ( id = '005638984K-7'  email = 'ana.torres11@example.com'         firstname = 'SEBAS'    lastname = 'SILVER' country = 'New York'  createon = '20001218' deliverydate = '19990523' orderstatus = 4 imageurl = '' )
    ( id = '005638984K-8'  email = 'diego.lopez99@correo.com'         firstname = 'JUANA'    lastname = 'SILVER' country = 'New York'  createon = '20001219' deliverydate = '19990525' orderstatus = 1 imageurl = '' )
    ( id = '005638984K-9'  email = 'valeria.ramirez33@mail.com'       firstname = 'KARLA'    lastname = 'SILVER' country = 'New York'  createon = '20001220' deliverydate = '19990527' orderstatus = 2 imageurl = '' )
    ( id = '005638984K-10' email = 'jorge.sanchez5@email.com'         firstname = 'NATY'     lastname = 'SILVER' country = 'USA'       createon = '20001221' deliverydate = '19990529' orderstatus = 3 imageurl = '' )
    ( id = '005638984K-11' email = 'isabel.garcia18@example.com'       firstname = 'CARLOS'   lastname = 'SILVER' country = 'New York'  createon = '20001222' deliverydate = '19990531' orderstatus = 4 imageurl = '' )
    ( id = '005638984K-12' email = 'miguel.diaz76@correo.com'         firstname = 'CATA'     lastname = 'SILVER' country = 'New York'  createon = '20001223' deliverydate = '19990602' orderstatus = 1 imageurl = '' )
    ( id = '005638984K-13' email = 'elena.flores22@mail.com'           firstname = 'MILENA'   lastname = 'SILVER' country = 'New York'  createon = '20001224' deliverydate = '19990604' orderstatus = 2 imageurl = '' )
    ( id = '005638984K-14' email = 'ricardo.mendoza8@email.com'       firstname = 'CLAUDIA'  lastname = 'SILVER' country = 'New York'  createon = '20001225' deliverydate = '19990606' orderstatus = 3 imageurl = '' )
    ( id = '005638984K-15' email = 'adriana.cruz2024@example.com'     firstname = 'GABI'     lastname = 'SILVER' country = 'USA'       createon = '20001226' deliverydate = '19990608' orderstatus = 4 imageurl = '' )
    ( id = '005638984K-16' email = 'fernando.vargas50@correo.com'     firstname = 'HENRY'    lastname = 'SILVER' country = 'New York'  createon = '20001227' deliverydate = '19990610' orderstatus = 1 imageurl = '' )
    ( id = '005638984K-17' email = 'patricia.ortiz3@mail.com'         firstname = 'SUSANA'   lastname = 'SILVER' country = 'New York'  createon = '20001228' deliverydate = '19990612' orderstatus = 2 imageurl = '' )
    ( id = '005638984K-18' email = 'oscar.nunez12@email.com'          firstname = 'PAOLA'    lastname = 'SILVER' country = 'New York'  createon = '20001229' deliverydate = '19990614' orderstatus = 3 imageurl = '' )
    ( id = '005638984K-19' email = 'lucia.jimenez65@example.com'      firstname = 'KELLY'    lastname = 'SILVER' country = 'New York'  createon = '20001230' deliverydate = '19990616' orderstatus = 4 imageurl = '' )
    ( id = '005638984K-20' email = 'raul.gomez9@correo.com'           firstname = 'VIVIANA'  lastname = 'SILVER' country = 'USA'       createon = '20001231' deliverydate = '19990618' orderstatus = 1 imageurl = '' )
).
*   DELETE FROM zheader_bris.
*   INSERT zheader_bris FROM TABLE @lt_headers.
*
*   if sy-subrc eq 0.
*      out->write( |SALES: { sy-dbcnt } registros insertados| ).
*    endif.


  ENDMETHOD.

ENDCLASS.
