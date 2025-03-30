*"* use this source file for your ABAP unit test classes
CLASS ltcl_calculator DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      calculator_test FOR TESTING RAISING cx_static_check.

    CLASS-METHODS class_setup.
    CLASS-METHODS class_teardown.

    METHODS setup.
    METHODS teardown.

    DATA mo_cut TYPE REF TO zcl_lab_59_calculator_0631.

ENDCLASS.


CLASS ltcl_calculator IMPLEMENTATION.

  METHOD calculator_test.

    "given
    DATA(lv_number_ut) = 4.
    DATA lv_result_ut TYPE i.
    "when
    mo_cut->sum_up( EXPORTING iv_number = lv_number_ut
                    IMPORTING ev_result = lv_result_ut ).
    "then
    IF   cl_abap_unit_assert=>assert_equals(
         EXPORTING
           act                  = lv_result_ut
           exp                  = 8 ) EQ abap_true.

      cl_abap_unit_assert=>fail( 'Sum process failed' ).

    ENDIF.


  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW zcl_lab_59_calculator_0631( ).
  ENDMETHOD.

  METHOD teardown.
 clear mo_cut.
  ENDMETHOD.

ENDCLASS.
