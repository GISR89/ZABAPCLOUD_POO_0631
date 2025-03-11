INTERFACE zif_lab_01_flight_0631
  PUBLIC .

  INTERFACES zif_lab_03_airports_0631.

  ALIASES group for zif_lab_03_airports_0631~get_airports.

  METHODS: set_conn_id IMPORTING iv_conn_id TYPE string,
    get_conn_id RETURNING VALUE(ev_conn_id) TYPE string.

  CLASS-DATA comp_id TYPE string.

  DATA conn_id TYPE string.

ENDINTERFACE.
