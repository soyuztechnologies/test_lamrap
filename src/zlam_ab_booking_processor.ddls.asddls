
@EndUserText.label: 'My Travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZLAM_AB_BOOKING_PROCESSOR as projection on ZLAM_AB_BOOKING
{
    key TravelId,
    key BookingId,
    BookingDate,
    @Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Customer',
        entity.element: 'CustomerID'
     }]
    CustomerId,
    @Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Carrier',
        entity.element: 'AirlineID'
     }]
    CarrierId,
    @Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Connection',
        entity.element: 'ConnectionID',
        additionalBinding: [
                            { localElement: 'CarrierId',
                              element: 'AirlineID' }
                           ]
     }]
    ConnectionId,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    LastChangedAt,
    /* Associations */
    _BookingStatus,
    _BookingSupplement: redirected to composition child ZLAM_AB_BOOKSUPPL_PROCESSOR,
    _Carrier,
    _Connection,
    _Customer,
    _Travel: redirected to parent ZLAM_AB_TRAVEL_PROCESSOR
}

