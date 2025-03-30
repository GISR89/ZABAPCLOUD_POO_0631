CLASS zcl_lab_58_date_analyzer_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: analyze_date RAISING zcx_lab_56_no_date_0631,
      analyze_format IMPORTING previous TYPE REF TO cx_root
                     RAISING   zcx_lab_57_form_unknown_0631.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_58_date_analyzer_0631 IMPLEMENTATION.
  METHOD analyze_date.

    RAISE EXCEPTION TYPE zcx_lab_56_no_date_0631.

  ENDMETHOD.

  METHOD analyze_format.

    RAISE EXCEPTION TYPE zcx_lab_57_form_unknown_0631
      EXPORTING
        previous = previous.

  ENDMETHOD.

ENDCLASS.
