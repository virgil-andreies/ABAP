interface ZIF_ZAVE_STUDENT_REP
  public .


  types:
    mtt_students TYPE STANDARD TABLE OF REF TO zave_cl_student_e WITH NON-UNIQUE DEFAULT KEY .

  methods GET_ALL_STUDENTS
    returning
      value(RT_STUDENTS) type MTT_STUDENTS .
  methods GET_STUDENT_BY_ID
    importing
      !IV_ID type ZAVE_STUD_ID
    returning
      value(RO_STUDENT) type ref to ZAVE_CL_STUDENT_E .
  methods CREATE_STUDENT
    importing
      !IS_STUDENT type ZAVE_S_STUD .
  methods UPDATE_STUDENT
    importing
      !IO_STUDENT type ref to ZAVE_CL_STUDENT_E .
  methods DELETE_STUDENT
    importing
      !IV_ID type ZAVE_STUD_ID .
endinterface.
