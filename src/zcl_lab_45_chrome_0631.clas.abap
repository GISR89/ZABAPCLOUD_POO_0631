CLASS zcl_lab_45_chrome_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  data log type string.

  METHODS on_close_window for event close_window
                of zif_lab_05_browser_0631.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_45_chrome_0631 IMPLEMENTATION.
  METHOD on_close_window.

me->log = 'The window was closed'.

  ENDMETHOD.

ENDCLASS.
