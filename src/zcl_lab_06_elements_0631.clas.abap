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

    CONSTANTS : BEGIN OF tc_constants,
                  constant_1 TYPE c LENGTH 2 VALUE 'AA',
                  constant_2 TYPE c LENGTH 2 VALUE 'BB',
                  constant_3 TYPE c LENGTH 2 VALUE 'CC',
                  constant_4 TYPE c LENGTH 2 VALUE 'DD',
                END OF tc_constants.

    DATA ms_object TYPE ty_elem_objects.

    METHODS set_object IMPORTING msi_object TYPE ty_elem_objects.

PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_LAB_06_ELEMENTS_0631 IMPLEMENTATION.


  METHOD set_object.

  ms_object =  msi_object.


  ENDMETHOD.
ENDCLASS.
