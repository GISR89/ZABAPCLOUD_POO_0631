CLASS zcl_lab_28_logistics_0631 DEFINITION INHERITING FROM zcl_lab_27_factory_0631
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: prodution_line REDEFINITION,
             input_products REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_28_logistics_0631 IMPLEMENTATION.
  METHOD input_products.

rv_input = 'Input_Products'.

  ENDMETHOD.

  METHOD prodution_line.

 rv_production = 'Production_Line'.

  ENDMETHOD.

ENDCLASS.
