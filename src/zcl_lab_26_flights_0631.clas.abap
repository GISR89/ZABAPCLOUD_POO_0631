CLASS zcl_lab_26_flights_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:  zif_lab_01_flight_0631,
      zif_lab_02_customer_0631.

    ALIASES: set_conn_id FOR zif_lab_01_flight_0631~set_conn_id,
             get_conn_id FOR zif_lab_01_flight_0631~get_conn_id,
             get_customer FOR zif_lab_02_customer_0631~get_customer.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_26_flights_0631 IMPLEMENTATION.

  METHOD set_conn_id.

    me->zif_lab_01_flight_0631~conn_id = iv_conn_id.

  ENDMETHOD.

  METHOD get_conn_id.

    ev_conn_id = me->zif_lab_01_flight_0631~conn_id.

  ENDMETHOD.

  METHOD zif_lab_01_flight_0631~group.

    SELECT FROM /dmo/airport
    FIELDS *
    WHERE airport_id EQ @iv_airport_id
    INTO @DATA(ls_airport).

      rs_airports = ls_airport.

    ENDSELECT.

  ENDMETHOD.

  METHOD get_customer.


    DATA ms_customer TYPE me->zif_lab_02_customer_0631~ty_cust_address.

    SELECT FROM /dmo/customer
    FIELDS first_name,last_name
    WHERE customer_id EQ @iv_customer_id
    INTO @ms_customer.

      rt_cust_address = ms_customer.

    ENDSELECT.



  ENDMETHOD.



ENDCLASS.
