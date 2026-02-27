@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZCIT_LIBR22EC107'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_CIT_LIBR22EC107
  as select from ZCIT_LIBR22EC107
{
  key book_id as BookID,
  title as Title,
  author as Author,
  category as Category,
  rack_no as RackNo,
  published_year as PublishedYear,
  issue_date as IssueDate,
  language as Language,
  price as Price,
  edition as Edition,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency as Currency,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
