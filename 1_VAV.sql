INSERT INTO [vav].[Menu]VALUES(1020,37,1,'Municipal Investment Bonds/ Local Government Bonds Analytics',N'城投债与地方政府债统计',NULL,NULL,1,71,1,1,1,1)
INSERT INTO [vav].[ReportDefinition]VALUES(71,'CityAndLocalBondAnalytics','bondinfo','VAV.Web.ViewModels.BondInfo.CityAndLocalBondViewModel',NULL,'City Investment Bond/Local Government Bond Analytics',N'城投债与地方政府债统计分析','BondInfo')
GO


INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'BondName',N'Bond Name',N'债券名称',NULL,N'text',NULL,1,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'IssueDate',N'Issue Date',N'发行日期',NULL,N'datetime',NULL,2,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'IssueAmount',N'Issue Amount(100M)',N'发行规模（亿）',NULL,N'decimal',NULL,3,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'OptionDescr',N'Option',N'期权方式',NULL,N'text',NULL,5,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'CouponClassDescr',N'Coupon Type',N'计息方式',NULL,N'text',NULL,6,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'PayFrequency',N'Coupon Frequency',N'付息频率',NULL,N'text',NULL,7,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'InterestRate',N'Coupon Rate(%)',N'票面利率(%)',NULL,N'decimal',NULL,8,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'Term',N'Term',N'发行期限',NULL,N'text',NULL,9,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'AnnoucementDate',N'Announcement Date',N'公告日期',NULL,N'datetime',NULL,10,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'OrigDatedDate',N'Value Date',N'起息日',NULL,N'datetime',NULL,11,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'MaturityDate',N'Maturity Date',N'到期日',NULL,N'datetime',NULL,12,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'Issuer',N'Issuer',N'发行人',NULL,N'text',NULL,13,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'DebtTypeDescr',N'Type',N'债务类别',NULL,N'text',NULL,14,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'AssetTypeDescr',N'Asset Type',N'资产类型',NULL,N'text',NULL,15,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'IssuerDomicile',N'Domicile of Issuer',N'发行人地区',NULL,N'text',NULL,16,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'RatingInfo',N'Rating',N'评级情况',NULL,N'text',NULL,17,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'IssuerInduSubSectorDescr',N'Issuer firm property',N'发行人行业',NULL,N'text',NULL,18,NULL,NULL)
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) values (71,N'IssueCountry',N'Issue Market',N'发行市场',NULL,N'text',NULL,19,NULL,NULL)
GO

--new column 
update  vav.reportcolumndefinition set header_text_cn = N'认购倍数',header_text_en = N'The Oversubscription Rate'
where column_name = 'MultiPurchase'
GO
INSERT INTO vav.reportcolumndefinition ([report_id],[column_name],[header_text_en],[header_text_cn],[display_format],[column_type],[is_sortable],[column_index],[column_style],[is_detail_column]) 
values (10000,N'TotalAppliedFor',N'The Subscription Amount(100M)',N'认购量（亿）',NULL,N'decimal',NULL,69,NULL,NULL)
GO


update vav.reportcolumndefinition set header_text_en = 'Volume of First-day(100M)' where header_text_en = 'Volume Of First-day(100M)' 
update vav.reportcolumndefinition set header_text_en = 'Basis of Floating Rate' where header_text_en = 'Basis Of Floating Rate' 
update vav.reportcolumndefinition set header_text_en = 'Underwritten Method' where header_text_en = 'Underwritten method' 
update vav.reportcolumndefinition set header_text_en = 'Guanrantor Firm Property' where header_text_en = 'Guanrantor firm property' 
update vav.reportcolumndefinition set header_text_en = 'Issurance Method' where header_text_en = 'Issurance method' 
update vav.reportcolumndefinition set header_text_en = 'Issue Expense Rate(%)' where header_text_en = 'Issue expense rate(%)' 
update vav.reportcolumndefinition set header_text_en = 'Closing Date of Issue' where header_text_en = 'Closing date of issue' 
update vav.reportcolumndefinition set header_text_en = 'Issuer Firm Property' where header_text_en = 'Issuer firm property' 
update vav.reportcolumndefinition set header_text_en = 'Issuer Province' where header_text_en = 'Issuer province' 
update vav.reportcolumndefinition set header_text_en = 'Issuer Industry' where header_text_en = 'Issuer industry' 
update vav.reportcolumndefinition set header_text_en = 'Guarantor Rating When Issued' where header_text_en = 'Guarantor rating when issued' 
update vav.reportcolumndefinition set header_text_en = 'Online Issurance Amount' where header_text_en = 'Online issurance amount' 
update vav.reportcolumndefinition set header_text_en = 'Online Oversubscription Code' where header_text_en = 'Online oversubscription code' 
update vav.reportcolumndefinition set header_text_en = 'Municipal Bond' where header_text_en = 'Municipal bond' 
update vav.reportcolumndefinition set header_text_en = 'Funge or Not' where header_text_en = 'Funge or not' 
update vav.reportcolumndefinition set header_text_en = 'Bond Code List' where header_text_en = 'Bond code list' 
update vav.reportcolumndefinition set header_text_en = 'Auction Method Code' where header_text_en = 'Auction method code' 
update vav.reportcolumndefinition set header_text_en = 'Bid Price' where header_text_en = 'Bid price' 
update vav.reportcolumndefinition set header_text_en = 'Bid Range' where header_text_en = 'Bid range' 
update vav.reportcolumndefinition set header_text_en = 'Registration Address' where header_text_en = 'Registration address' 
update vav.reportcolumndefinition set header_text_en = 'ID' where header_text_en = 'Id' 
update vav.reportcolumndefinition set header_text_en = 'Date to Listing' where header_text_en = 'Date To Listing' 

GO

-- Activity Events on homepage
  update [vav].[HomeModule] set displayorder=displayorder+1 where ismain=0 
  
  INSERT INTO [vav].[HomeModule] ( [NameCn],[NameEn],[IsMain],[IsValid],[DisplayOrder]) values ( N'活动动态',N'Activity Events',0,1,1)
  
