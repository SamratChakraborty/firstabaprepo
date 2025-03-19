@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface for ZDSKC_CNAME'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZCSKC_I_CNAME
  as select from zdskc_cname
{
  key name        as Name,
      branch      as Branch,
      description as Description
}
