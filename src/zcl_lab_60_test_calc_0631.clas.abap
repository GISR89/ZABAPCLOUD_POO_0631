CLASS zcl_lab_60_test_calc_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.

    "! @testing zcl_lab_59_calculator_0631
    METHODS calculator_test FOR TESTING.

  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-METHODS class_setup.
    CLASS-METHODS class_teardown.

    METHODS setup.
    METHODS teardown.

    DATA mo_cut TYPE REF TO zcl_lab_59_calculator_0631.

ENDCLASS.

CLASS zcl_lab_60_test_calc_0631 IMPLEMENTATION.
  METHOD setup.
    mo_cut = NEW zcl_lab_59_calculator_0631( ).
  ENDMETHOD.

  METHOD calculator_test.
    "given
    DATA(lv_number_ut) = 4.
    DATA lv_result_ut TYPE i.
    "when
    mo_cut->sum_up( EXPORTING iv_number = lv_number_ut
                    IMPORTING ev_result = lv_result_ut ).
    "then
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_result_ut
        exp                  = 8 ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.

ENDCLASS.
