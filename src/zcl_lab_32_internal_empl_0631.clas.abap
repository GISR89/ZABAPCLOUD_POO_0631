CLASS zcl_lab_32_internal_empl_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee_0631.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_32_internal_empl_0631 IMPLEMENTATION.
  METHOD zif_lab_04_employee_0631~get_employees_count.

    rv_employees = '12345'.

  ENDMETHOD.

ENDCLASS.
