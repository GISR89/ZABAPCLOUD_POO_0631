CLASS zcl_lab_08_work_record_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS open_new_record IMPORTING iv_date       TYPE d
                                            iv_first_name TYPE string
                                            iv_last_name  TYPE string
                                            iv_surname    TYPE string OPTIONAL.

  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-DATA : date       TYPE d,
                 first_name TYPE string,
                 last_name  TYPE string,
                 surname    TYPE string.

ENDCLASS.

CLASS zcl_lab_08_work_record_0631 IMPLEMENTATION.
  METHOD open_new_record.

    date       = iv_date.
    first_name = iv_first_name.
    last_name  = iv_last_name.
    surname    = iv_surname.


  ENDMETHOD.

ENDCLASS.
