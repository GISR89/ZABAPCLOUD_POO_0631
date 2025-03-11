INTERFACE zif_lab_03_airports_0631
  PUBLIC .

  METHODS: get_airports IMPORTING VALUE(iv_airport_id) TYPE string
                        RETURNING VALUE(rs_airports)   TYPE /dmo/airport.

ENDINTERFACE.
