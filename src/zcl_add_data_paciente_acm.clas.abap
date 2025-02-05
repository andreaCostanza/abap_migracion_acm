CLASS zcl_add_data_paciente_acm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_add_data_paciente_acm IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: ls_paciente TYPE zpaciente_acm.

    ls_paciente = VALUE #( id_paciente = 1 id_centro = 1 nombre_pat = 'Juan' apellido_pat = 'Pérez' poblacion = 'Madrid' provincia = 'Madrid' email = 'juan.perez@email.com' telefono = '600123456' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 2 id_centro = 2 nombre_pat = 'María' apellido_pat = 'López' poblacion = 'Barcelona' provincia = 'Barcelona' email = 'maria.lopez@email.com' telefono = '600234567' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 3 id_centro = 3 nombre_pat = 'Carlos' apellido_pat = 'García' poblacion = 'Valencia' provincia = 'Valencia' email = 'carlos.garcia@email.com' telefono = '600345678' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 4 id_centro = 4 nombre_pat = 'Ana' apellido_pat = 'Martínez' poblacion = 'Sevilla' provincia = 'Sevilla' email = 'ana.martinez@email.com' telefono = '600456789' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 5 id_centro = 5 nombre_pat = 'Luis' apellido_pat = 'Hernández' poblacion = 'Málaga' provincia = 'Málaga' email = 'luis.hernandez@email.com' telefono = '600567890' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 6 id_centro = 1 nombre_pat = 'Laura' apellido_pat = 'Gómez' poblacion = 'Granada' provincia = 'Granada' email = 'laura.gomez@email.com' telefono = '600678901' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 7 id_centro = 2 nombre_pat = 'Jorge' apellido_pat = 'Ruiz' poblacion = 'Bilbao' provincia = 'Vizcaya' email = 'jorge.ruiz@email.com' telefono = '600789012' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 8 id_centro = 3 nombre_pat = 'Carmen' apellido_pat = 'Sánchez' poblacion = 'Zaragoza' provincia = 'Zaragoza' email = 'carmen.sanchez@email.com' telefono = '600890123' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 9 id_centro = 4 nombre_pat = 'Miguel' apellido_pat = 'Ramírez' poblacion = 'Murcia' provincia = 'Murcia' email = 'miguel.ramirez@email.com' telefono = '600901234' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 10 id_centro = 5 nombre_pat = 'Sofía' apellido_pat = 'Jiménez' poblacion = 'Alicante' provincia = 'Alicante' email = 'sofia.jimenez@email.com' telefono = '600012345' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 11 id_centro = 1 nombre_pat = 'Alberto' apellido_pat = 'Moreno' poblacion = 'Córdoba' provincia = 'Córdoba' email = 'alberto.moreno@email.com' telefono = '600123456' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 12 id_centro = 2 nombre_pat = 'Teresa' apellido_pat = 'Ortega' poblacion = 'Valladolid' provincia = 'Valladolid' email = 'teresa.ortega@email.com' telefono = '600234567' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 13 id_centro = 3 nombre_pat = 'Hugo' apellido_pat = 'Ramos' poblacion = 'Salamanca' provincia = 'Salamanca' email = 'hugo.ramos@email.com' telefono = '600345678' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 14 id_centro = 4 nombre_pat = 'Elena' apellido_pat = 'Cruz' poblacion = 'Santander' provincia = 'Cantabria' email = 'elena.cruz@email.com' telefono = '600456789' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 15 id_centro = 5 nombre_pat = 'Roberto' apellido_pat = 'Flores' poblacion = 'Oviedo' provincia = 'Asturias' email = 'roberto.flores@email.com' telefono = '600567890' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 16 id_centro = 1 nombre_pat = 'Cristina' apellido_pat = 'Torres' poblacion = 'Toledo' provincia = 'Toledo' email = 'cristina.torres@email.com' telefono = '600678901' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 17 id_centro = 2 nombre_pat = 'David' apellido_pat = 'Ibáñez' poblacion = 'Pamplona' provincia = 'Navarra' email = 'david.ibanez@email.com' telefono = '600789012' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 18 id_centro = 3 nombre_pat = 'Marta' apellido_pat = 'Vega' poblacion = 'Logroño' provincia = 'La Rioja' email = 'marta.vega@email.com' telefono = '600890123' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 19 id_centro = 4 nombre_pat = 'Pablo' apellido_pat = 'Aguilar' poblacion = 'Burgos' provincia = 'Burgos' email = 'pablo.aguilar@email.com' telefono = '600901234' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    ls_paciente = VALUE #( id_paciente = 20 id_centro = 5 nombre_pat = 'Lucía' apellido_pat = 'Castro' poblacion = 'Segovia' provincia = 'Segovia' email = 'lucia.castro@email.com' telefono = '600012345' ).
    INSERT zpaciente_acm FROM @ls_paciente.

    COMMIT WORK.

  ENDMETHOD.
ENDCLASS.
