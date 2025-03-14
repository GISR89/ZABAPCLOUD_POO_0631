CLASS zcl_lab_36_phone_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS : constructor IMPORTING io_screen TYPE REF TO zcl_lab_37_screen_0631,
      get_phone RETURNING VALUE(ev_phone) TYPE REF TO zcl_lab_37_screen_0631.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA screen TYPE REF TO zcl_lab_37_screen_0631.

ENDCLASS.

CLASS zcl_lab_36_phone_0631 IMPLEMENTATION.
  METHOD constructor.

    me->screen = io_screen.

  ENDMETHOD.

  METHOD get_phone.

    ev_phone = me->screen.
  ENDMETHOD.


ENDCLASS.
