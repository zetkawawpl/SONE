CLASS zcl_sone99_arithmetic DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_SONE99_ARITHMETIC IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Declarations
**********************************************************************

    " comment/uncomment these line for different result types
    TYPES t_result TYPE p LENGTH 8 DECIMALS 2.
* TYPES t_result TYPE p LENGTH 8 DECIMALS 0.
* TYPES t_result TYPE i.

    DATA: result   TYPE t_result,
          result_i TYPE i.

* Calculations
**********************************************************************
    " comment/uncomment these lines for different calculations
    result = 2 + 3.
*    result = 2 - 3.
*    result = 2 * 3.
*    result = 2 / 3.
*    result = sqrt( 2 ).
*    result = ipow( base = 2 exp = 3 ).
*    result = ( 8 * 7 - 6 ) / ( 5 + 4 ).
*    result = 8 * 7 - 6 / 5 + 4.

    result_i = ( 1 / 4 ) * ipow( base = 2 exp = 2 ).

* Output
**********************************************************************
    out->write( result_i ).

  ENDMETHOD.
ENDCLASS.
