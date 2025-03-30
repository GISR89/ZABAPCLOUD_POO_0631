CLASS zcl_lab_65_factory_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS create_file IMPORTING iv_file        TYPE string
                        RETURNING VALUE(ro_file) TYPE REF TO zif_lab_06_file_0631.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_65_factory_0631 IMPLEMENTATION.
  METHOD create_file.

    CASE iv_file .
      WHEN 'Expediente A'.
        ro_file = NEW zcl_lab_63_work_file_0631( ).
      WHEN 'Expediente B'.
        ro_file = NEW zcl_lab_64_supply_file_0631( ).
    ENDCASE.

  ENDMETHOD.

ENDCLASS.
