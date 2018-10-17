*&---------------------------------------------------------------------*
*& Report ZAVE_RUN_SINGLETON
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zave_run_singleton.

DATA(lo_b1) = zcl_load_balancer=>get_load_balancer( ).
DATA(lo_b2) = zcl_load_balancer=>get_load_balancer( ).
DATA(lo_b3) = zcl_load_balancer=>get_load_balancer( ).
DATA(lo_b4) = zcl_load_balancer=>get_load_balancer( ).

" Same instance
IF lo_b1 = lo_b2 AND lo_b2 = lo_b3 AND lo_b3 = lo_b4.
  WRITE: / 'Same instance ...'.
ENDIF.

DATA(lo_load_balancer) = zcl_load_balancer=>get_load_balancer( ).

DATA(i) = 0.

WHILE i < 15.
  DATA(lv_server) = lo_load_balancer->server( ).
  WRITE: / 'Dispatch request to: ', lv_server.
  ADD 1 TO i.
ENDWHILE.
