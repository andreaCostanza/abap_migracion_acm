CLASS zcl_add_data_chosp_acm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_add_data_chosp_acm IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: ls_chosp TYPE zcentro_hosp_acm,
          lv_id    TYPE int2.

    lv_id = 1.

    ls_chosp = VALUE #( id_centro = lv_id nombre_centro = 'HospLaPaz' poblacion = 'Madrid' provincia = 'Madrid' email = 'info@hosp.es' ).
    INSERT zcentro_hosp_acm FROM @ls_chosp.
    lv_id = lv_id + 1.

    ls_chosp = VALUE #( id_centro = lv_id nombre_centro = 'ClinBarc' poblacion = 'Barcelona' provincia = 'Barcelona' email = 'info@hosp.es' ).
    INSERT zcentro_hosp_acm FROM @ls_chosp.
    lv_id = lv_id + 1.

    ls_chosp = VALUE #( id_centro = lv_id nombre_centro = 'Hosp.Sev' poblacion = 'Sevilla' provincia = 'Sevilla' email = 'info@hosp.es' ).
    INSERT zcentro_hosp_acm FROM @ls_chosp.
    lv_id = lv_id + 1.

    ls_chosp = VALUE #( id_centro = lv_id nombre_centro = 'Mal.Clin' poblacion = 'Malaga' provincia = 'Malaga' email = 'info@hosp.es' ).
    INSERT zcentro_hosp_acm FROM @ls_chosp.
    lv_id = lv_id + 1.

    ls_chosp = VALUE #( id_centro = lv_id nombre_centro = 'HospVal' poblacion = 'Valencia' provincia = 'Valencia' email = 'info@hosp.es' ).
    INSERT zcentro_hosp_acm FROM @ls_chosp.
    lv_id = lv_id + 1.

*    COMMIT WORK.
*
*    IF sy-subrc NE 0.
*      out->write( 'ha habido un error' ).
*    ELSE.
*      out->write( 'todo bien' ).
*    ENDIF.

  ENDMETHOD.
ENDCLASS.
