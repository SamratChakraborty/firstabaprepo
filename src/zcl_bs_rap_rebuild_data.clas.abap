CLASS zcl_bs_rap_rebuild_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    CLASS-METHODS:
            rebuild_data.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_bs_rap_rebuild_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
  zcl_bs_rap_rebuild_data=>rebuild_data(  ).
  ENDMETHOD.

  METHOD rebuild_data.
  DATA: lt_data TYPE SORTED TABLE OF zdskc_cname WITH UNIQUE KEY name.

  lt_data = VALUE #(  ( name = 'SAP'
        branch = 'Software'
        description = 'SAP SE is a German multinational software company based in Walldorf, Baden-Württemberg. It develops enterprise software to manage business operations and customer relations.' )
      ( name = 'Microsoft'
        branch = 'Software'
        description = 'Microsoft Corporation is an American multinational technology corporation producing computer software, consumer electronics, personal computers, and related services.' )
      ( name = 'BMW'
        branch = 'Automotive Industry'
        description = 'Bayerische Motoren Werke AG, abbreviated as BMW, is a German multinational manufacturer of luxury vehicles and motorcycles headquartered in Munich, Bavaria.' )
      ( name = 'Nestle'
        branch = 'Food'
        description = 'Nestlé S.A. is a Swiss multinational food and drink processing conglomerate corporation headquartered in Vevey, Vaud, Switzerland.' )
      ( name = 'Amazon'
        branch = 'Online Trade'
        description = 'Amazon.com, Inc. is an American multinational technology company focusing on e-commerce, cloud computing, online advertising, digital streaming, and artificial intelligence.' )
    ).

    INSERT zdskc_cname FROM TABLE @lt_data.
    COMMIT WORK.
  ENDMETHOD.

ENDCLASS.
