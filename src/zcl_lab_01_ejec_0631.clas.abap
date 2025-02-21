CLASS zcl_lab_01_ejec_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

    "7. Utilizar tipos de datos en clases

    DATA gs_object TYPE zcl_lab_06_elements_0631=>ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_0631 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "5. Métodos de instancia y métodos estáticos

    DATA(lo_instance) = NEW zcl_lab_04_person_0631( ).

    lo_instance->set_age( 35 ).
    lo_instance->get_age(
      IMPORTING
        ex_age = DATA(lv_age) ).

    out->write( lv_age ).
    out->write( |\n| ).
    "6. Métodos funcionales

    DATA(lo_instance2) = NEW zcl_lab_05_flight_0631( ).


    out->write( lo_instance2->get_flight(
                  im_carrier     = 'AA'
                  im_connection = '0322'
                ) ).


    "7. Utilizar tipos de datos en clases

    DATA(lo_instance3) = NEW zcl_lab_06_elements_0631( ).

    gs_object = VALUE #( class = '123'
                         instance = 'ABC'
                         reference = 'fgh' ).

    lo_instance3->set_object( msi_object = gs_object ).

    out->write( lo_instance3 ).
    out->write( |\n| ).

    "8. Constantes en clases

    DATA(lv_constant) = zcl_lab_06_elements_0631=>tc_constants.

    out->write( lv_constant ).
    out->write( |\n| ).

    "9. READ-ONLY Restringir Acceso Escritura

    DATA(lo_instance4) = NEW zcl_lab_07_student_0631( ).

    lo_instance4->set_birth_date( ).

    out->write( lo_instance4->birth_date ).
    out->write( |\n| ).
*   lo_instance4->birth_date = '20251010'.

    "10. Parámetro opcional

    DATA(lo_instance5) = NEW zcl_lab_08_work_record_0631( ).

    lo_instance5->open_new_record( EXPORTING iv_date       = '20250220'
                                             iv_first_name = 'Maria'
                                             iv_last_name  = 'Lopez' ).


    "11. Autorreferencia

    DATA(lo_instance6) = NEW zcl_lab_09_account_0631( ).

    lo_instance6->set_iban( iban = '12345647895' ).

    lo_instance6->get_iban( IMPORTING iban = DATA(lv_iban) ).

    out->write( |Iban: { lv_iban } | ).

  ENDMETHOD.
ENDCLASS.
