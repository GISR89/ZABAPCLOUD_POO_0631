CLASS zcl_lab_01_ejec_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

    "7. Utilizar tipos de datos en clases

*    DATA gs_object TYPE zcl_lab_06_elements_0631=>ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_0631 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.





    "Interfaces y Clases Abstractas

    "6. Clase abstracta

    DATA(lo_logistics) = NEW zcl_lab_28_logistics_0631( ).

    out->write( lo_logistics->input_products( ) ).
    out->write( lo_logistics->prodution_line( ) ).
    out->write( lo_logistics->merchandise_output(  ) ).

*    "4. Interfaces anidadas
*
*    DATA(lo_airport) = NEW zcl_lab_26_flights_0631( ).
*
*    out->write( lo_airport->zif_lab_01_flight_0631~group( 'FRA' ) ).
*
*    " 3. Implementación de múltiples interfaces
*
*    DATA(lo_customer) = NEW zcl_lab_26_flights_0631( ).
*
*    out->write( lo_customer->get_customer( '000014' ) ).
*
*    " 2. Llamadas a métodos de interfaz
*
*    DATA(lo_flights) = NEW zcl_lab_26_flights_0631( ).
*
*    lo_flights->set_conn_id( '2678' ).
*    out->write( lo_flights->get_conn_id( ) ).
*
*
*    "Interfaces y Clases Abstractas
*
**********************************************************************

*    "Herencia, Casting y Clase Amiga
*
*    "10. Herencia con clase amiga
*
*    DATA(lo_collaborator) = NEW zcl_lab_25_collaborator_0631( ).
*
*    out->write( lo_collaborator->get_capital( ) ).
*    " 9. Concepto Friends – Clase amiga
*
*    DATA(lo_partner) = NEW zcl_lab_24_partner_0631( ).
*
*    out->write( lo_partner->get_company_capital( ) ).
*  "8. Encapsulación de instancias
*
*   data(lo_classroom) = new zcl_lab_21_classroom_0631( ).
*    "5. Widening Cast
*
*    DATA(lo_animal) = NEW zcl_lab_18_animal_0631( ).
*    DATA(lo_lion) = NEW zcl_lab_19_lion_0631( ).
*
*    lo_animal = lo_lion.
*
*    TRY.
*        lo_lion ?= lo_animal.
*      CATCH cx_sy_move_cast_error.
*        out->write( 'casting error' ).
*        RETURN.
*    ENDTRY.
*
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
*    "4. Narrowing Cast
*
*    DATA(lo_animal) = NEW zcl_lab_18_animal_0631( ).
*    DATA(lo_lion) = NEW zcl_lab_19_lion_0631( ).
*
*    lo_animal = lo_lion.
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
*    " 3. Redefinición de métodos
*
*    DATA(lo_price) = NEW zcl_lab_15_flight_price_0631( ).
*    DATA(lo_price_discount) = NEW zcl_lab_16_price_discount_0631( ).
*    DATA(lo_price_super_disc) = NEW zcl_lab_17_super_discount_0631( ).
*
*    SELECT FROM /dmo/flight
*           FIELDS *
*           INTO @DATA(lt_price) UP TO 1 ROWs.
*
*
*      IF sy-subrc EQ 0.
*
*        lo_price->add_price( iv_add_price = lt_price ).
*        lo_price_discount->add_price( iv_add_price = lt_price ).
*        lo_price_super_disc->add_price( iv_add_price = lt_price ).
*
*
*        out->write( |Price : { lo_price->mt_flights[ 1 ]-price }| ).
*        out->write( |\n| ).
*
*        out->write( |Price descuento 10% : { lo_price_discount->mt_flights[ 1 ]-price }| ).
*        out->write( |\n| ).
*        out->write( |Price descuento 20%: { lo_price_super_disc->mt_flights[ 1 ]-price }| ).
*
*      ENDIF.
*
*ENDSELECT.
*
*   "2. Constructores con herencia
*    DATA(lo_view) = NEW zcl_lab_13_view_0631( iv_view_type = 'Logali' ).
*    DATA(lo_grid) = NEW zcl_lab_14_grid_0631( iv_view_type = 'Logali 2' iv_box = 'abap' ).
*
*
*    DATA(lo_architecture) = NEW zcl_lab_12_linux_0631( ).
*
*    lo_architecture->get_architecture( IMPORTING ev_architecture = DATA(lv_architecture) ).
*
*    out->write( |Clase hija : { lv_architecture }| ).
*
*    "Herencia, Casting y Clase Amiga
*
**********************************************************************


*    "laboratorio instancias
*
*    DATA(lo_log) = NEW zcl_lab_10_constructor_0631( ).
*
*    out->write( zcl_lab_10_constructor_0631=>log ).
*
*
*    "5. Métodos de instancia y métodos estáticos
*
*    DATA(lo_instance) = NEW zcl_lab_04_person_0631( ).
*
*    lo_instance->set_age( 35 ).
*    lo_instance->get_age(
*      IMPORTING
*        ex_age = DATA(lv_age) ).
*
*    out->write( lv_age ).
*    out->write( |\n| ).
*    "6. Métodos funcionales
*
*    DATA(lo_instance2) = NEW zcl_lab_05_flight_0631( ).
*
*
*    out->write( lo_instance2->get_flight(
*                  im_carrier     = 'AA'
*                  im_connection = '0322'
*                ) ).
*
*
*    "7. Utilizar tipos de datos en clases
*
*    DATA(lo_instance3) = NEW zcl_lab_06_elements_0631( ).
*
*    gs_object = VALUE #( class = '123'
*                         instance = 'ABC'
*                         reference = 'fgh' ).
*
*    lo_instance3->set_object( msi_object = gs_object ).
*
*    out->write( lo_instance3 ).
*    out->write( |\n| ).
*
*    "8. Constantes en clases
*
*    DATA(lv_constant) = zcl_lab_06_elements_0631=>tc_constants.
*
*    out->write( lv_constant ).
*    out->write( |\n| ).
*
*    "9. READ-ONLY Restringir Acceso Escritura
*
*    DATA(lo_instance4) = NEW zcl_lab_07_student_0631( ).
*
*    lo_instance4->set_birth_date( ).
*
*    out->write( lo_instance4->birth_date ).
*    out->write( |\n| ).
*   lo_instance4->birth_date = '20251010'.
*
*    "10. Parámetro opcional
*
*    DATA(lo_instance5) = NEW zcl_lab_08_work_record_0631( ).
*
*    lo_instance5->open_new_record( EXPORTING iv_date       = '20250220'
*                                             iv_first_name = 'Maria'
*                                             iv_last_name  = 'Lopez' ).
*
*
*    "11. Autorreferencia
*
*    DATA(lo_instance6) = NEW zcl_lab_09_account_0631( ).
*
*    lo_instance6->set_iban( iban = '12345647895' ).
*
*    lo_instance6->get_iban( IMPORTING iban = DATA(lv_iban) ).
*
*    out->write( |Iban: { lv_iban } | ).
*
*    "laboratorio instancias
**********************************************************************

  ENDMETHOD.
ENDCLASS.
