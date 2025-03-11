CLASS zcl_lab_11_system_0631 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_architecture EXPORTING ev_architecture TYPE string.

    DATA architecture TYPE string VALUE '64BITS'.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_11_system_0631 IMPLEMENTATION.
  METHOD get_architecture.

    ev_architecture = architecture.

  ENDMETHOD.

ENDCLASS.
