CLASS zcl_lab_15_flight_price_0631 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS add_price IMPORTING iv_add_price  TYPE /dmo/flight.

    DATA mt_flights  TYPE TABLE OF /dmo/flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price_0631 IMPLEMENTATION.
  METHOD add_price.

    APPEND iv_add_price TO me->mt_flights.

  ENDMETHOD.

ENDCLASS.
