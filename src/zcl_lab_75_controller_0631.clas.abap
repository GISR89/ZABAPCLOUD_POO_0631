CLASS zcl_lab_75_controller_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_model IMPORTING io_modelo       TYPE REF TO zcl_lab_73_model_0631.
    METHODS get_model RETURNING VALUE(ro_model) TYPE REF TO zcl_lab_73_model_0631.

    METHODS set_view IMPORTING io_view        TYPE REF TO zcl_lab_74_view_0631.
    METHODS get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_lab_74_view_0631.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA mo_model TYPE REF TO zcl_lab_73_model_0631.
    DATA mo_view  TYPE REF TO zcl_lab_74_view_0631.

ENDCLASS.

CLASS zcl_lab_75_controller_0631 IMPLEMENTATION.

  METHOD get_model.
  ro_model = me->mo_model.
  ENDMETHOD.

  METHOD get_view.
 ro_view = me->mo_view.
  ENDMETHOD.

  METHOD set_model.
 me->mo_model = io_modelo.
  ENDMETHOD.

  METHOD set_view.
 me->mo_view = io_view.
  ENDMETHOD.

ENDCLASS.
