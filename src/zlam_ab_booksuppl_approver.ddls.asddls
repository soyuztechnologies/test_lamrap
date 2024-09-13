@EndUserText.label: 'My Travel APPROVER projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZLAM_AB_BOOKSUPPL_APPROVER 
    as projection on ZLAM_AB_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking: redirected to parent ZLAM_AB_BOOKING_APPROVER,
    _Travel: redirected to ZLAM_AB_TRAVEL_APPROVER
}
