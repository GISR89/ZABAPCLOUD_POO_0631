CLASS zcl_lab_35_college_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: enroll_student IMPORTING ir_student_name TYPE REF TO zcl_lab_34_student_0631,
      get_enroll_student RETURNING VALUE(rr_student_name) TYPE REF TO zcl_lab_34_student_0631.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA student_name TYPE REF TO zcl_lab_34_student_0631.

ENDCLASS.



CLASS zcl_lab_35_college_0631 IMPLEMENTATION.
  METHOD enroll_student.

    me->student_name = ir_student_name.

  ENDMETHOD.

  METHOD get_enroll_student.

    rr_student_name = me->student_name.

  ENDMETHOD.

ENDCLASS.
