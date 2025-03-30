CLASS zcl_lab_61_travel_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_travel EXPORTING es_travel TYPE /dmo/travel.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_61_travel_0631 IMPLEMENTATION.
  METHOD get_travel.

    DATA : ls_travel    TYPE /dmo/travel,
           lv_travel_id TYPE /dmo/travel_id.

    lv_travel_id = '00000003'.

    SELECT SINGLE FROM /dmo/travel
    FIELDS *
    WHERE travel_id EQ @lv_travel_id
    INTO @es_travel.

    TEST-SEAM select_data.

      SELECT SINGLE FROM /dmo/travel
      FIELDS *
      WHERE travel_id EQ @lv_travel_id
      INTO @ls_travel.

    END-TEST-SEAM.

    IF lv_travel_id = '00000020'.
      es_travel = CORRESPONDING #( ls_travel ).
    ENDIF.

ENDMETHOD.

ENDCLASS.
