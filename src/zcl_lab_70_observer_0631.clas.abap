CLASS zcl_lab_70_observer_0631 DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS on_nuevo_articulo ABSTRACT
    for EVENT nuevo_articulo of zcl_lab_69_blog_0631 importing ev_titulo.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_70_observer_0631 IMPLEMENTATION.
ENDCLASS.
