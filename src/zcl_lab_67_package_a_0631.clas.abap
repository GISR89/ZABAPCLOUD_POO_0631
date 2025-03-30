CLASS zcl_lab_67_package_a_0631 DEFINITION INHERITING FROM zcl_lab_66_travel_0631
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

CLASS zcl_lab_67_package_a_0631 IMPLEMENTATION.
  METHOD transport_oneway.
io_out->write( 'Vuelo - Ida' ).
  ENDMETHOD.

  METHOD day_one.
io_out->write( 'Visita Palacio' ).
  ENDMETHOD.

  METHOD day_two.
io_out->write( 'Visita catedral' ).
  ENDMETHOD.

  METHOD day_three.
io_out->write( 'Visita Castillo' ).
  ENDMETHOD.

  METHOD transport_return.
io_out->write( 'Vuelo - Regreso' ).
  ENDMETHOD.

ENDCLASS.
