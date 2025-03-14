CLASS zcl_lab_37_screen_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: set_screen_type IMPORTING VALUE(iv_screen_type) TYPE string,
             get__screen_type RETURNING VALUE(rv_screen_type) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA screen_type TYPE string.

ENDCLASS.

CLASS zcl_lab_37_screen_0631 IMPLEMENTATION.
  METHOD set_screen_type.

    me->screen_type = iv_screen_type.

  ENDMETHOD.

  METHOD get__screen_type.
rv_screen_type = me->screen_type.
  ENDMETHOD.

ENDCLASS.
