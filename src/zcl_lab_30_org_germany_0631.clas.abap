CLASS zcl_lab_30_org_germany_0631 DEFINITION INHERITING FROM zcl_lab_29_organization_0631
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_30_org_germany_0631 IMPLEMENTATION.
  METHOD get_location.

  rv_location = 'Germany'.

  ENDMETHOD.

ENDCLASS.
