CLASS zcl_lab_06_elements_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES : BEGIN OF ty_elem_objects,
              class     TYPE string,
              instance  TYPE string,
              reference TYPE string,
            END OF ty_elem_objects.

  METHODS set_object IMPORTING ms_object type ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_06_ELEMENTS_0631 IMPLEMENTATION.


  METHOD set_object.


  ENDMETHOD.
ENDCLASS.
