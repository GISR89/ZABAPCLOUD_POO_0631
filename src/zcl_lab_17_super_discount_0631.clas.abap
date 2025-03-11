CLASS zcl_lab_17_super_discount_0631 DEFINITION INHERITING FROM zcl_lab_16_price_discount_0631
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS add_price REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_17_super_discount_0631 IMPLEMENTATION.
  METHOD add_price.

    DATA ms_flights TYPE /dmo/flight.

    ms_flights = iv_add_price.

    ms_flights-price = ms_flights-price * 8 / 10.

    APPEND ms_flights TO me->mt_flights.



  ENDMETHOD.

ENDCLASS.
