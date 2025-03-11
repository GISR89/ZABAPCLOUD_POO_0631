CLASS zcl_lab_27_factory_0631 DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS merchandise_output RETURNING VALUE(rv_merchandise) TYPE string.

    METHODS: prodution_line ABSTRACT RETURNING VALUE(rv_production) TYPE string,
      input_products ABSTRACT RETURNING VALUE(rv_input)      TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_27_factory_0631 IMPLEMENTATION.
  METHOD merchandise_output.

    rv_merchandise = 'Merchandise'.

  ENDMETHOD.

ENDCLASS.
