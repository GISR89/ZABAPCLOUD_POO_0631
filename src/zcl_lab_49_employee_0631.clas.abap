CLASS zcl_lab_49_employee_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA log TYPE string.

    METHODS on_payroll_paid FOR EVENT payroll_paid OF zcl_lab_48_administ_dep_0631
      IMPORTING ev_log.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_49_employee_0631 IMPLEMENTATION.
  METHOD on_payroll_paid.

    me->log = |payroll paid : { ev_log }|.

  ENDMETHOD.

ENDCLASS.
