CLASS zcl_lab_69_blog_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS articulo_publicado importing iv_titulo type string.
  METHODS get_articulo RETURNING VALUE(rv_titulo) type string.

  events nuevo_articulo exporting value(ev_titulo) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
  data lv_titulo_articulo  type string.
ENDCLASS.

CLASS zcl_lab_69_blog_0631 IMPLEMENTATION.
  METHOD articulo_publicado.
me->lv_titulo_articulo = iv_titulo.
raise event nuevo_articulo exporting ev_titulo = me->lv_titulo_articulo.
  ENDMETHOD.

  METHOD get_articulo.
rv_titulo = me->lv_titulo_articulo.
  ENDMETHOD.

ENDCLASS.
