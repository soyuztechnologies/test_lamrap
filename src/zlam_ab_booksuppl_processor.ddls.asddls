@EndUserText.label: 'My Travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZLAM_AB_BOOKSUPPL_PROCESSOR 
    as projection on ZLAM_AB_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    @Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Supplement',
        entity.element: 'SupplementID'
     }]
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking: redirected to parent ZLAM_AB_BOOKING_PROCESSOR,
    _Travel: redirected to ZLAM_AB_TRAVEL_PROCESSOR
}
