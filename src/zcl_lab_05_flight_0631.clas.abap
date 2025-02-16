CLASS zcl_lab_05_flight_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS : get_flight IMPORTING im_carrier       TYPE string
                                   im_connection   TYPE string
                         RETURNING VALUE(rv_flight) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_05_FLIGHT_0631 IMPLEMENTATION.


  METHOD get_flight.

    SELECT SINGLE @abap_true
           FROM /dmo/flight
           WHERE carrier_id = @im_carrier
           AND   connection_id = @im_connection
           INTO @DATA(lv_exists).

      rv_flight = lv_exists.

  ENDMETHOD.
ENDCLASS.
