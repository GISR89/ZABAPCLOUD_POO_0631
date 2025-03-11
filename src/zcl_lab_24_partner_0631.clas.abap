CLASS zcl_lab_24_partner_0631 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_company_capital RETURNING VALUE(rv_capital) TYPE i .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_24_partner_0631 IMPLEMENTATION.
  METHOD get_company_capital.

    DATA(lo_company_capital) = NEW zcl_lab_23_company_0631( ).

   rv_capital = lo_company_capital->capital.


  ENDMETHOD.

ENDCLASS.
