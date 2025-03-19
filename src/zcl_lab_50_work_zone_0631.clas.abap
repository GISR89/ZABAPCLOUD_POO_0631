CLASS zcl_lab_50_work_zone_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_51_wz_friend_0631.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS set_work_zone EXPORTING VALUE(es_work_zone) TYPE ty_work_zone.

    DATA ms_work_zone TYPE ty_work_zone.

    DATA mo_helper TYPE REF TO lcl_helper.

ENDCLASS.


CLASS zcl_lab_50_work_zone_0631 IMPLEMENTATION.
  METHOD set_work_zone.

    es_work_zone = me->ms_work_zone.

  ENDMETHOD.
ENDCLASS.
