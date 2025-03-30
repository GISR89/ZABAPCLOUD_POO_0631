CLASS zcl_lab_73_model_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_flight_model IMPORTING iv_carrier_id TYPE /dmo/carrier_id.
    METHODS get_flight_model RETURNING VALUE(rt_flights) TYPE /dmo/t_flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mt_flights TYPE /dmo/t_flight.

ENDCLASS.

CLASS zcl_lab_73_model_0631 IMPLEMENTATION.
  METHOD get_flight_model.
    rt_flights = me->mt_flights.
  ENDMETHOD.

  METHOD set_flight_model.
    SELECT FROM /dmo/flight
           FIELDS *
           WHERE carrier_id EQ @iv_carrier_id
           INTO TABLE @me->mt_flights.
  ENDMETHOD.

ENDCLASS.
