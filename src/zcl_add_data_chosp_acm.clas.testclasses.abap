*"* use this source file for your ABAP unit test classes
CLASS ltcl_test_carga_datos DEFINITION FOR TESTING
  RISK LEVEL HARMLESS
  DURATION SHORT.

  PRIVATE SECTION.
    DATA: lo_add_data TYPE REF TO zcl_add_data_chosp_acm. "Variables, structures and object declarations that are accessible to all methods in this section

    METHODS setup.
    METHODS test_insert_centros FOR TESTING.
ENDCLASS.

CLASS ltcl_test_carga_datos IMPLEMENTATION.

  " Configuración inicial antes de ejecutar las pruebas
  METHOD setup.
    CREATE OBJECT lo_add_data.
  ENDMETHOD.

  " Test para verificar que los centros se insertan correctamente
  METHOD test_insert_centros.
    DATA: lt_centros TYPE TABLE OF zcentro_hosp_acm,
          lv_out     TYPE REF TO if_oo_adt_classrun_out.

    " Ejecutar el método que carga datos
    lo_add_data->if_oo_adt_classrun~main( out = lv_out ).

    " Leer los centros insertados
    SELECT * FROM zcentro_hosp_acm INTO TABLE @lt_centros.

    " Verificar que hay registros insertados
    cl_abap_unit_assert=>assert_not_initial(
      act = lt_centros
      msg = 'Error: No se insertaron datos en ZCENTRO_HOSP_ACM'
    ).
  ENDMETHOD.

  " Test para verificar que los pacientes se insertan correctamente
*  METHOD test_insert_pacientes.
*    DATA: lt_pacientes TYPE TABLE OF zpaciente_mmn,
*          lv_out       TYPE REF TO if_oo_adt_classrun_out.
*
*    " Ejecutar el método que carga datos
*    lo_carga_datos->if_oo_adt_classrun~main( out = lv_out ).
*    " Ejecutar el método que carga datos
*    "lo_carga_datos->if_oo_adt_classrun~main( ).
*
*    " Leer los pacientes insertados
*    SELECT * FROM zpaciente_mmn INTO TABLE @lt_pacientes.
*
*    " Verificar que hay registros insertados
*    cl_abap_unit_assert=>assert_not_initial(
*      act = lt_pacientes
*      msg = 'Error: No se insertaron datos en ZPACIENTE_MMN'
*    ).
*  ENDMETHOD.

ENDCLASS.
