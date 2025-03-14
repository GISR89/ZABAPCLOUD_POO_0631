CLASS zcl_lab_40_actual_budget_0631 DEFINITION INHERITING FROM zcl_lab_39_budget_0631
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_budget REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_40_actual_budget_0631 IMPLEMENTATION.
  METHOD get_budget.
    rv_budget = 'zcl_lab_40_actual_budget_0631'.
  ENDMETHOD.

ENDCLASS.
