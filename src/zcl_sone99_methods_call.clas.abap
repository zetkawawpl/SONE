CLASS zcl_sone99_methods_call DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sone99_methods_call IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: connection  TYPE REF TO lcl_connection,
          connections TYPE TABLE OF REF TO lcl_connection.

* First Instance
**********************************************************************
    connection = NEW #( ).

    TRY.
        connection->set_attributes(
          EXPORTING
            i_carrier_id    = 'LH'
            i_connection_id = '0400' ).
        APPEND connection TO connections.
      CATCH cx_abap_invalid_value.
        out->write( `Method call failed` ).
    ENDTRY.

* Second Instance
**********************************************************************
    connection = NEW #( ).

    TRY.
        connection->set_attributes(
          EXPORTING
            i_carrier_id    = 'AA'
            i_connection_id = '0417' ).
        APPEND connection TO connections.
      CATCH cx_abap_invalid_value.
        out->write( `Method call failed` ).
    ENDTRY.

* Third Instance
**********************************************************************
    connection = NEW #( ).

    TRY.
        connection->set_attributes(
          EXPORTING
            i_carrier_id    = 'SQ'
            i_connection_id = '0001' ).
        APPEND connection TO connections.
      CATCH cx_abap_invalid_value.
        out->write( `Method call failed` ).
    ENDTRY.

* Output
**********************************************************************

    LOOP AT connections INTO connection.
      out->write( connection->get_output( ) ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
