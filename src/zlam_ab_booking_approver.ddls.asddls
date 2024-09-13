
@EndUserText.label: 'My Travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZLAM_AB_BOOKING_APPROVER as projection on ZLAM_AB_BOOKING
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    LastChangedAt,
    /* Associations */
    _BookingStatus,
    _BookingSupplement: redirected to composition child ZLAM_AB_BOOKSUPPL_APPROVER,
    _Carrier,
    _Connection,
    _Customer,
    _Travel: redirected to parent ZLAM_AB_TRAVEL_APPROVER
}

