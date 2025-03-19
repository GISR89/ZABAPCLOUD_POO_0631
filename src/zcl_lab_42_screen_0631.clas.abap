CLASS zcl_lab_42_screen_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA screen_type TYPE string.

    EVENTS touch_screen EXPORTING VALUE(ev_pos_horizontal) TYPE i
                                  VALUE(ev_pos_vertical)   TYPE i.

    METHODS element_select.
    METHODS constructor IMPORTING iv_screen_type TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_42_screen_0631 IMPLEMENTATION.
  METHOD element_select.

    RAISE EVENT touch_screen EXPORTING ev_pos_horizontal = 4
                                       ev_pos_vertical   = 8.

  ENDMETHOD.

  METHOD constructor.

    me->screen_type = iv_screen_type.

  ENDMETHOD.

ENDCLASS.
