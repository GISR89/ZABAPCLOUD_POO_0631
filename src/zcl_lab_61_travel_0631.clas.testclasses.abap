*"* use this source file for your ABAP unit test classes
CLASS ltcl_test_inj DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.

  INTERFACES IF_ABAP_DB_WRITER PARTIALLY IMPLEMENTED.

  PRIVATE SECTION.
    METHODS:
      get_travel_test FOR TESTING RAISING cx_static_check.

    CLASS-METHODS class_setup.
    CLASS-METHODS class_teardown.

    METHODS setup.
    METHODS teardown.
    DATA mo_cut TYPE REF TO zcl_lab_61_travel_0631.

ENDCLASS.

CLASS ltcl_test_inj IMPLEMENTATION.

  METHOD  get_travel_test.

  ME->mo_cut->get_travel( importing es_travel = data(ls_travel) ).

    IF cl_abap_unit_assert=>assert_equals(
    EXPORTING act  = |{ ls_travel-travel_id }-{ ls_travel-currency_code }|
              exp  = '00000020-EUR' ) eq abap_true.
      cl_abap_unit_assert=>fail( 'Get travel process failed---zcl_lab_61_travel_0631' ).
    ENDIF.
  ENDMETHOD.

  METHOD class_setup.
  ENDMETHOD.

  METHOD class_teardown.
  ENDMETHOD.
  METHOD setup.
    me->mo_cut = NEW zcl_lab_61_travel_0631( ).

    TEST-INJECTION select_data.
      lv_travel_id = '00000020'.
      ls_travel-travel_id = lv_travel_id.
      ls_travel-currency_code = 'EUR'.
    END-TEST-INJECTION.
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

  METHOD if_abap_writer~write.

  ENDMETHOD.

ENDCLASS.
