table 50001 RoomClass
{
    Caption = 'Class of Room';
    DataClassification = CustomerContent;

    fields
    {
        field(50000; RoomClass; Code[10])
        {
            Caption = 'Class of the Room';
        }
        field(50010; PricePerNight; Decimal)
        {
            Caption = 'Price per Nignt';
        }
    }
}