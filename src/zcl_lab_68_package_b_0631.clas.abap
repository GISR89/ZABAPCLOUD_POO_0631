CLASS zcl_lab_68_package_b_0631 DEFINITION INHERITING FROM zcl_lab_66_travel_0631
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: transport_oneway REDEFINITION,
             day_one          REDEFINITION,
             day_two          REDEFINITION,
             day_three        REDEFINITION,
             transport_return REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_68_package_b_0631 IMPLEMENTATION.
  METHOD transport_oneway.
io_out->write( 'Bus - Ida' ).
  ENDMETHOD.

  METHOD day_one.
io_out->write( 'Visita museo bellas Artes' ).
  ENDMETHOD.

  METHOD day_two.
io_out->write( 'Visita museo arqueologia ' ).
  ENDMETHOD.

  METHOD day_three.
io_out->write( 'Visita palacio' ).
  ENDMETHOD.

  METHOD transport_return.
io_out->write( 'Bus - Regreso' ).
  ENDMETHOD.

ENDCLASS.
