CLASS zcl_lab_43_navigation_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA log TYPE string.

    METHODS on_touch_screen FOR EVENT touch_screen OF zcl_lab_42_screen_0631
      IMPORTING ev_pos_horizontal
                ev_pos_vertical
                sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_43_navigation_0631 IMPLEMENTATION.
  METHOD on_touch_screen.

    me->log = |The screen { sender->screen_type } was touched at positions { ev_pos_horizontal }-{ ev_pos_vertical }|.

  ENDMETHOD.

ENDCLASS.
