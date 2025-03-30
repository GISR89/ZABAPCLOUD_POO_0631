CLASS zcl_lab_59_calculator_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS sum_up IMPORTING iv_number TYPE i
                   EXPORTING ev_result TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_59_calculator_0631 IMPLEMENTATION.
  METHOD sum_up.

    DATA(lv_number) = iv_number.

    ev_result = lv_number + 4.

  ENDMETHOD.

ENDCLASS.
