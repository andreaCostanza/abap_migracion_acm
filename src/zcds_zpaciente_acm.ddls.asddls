@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Entidad de la tabla paciente'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zcds_zpaciente_acm 
as select from zpaciente_acm
{
    key id_paciente as id_paciente,
    id_centro as id_centro,
    nombre_pat as nombre_pat,
    apellido_pat as apellido_pat,
    provincia as provincia,
    poblacion as poblacion,
    email as email,
    telefono as telefono,
    is_active as is_active,
    local_last_changed,
    last_changed,
    user_create,
    user_last_change
}
