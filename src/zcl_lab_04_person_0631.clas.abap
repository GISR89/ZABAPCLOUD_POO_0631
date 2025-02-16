CLASS zcl_lab_04_person_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS : set_age IMPORTING im_age TYPE i,
              get_age EXPORTING ex_age TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA age TYPE i.

ENDCLASS.



CLASS ZCL_LAB_04_PERSON_0631 IMPLEMENTATION.


  METHOD get_age.

    ex_age = age.

  ENDMETHOD.


  METHOD set_age.

    age = im_age.

  ENDMETHOD.
ENDCLASS.
