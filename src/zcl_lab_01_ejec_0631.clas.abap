CLASS zcl_lab_01_ejec_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_01_EJEC_0631 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "5. Métodos de instancia y métodos estáticos

    DATA(lo_instance) = NEW zcl_lab_04_person_0631( ).

    lo_instance->set_age( 35 ).
    lo_instance->get_age(
      IMPORTING
        ex_age = DATA(lv_age) ).

    out->write( lv_age ).

    "6. Métodos funcionales

    DATA(lo_instance2) = NEW zcl_lab_05_flight_0631( ).


    out->write( lo_instance2->get_flight(
                  im_carrier     = 'AA'
                  im_connection = '0322'
                ) ).

    "7. Utilizar tipos de datos en clases

    DATA ls_object TYPE zcl_lab_06_elements_0631=>ty_elem_objects.



  ENDMETHOD.
ENDCLASS.
