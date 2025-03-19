@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCSKC_C_CNAME
provider contract transactional_query
as projection on ZCSKC_I_CNAME
{
    key Name,
    Branch,
    Description
}
