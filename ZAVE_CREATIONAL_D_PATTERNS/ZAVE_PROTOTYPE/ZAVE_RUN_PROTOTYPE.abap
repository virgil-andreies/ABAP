*&---------------------------------------------------------------------*
*& Report ZAVE_RUN_PROTOTYPE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zave_run_prototype.

DATA: lo_color_manager TYPE REF TO zcl_color_manager,
      lo_color1        TYPE REF TO zcl_color,
      lo_color2        TYPE REF TO zcl_color,
      lo_color3        TYPE REF TO zcl_color.

lo_color_manager = NEW #( ).

" Initialize with standard colors
lo_color_manager->set_color(  iv_key   = 'red'
                              io_color = NEW zcl_color( iv_red = '255' iv_green = '0' iv_blue = '0') ).

lo_color_manager->set_color(  iv_key   = 'green'
                              io_color = NEW zcl_color( iv_red = '0' iv_green = '255' iv_blue = '0') ).

lo_color_manager->set_color(  iv_key   = 'blue'
                              io_color = NEW zcl_color( iv_red = '0' iv_green = '0' iv_blue = '255') ).

" User adds personalized colors

lo_color_manager->set_color(  iv_key   = 'angry'
                              io_color = NEW zcl_color( iv_red = '255' iv_green = '54' iv_blue = '0') ).

lo_color_manager->set_color(  iv_key   = 'peace'
                              io_color = NEW zcl_color( iv_red = '128' iv_green = '54' iv_blue = '0') ).

lo_color_manager->set_color(  iv_key   = 'flame'
                              io_color = NEW zcl_color( iv_red = '211' iv_green = '34' iv_blue = '20') ).

lo_color1 = CAST zcl_color( lo_color_manager->get_color( 'red' )->clone( ) ).
lo_color2 = CAST zcl_color( lo_color_manager->get_color( 'blue' )->clone( ) ).
lo_color3 = CAST zcl_color( lo_color_manager->get_color( 'green' )->clone( ) ).
