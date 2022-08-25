CLASS zcl_sone99_abap_types DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.


    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sone99_abap_types IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* comment/uncomment the following declarations and check the output
    DATA variable TYPE string.
* DATA variable TYPE i.
* DATA variable TYPE d.
* DATA variable TYPE c LENGTH 10.
* DATA variable TYPE n LENGTH 10.
* DATA variable TYPE p LENGTH 8 DECIMALS 2. " +/- 999.99

    DATA var_dict TYPE /dmo/agency_id.

    out->write( 'Result with Initial Value)' ).
    out->write( variable ).
    out->write( '---------' ).

    variable = '19891209.679'.

    out->write( 'Result with Value 19891109' ).
    out->write( variable ).
    out->write( '---------' ).

  ENDMETHOD.
ENDCLASS.
