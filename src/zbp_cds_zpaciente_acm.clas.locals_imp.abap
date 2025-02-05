CLASS lhc_zcds_zpaciente_acm DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zcds_zpaciente_acm RESULT result.
    METHODS checkfield FOR VALIDATE ON SAVE
      IMPORTING keys FOR zcds_zpaciente_acm~checkfield.

ENDCLASS.

CLASS lhc_zcds_zpaciente_acm IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD checkField.
    DATA read_keys TYPE TABLE FOR READ IMPORT  zcds_zpaciente_acm. "Global input parameter
*    DATA pacientes TYPE TABLE FOR READ RESULT zcds_zpaciente_acm.  "Input result parameter

    "Reads the selected row and dumps it into table pacientes
    read_keys = CORRESPONDING #( keys ).
*    READ ENTITIES OF zcds_zpaciente_acm IN LOCAL MODE
*      ENTITY zcds_zpaciente_acm
*      FIELDS ( id_paciente nombre_pat )
*      WITH read_keys
*      RESULT pacientes.

    "Loops all objects and manages the result, in this case selecting a single one
    LOOP AT read_keys INTO DATA(ls_paciente).
      SELECT SINGLE *  FROM zpaciente_acm
      WHERE id_paciente EQ @ls_paciente-id_paciente
      INTO @DATA(ls_centro_aux).

      IF sy-subrc EQ 0. "Forcing error to display a message

      "Message object created
        DATA(message) = me->new_message( id = 'ZMCL_MENSAJES_ACM'
                                         number = 001
                                         severity = ms-error ).

        "Creates object to display the message in the app
        DATA reported_record LIKE LINE OF reported-zcds_zpaciente_acm.
        reported_record-%msg = message.

        APPEND reported_record TO reported-zcds_zpaciente_acm.
        EXIT.

      ENDIF.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
