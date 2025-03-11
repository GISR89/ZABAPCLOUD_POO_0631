CLASS zcl_lab_25_collaborator_0631 DEFINITION INHERITING FROM zcl_lab_24_partner_0631
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_capital RETURNING VALUE(rv_cap) TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_25_collaborator_0631 IMPLEMENTATION.
  METHOD get_capital.

    DATA(lo_company_capital) = NEW zcl_lab_23_company_0631( ).

    rv_cap = lo_company_capital->capital.

  ENDMETHOD.

ENDCLASS.
