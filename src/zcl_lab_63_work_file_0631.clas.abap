CLASS zcl_lab_63_work_file_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_06_file_0631.
    ALIASES get_file_type FOR zif_lab_06_file_0631~get_file_type.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_63_work_file_0631 IMPLEMENTATION.
  METHOD zif_lab_06_file_0631~get_file_type.

    rv_file_type = 'Expediente A'.

      ENDMETHOD.

ENDCLASS.
