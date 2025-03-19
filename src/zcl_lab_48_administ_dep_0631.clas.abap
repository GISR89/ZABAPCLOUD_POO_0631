CLASS zcl_lab_48_administ_dep_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA employee_id TYPE string.

    EVENTS payroll_paid EXPORTING VALUE(ev_log) TYPE string.

    METHODS notify_employee.

    METHODS constructor IMPORTING iv_employee_id TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_48_administ_dep_0631 IMPLEMENTATION.
  METHOD notify_employee.

    RAISE EVENT payroll_paid EXPORTING ev_log = me->employee_id.

  ENDMETHOD.

  METHOD constructor.

    me->employee_id = iv_employee_id.

  ENDMETHOD.

ENDCLASS.
