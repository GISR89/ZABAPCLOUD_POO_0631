CLASS zcl_lab_34_student_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: set_name IMPORTING VALUE(iv_name) TYPE string,
      get_name RETURNING VALUE(rv_name) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA name TYPE string.

ENDCLASS.

CLASS zcl_lab_34_student_0631 IMPLEMENTATION.
  METHOD get_name.

    rv_name = me->name.

  ENDMETHOD.

  METHOD set_name.

    me->name = iv_name.

  ENDMETHOD.

ENDCLASS.
