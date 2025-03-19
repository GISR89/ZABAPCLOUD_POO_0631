CLASS zcl_lab_44_operating_syst_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_05_browser_0631.

    METHODS mouse_movement RETURNING VALUE(rv_text) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_44_operating_syst_0631 IMPLEMENTATION.
  METHOD mouse_movement.

    rv_text = 'Event raise...'.

    RAISE EVENT zif_lab_05_browser_0631~close_window.

  ENDMETHOD.

ENDCLASS.
