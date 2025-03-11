CLASS zcl_lab_10_constructor_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor importing iv_log type string optional.

    CLASS-METHODS class_constructor.

    CLASS-DATA log TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_0631 IMPLEMENTATION.
  METHOD constructor.

    log = | { log } - instance constructor -->|.

  ENDMETHOD.

  METHOD class_constructor.

    log = | { log } - static constructor -->|.

  ENDMETHOD.


ENDCLASS.
