CLASS zcl_lab_02_product_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

 METHODS : set_product IMPORTING iv_product type string,
           set_creationdate IMPORTING iv_creationdate type d.

  PROTECTED SECTION.
  PRIVATE SECTION.

  data : Product type matnr,
         creation_date type zdate.

ENDCLASS.



CLASS ZCL_LAB_02_PRODUCT_0631 IMPLEMENTATION.


  METHOD set_creationdate.

    creation_date = iv_creationdate.

  ENDMETHOD.


  METHOD set_product.

    Product = iv_product.

  ENDMETHOD.
ENDCLASS.
