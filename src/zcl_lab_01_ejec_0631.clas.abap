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


*   "Eventos en orientación a objetos
*
*     "8. ALL INSTANCE
*
*    DATA(lo_administ_dep)  = NEW zcl_lab_48_administ_dep_0631( 'Empleado 1' ).
*    DATA(lo_administ_dep2) = NEW zcl_lab_48_administ_dep_0631( 'Empleado 2' ).
*    DATA(lo_administ_dep3) = NEW zcl_lab_48_administ_dep_0631( 'Empleado 3' ).
*
*    DATA(lo_employee) = NEW zcl_lab_49_employee_0631( ).
*
*    SET HANDLER lo_employee->on_payroll_paid FOR ALL INSTANCES.
*
*    lo_administ_dep->notify_employee( ).
*    out->write( lo_employee->log ).
*
*    lo_administ_dep2->notify_employee( ).
*    out->write( lo_employee->log ).
*
*    lo_administ_dep3->notify_employee( ).
*    out->write( lo_employee->log ).
*
*
*    "7. Eventos estáticos
*
*    SET HANDLER zcl_lab_47_customer_serv_0631=>on_new_call.
*    zcl_lab_46_mobile_operator_631=>assign_call( ).
*
*    out->write( zcl_lab_47_customer_serv_0631=>log ).
*
*    "6. Desactivar objeto manejador
*
*    DATA(lo_operanding_syst) = NEW zcl_lab_44_operating_syst_0631( ).
*    DATA(lo_chrome) = NEW zcl_lab_45_chrome_0631( ).

*
*    SET HANDLER lo_chrome->on_close_window FOR lo_operanding_syst ACTIVATION abap_false.
*
*    lo_operanding_syst->mouse_movement( ).
*
*    out->write( |{ lo_operanding_syst->mouse_movement( ) } - { lo_chrome->log }| ).
*
*    "5. Definir eventos en las interfaces
*
*    DATA(lo_operanding_syst) = NEW zcl_lab_44_operating_syst_0631( ).
*    DATA(lo_chrome) = NEW zcl_lab_45_chrome_0631( ).
*
*    SET HANDLER lo_chrome->on_close_window FOR lo_operanding_syst.
*
*    lo_operanding_syst->mouse_movement( ).
*
*    out->write( |{ lo_operanding_syst->mouse_movement( ) } - { lo_chrome->log }| ).
*
*    "3. Establecer referencia manejadora – EVENT HANDLER
*
*    DATA(lo_screen) = NEW zcl_lab_42_screen_0631( 'LED' ).
*    DATA(lo_navigation) = NEW zcl_lab_43_navigation_0631( ).
*
*    SET HANDLER lo_navigation->on_touch_screen FOR lo_screen.
*
*    lo_screen->element_select( ).
*
*    out->write( lo_navigation->log ).
**
*   "Eventos en orientación a objetos
*
**********************************************************************
*
*     "Polimorfismo, asociación y composición
*
*    "7. Asignar instancias a la clase genérica Object
*
*    DATA : go_object       TYPE REF TO object,
*           gv_method_name  TYPE string,
*           gv_headquarters TYPE string,
*           gv_valor_final  TYPE string.
*
*    go_object = NEW zcl_lab_41_organization_0631( ).
*
*    gv_method_name = 'SET_HEADQUARTERS'.
*
*    gv_headquarters = 'test headquarters'.
*
*    CALL METHOD go_object->(gv_method_name) EXPORTING iv_headquarters = gv_headquarters.
*
*    gv_method_name = 'GET_HEADQUARTERS'.
*
*    CALL METHOD go_object->(gv_method_name) RECEIVING rv_headquarters = gv_valor_final.
*
*    out->write( gv_valor_final ).
*
*    "6. Crear instancias de tipos distintos
*
*    DATA go_budget TYPE REF TO zcl_lab_39_budget_0631.
*
*    go_budget = NEW zcl_lab_40_actual_budget_0631( ).
*
*    out->write( go_budget->get_budget(  ) ).
*
*    "5. Múltiples referencias apuntando al mismo objeto
*
*    DATA : lo_price_1 TYPE REF TO zcl_lab_38_prod_price_0631,
*           lo_price_2 TYPE REF TO zcl_lab_38_prod_price_0631.
*
*    lo_price_1 = NEW #( ).
*    lo_price_2 = lo_price_1.
*
*    lo_price_2->price = '12345'.
*
*    out->write( lo_price_1->price ).
*    out->write( lo_price_2->price ).
*
*    "4. Composición
*
*    DATA(lo_screen) = NEW zcl_lab_37_screen_0631( ).
*    DATA(lo_phone) = NEW zcl_lab_36_phone_0631( lo_screen ).
*
*    lo_screen->set_screen_type( 'LCD' ).
*
*    out->write( lo_phone->get_phone( )->get__screen_type( ) ) .
*
*     "3. Asociación
*
*    DATA(lo_student) = NEW zcl_lab_34_student_0631( ).
*    DATA(lo_college) = NEW zcl_lab_35_college_0631( ).
*
*    lo_student->set_name( 'Maria' ).
*
*    lo_college->enroll_student( lo_student ).
*    out->write( lo_college->get_enroll_student( )->get_name( ) ).
*
*    " 2. Polimorfismo con interfaces
*
*    DATA: gt_employee        TYPE STANDARD TABLE OF REF TO zif_lab_04_employee_0631,
*          go_employee        TYPE REF TO zif_lab_04_employee_0631,
*          go_internal_empl   TYPE REF TO zcl_lab_32_internal_empl_0631,
*          go_expatriate_empl TYPE REF TO zcl_lab_33_expatriate_emp_0631.
*
*    go_internal_empl = NEW #( ).
*    APPEND go_internal_empl TO gt_employee.
*
*    go_expatriate_empl = NEW #( ).
*    APPEND go_expatriate_empl TO gt_employee.
*
*    LOOP AT gt_employee INTO go_employee.
*      out->write( go_employee->get_employees_count( ) ).
*    ENDLOOP.
*
*    "1. Polimorfismo con clases
*
*    DATA : gt_organization TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization_0631,
*           go_organization TYPE REF TO zcl_lab_29_organization_0631,
*           go_org_germany  TYPE REF TO zcl_lab_30_org_germany_0631,
*           go_org_france   TYPE REF TO zcl_lab_31_org_france_0631.
*
*    go_org_germany = NEW #( ).
*    APPEND go_org_germany TO gt_organization.
*
*    go_org_france = NEW #( ).
*    APPEND go_org_france TO gt_organization.
*
*    LOOP AT gt_organization INTO go_organization.
*      out->write( go_organization->get_location( ) ).
*    ENDLOOP.
*
*   "Polimorfismo, asociación y composición
*
**********************************************************************
*    "Interfaces y Clases Abstractas
*
*    "6. Clase abstracta
*
*    DATA(lo_logistics) = NEW zcl_lab_28_logistics_0631( ).
*
*    out->write( lo_logistics->input_products( ) ).
*    out->write( lo_logistics->prodution_line( ) ).
*    out->write( lo_logistics->merchandise_output(  ) ).
*
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
