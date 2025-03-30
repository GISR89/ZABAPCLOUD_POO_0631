CLASS zcl_lab_53_check_user_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS check_user IMPORTING iv_user TYPE syuname
                       RAISING   zcx_lab_52_operations_0631.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_53_check_user_0631 IMPLEMENTATION.
  METHOD check_user.

    IF sy-uname EQ 'CB9980000872'.

      RAISE EXCEPTION TYPE zcx_lab_52_operations_0631
        EXPORTING
          textid = zcx_lab_52_operations_0631=>no_access
*         previous =
          msgv1  = |{ sy-uname }|
          msgv2  = 'Check Access'
*         msgv3  =
*         msgv4  =
        .

    ENDIF.

  ENDMETHOD.

ENDCLASS.
