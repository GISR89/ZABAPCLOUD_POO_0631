CLASS zcl_lab_72_users_0631 DEFINITION INHERITING FROM zcl_lab_70_observer_0631
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA mv_notificacion TYPE string.
    METHODS: on_nuevo_articulo REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_72_users_0631 IMPLEMENTATION.
  METHOD on_nuevo_articulo.
    me->mv_notificacion = |Usuario notificado: Articulo....{ ev_titulo }|.
  ENDMETHOD.

ENDCLASS.
