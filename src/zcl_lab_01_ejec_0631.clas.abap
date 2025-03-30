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



*    "Patrones de diseño
*    "5. Patrón de diseño MODEL-VIEW-CONTROLLER
*
*    DATA(lo_model) = NEW zcl_lab_73_model_0631(  ).
*    DATA(lo_view) = NEW zcl_lab_74_view_0631(  ).
*    DATA(lo_controller) = NEW zcl_lab_75_controller_0631(  ).
*
*    lo_controller->set_model( lo_model ).
*    lo_controller->get_model( )->set_flight_model( 'SQ' ).
*    lo_controller->set_view( lo_view ).
*
*    lo_controller->get_view(  )->renderer_flights( it_flights = lo_controller->get_model(  )->get_flight_model(  )  io_out     = out ).
*
*
*    "4. Patrón de diseño Observer
*
*    DATA(lo_blog) = NEW zcl_lab_69_blog_0631( ).
*    DATA(lo_administrator) = NEW zcl_lab_71_administrator_0631( ).
*    DATA(lo_users) = NEW zcl_lab_72_users_0631( ).
*
*    SET HANDLER lo_administrator->on_nuevo_articulo FOR lo_blog.
*    SET HANDLER lo_users->on_nuevo_articulo FOR lo_blog.
*
*    lo_blog->articulo_publicado( 'Primer Articulo Abap Cloud' ).
*    out->write( lo_blog->get_articulo( ) ).
*    out->write( lo_administrator->mv_notificacion ).
*    out->write( lo_users->mv_notificacion ).
*
*    "3. Patrón de diseño TEMPLATE METHOD
*
*    data(go_travel_a) = new zcl_lab_67_package_a_0631( ).
*    data(go_travel_b) = new zcl_lab_68_package_b_0631( ).
*
*      out->write( 'Travel package A' ).
*      go_travel_a->travel( out ).
*
*      out->write( cl_abap_char_utilities=>newline ).
*
*      out->write( 'Travel package B' ).
*      go_travel_b->travel( out ).
*
*    "2. Patrón de diseño FACTORY METHOD
*
*    DATA: go_file    TYPE REF TO zif_lab_06_file_0631,
*          go_factory TYPE REF TO zcl_lab_65_factory_0631.
*
*    go_factory = NEW #( ).
*    go_file = go_factory->create_file( 'Expediente A' ).
*    out->write( go_file->get_file_type( ) ).
*
*
*    "1. Patrón de diseño SINGLETON
*
*    DATA lo_context1 TYPE REF TO zcl_lab_62_context_0631.
*    DATA lo_context2 TYPE REF TO zcl_lab_62_context_0631.
*
*    lo_context1 = zcl_lab_62_context_0631=>get_instance( ).
*
*    WAIT UP TO 2 SECONDS.
*
*    lo_context2 = zcl_lab_62_context_0631=>get_instance( ).
*
*    out->write( lo_context1->mv_time ).
*    out->write( lo_context2->mv_time ).
*
*     "Patrones de diseño
**********************************************************************
*    "ABAP Unit Test
*
*    "6. Test-Injection
*
*    DATA lo_cut TYPE REF TO zcl_lab_61_travel_0631.
*
*    lo_cut = NEW #( ).
*
*    lo_cut->get_travel( IMPORTING es_travel = DATA(ls_travel) ).
*
*    out->write( |{ ls_travel-travel_id }-{ ls_travel-currency_code }| ).
*
*    "1. Crear clase global de test
*
*    DATA(lo_calculator) = NEW zcl_lab_59_calculator_0631( ).
*
*    lo_calculator->sum_up( EXPORTING iv_number = 5
*                           IMPORTING ev_result = DATA(lv_result) ).
*
*    out->write( lv_result ) .


    "ABAP Unit Test
**********************************************************************
*    "Excepciones
*
*    "9. Asignación de excepciones unas a otras
*
*    DATA: go_data_analyzer TYPE REF TO zcl_lab_58_date_analyzer_0631,
*          go_no_date       TYPE REF TO zcx_lab_56_no_date_0631,
*          go_form_unknown  TYPE REF TO zcx_lab_57_form_unknown_0631.
*
*    go_data_analyzer = NEW #( ).
*
*    TRY.
*        TRY.
*            go_data_analyzer->analyze_date( ).
*
*          CATCH zcx_lab_56_no_date_0631 INTO go_no_date.
*            go_data_analyzer->analyze_format( previous = go_no_date ).
*
*        ENDTRY.
*
*      CATCH zcx_lab_57_form_unknown_0631 INTO go_form_unknown.
*        out->write( go_form_unknown->get_text( ) ) .
*
*    ENDTRY.
*
*    "8. Implementación de excepciones reanudables
*
*    DATA: go_bank       TYPE REF TO zcl_lab_54_bank_0631,
*          gcx_exception TYPE REF TO cx_root.
*
*    go_bank = NEW #( ).
*
*    TRY.
*        go_bank->transfer( iv_iban = 'US95 4329 8765 4321' ).
*
*      CATCH BEFORE UNWIND zcx_lab_55_auth_iban_0631 INTO gcx_exception.
*
*        IF gcx_exception->is_resumable EQ abap_true.
*          RESUME.
*        ELSE.
*          out->write( 'Operación NO permitida' ) .
*        ENDIF.
*
*    ENDTRY.
*
*    TRY.
*        go_bank->transfer( iv_iban = 'ES95 4329 8765 4321' ).
*
*      CATCH BEFORE UNWIND zcx_lab_55_auth_iban_0631 INTO gcx_exception.
*
*        IF gcx_exception->is_resumable EQ abap_true.
*          RESUME.
*        ELSE.
*          out->write( 'Operación permitida' ) .
*        ENDIF.
*
*    ENDTRY.
*
*    "7. Estructura de control CLEANUP
*
*    DATA: lv_num1   TYPE i VALUE 10,
*          lv_num2   TYPE i,
*          lv_result TYPE i.
*
*    TRY.
*        TRY.
*
*            lv_result = lv_num1 + lv_num2.
*            lv_result = lv_num1 / lv_num2.
*            lv_result = lv_num1 - lv_num2.
*
*          CATCH zcx_lab_52_operations_0631 INTO DATA(lx_auth).
*            out->write( lx_auth->get_text( ) ).
*
*          CATCH cx_a4c_bc_exception.
*
*          CLEANUP INTO DATA(lx_cleanup).
*
*            out->write( |Resultado 1: { lv_result }| ).
*
*            out->write( lx_cleanup->get_text( ) ).
*
*        ENDTRY.
*
*      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
*        out->write( lx_zerodivide->get_text( ) ).
*
*        lv_num2 = 2.
*        RETRY.
*
*    ENDTRY.
*
*    out->write( |Resultado: { lv_result }| ).
*
*    "5. Estructura de control RETRY
*
*    DATA: lv_num1   TYPE i VALUE 10,
*          lv_num2   TYPE i,
*          lv_result TYPE i.
*
*    TRY.
*        lv_result = lv_num1 / lv_num2.
*
*      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
*        out->write( lx_zerodivide->get_text( ) ).
*
*        lv_num2 = 2.
*        RETRY.
*
*    ENDTRY.
*
*    out->write( |Resultado: { lv_result }| ).
*
*    "4. Estructura de control TRY-CATCH-ENDTRY
*
*    DATA(lo_check_user) = NEW zcl_lab_53_check_user_0631( ).
*
*    TRY.
*        lo_check_user->check_user( sy-uname ).
*      CATCH zcx_lab_52_operations_0631 INTO DATA(lx_auth).
*        out->write( lx_auth->get_text( ) ).
*    ENDTRY.
*
*    "Excepciones
**********************************************************************
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
*
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
*
*
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
