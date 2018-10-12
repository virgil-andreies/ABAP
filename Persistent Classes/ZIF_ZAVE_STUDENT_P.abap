interface ZIF_ZAVE_STUDENT_P
  public .


  methods GET_ID
    returning
      value(RV_ID) type ZAVE_STUD_ID .
  methods SET_ID
    importing
      !IV_ID type ZAVE_STUD_ID .
  methods GET_FIRST_NAME
    returning
      value(RV_FNAME) type ZAVE_STUD_FIRST_NAME .
  methods SET_FIRST_NAME
    importing
      !IV_FNAME type ZAVE_STUD_FIRST_NAME .
  methods GET_LAST_NAME
    returning
      value(RV_LAST_NAME) type ZAVE_STUD_LAST_NAME .
  methods SET_LAST_NAME
    importing
      !IV_LASTNAME type ZAVE_STUD_LAST_NAME .
  methods GET_EMAIL
    returning
      value(RV_EMAIL) type ZAVE_STUD_EMAIL .
  methods SET_EMAIL
    importing
      !IV_EMAIL type ZAVE_STUD_EMAIL .
  methods GET_ADDRESS
    returning
      value(RV_ADDRESS) type ZAVE_STUD_ADDRESS .
  methods SET_ADDRESS
    importing
      !IV_ADDRESS type ZAVE_STUD_ADDRESS .
  methods GET_PHONE_NUMBER
    returning
      value(RV_PHONE_NO) type ZAVE_STUD_PHONE .
  methods SET_PHONE_NUMBER
    importing
      !IV_PHONE_NO type ZAVE_STUD_PHONE .
  methods GET_AVG_MARK
    returning
      value(RV_AVG_MARK) type ZAVE_STUD_AVG_MARK .
  methods GET_ELLIGIBLE
    returning
      value(RF_ELLIGIBLE) type BOOLE_D .
  methods SET_AVG_MARK
    importing
      !IV_AVG_MARK type ZAVE_STUD_AVG_MARK .
  methods SET_ELLIGIBLE
    importing
      !IF_ELLIGIBLE type BOOLE_D .
endinterface.
