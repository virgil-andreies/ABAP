interface ZAVE_IF_STUDENT_E
  public .


  methods GET_EMAIL
    returning
      value(RV_EMAIL) type ZAVE_STUD_EMAIL .
  methods GET_AVG_MARK
    returning
      value(RV_AVG_MARK) type ZAVE_STUD_AVG_MARK .
  methods GET_ELLIGIBLE
    returning
      value(RV_ELLIGIBLE) type BOOLE_D .
  methods GET_FIRST_NAME
    returning
      value(RV_FIRST_NAME) type ZAVE_STUD_FIRST_NAME .
  methods GET_LAST_NAME
    returning
      value(RV_LAST_NAME) type ZAVE_STUD_LAST_NAME .
  methods GET_PHONE_NUMBER .
  methods SET_ADDRESS .
  methods SET_AVG_MARK .
  methods SET_ELLIGIBLE .
  methods SET_EMAIL .
  methods SET_FIRST_NAME .
  methods SET_ID .
  methods SET_LAST_NAME .
  methods SET_PHONE_NUMBER .
endinterface.
