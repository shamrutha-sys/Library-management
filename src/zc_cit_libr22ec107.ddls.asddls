@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCIT_LIBR22EC107'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CIT_LIBR22EC107
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CIT_LIBR22EC107
  association [1..1] to ZR_CIT_LIBR22EC107 as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  Title,
  Author,
  Category,
  RackNo,
  PublishedYear,
  IssueDate,
  Language,
  Price,
  Edition,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
