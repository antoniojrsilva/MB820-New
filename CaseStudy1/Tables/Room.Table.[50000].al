table 50000 Room
{
    Caption = 'Rooms';
    DataClassification = CustomerContent;

    fields
    {
        field(50000; "No."; Code[20])
        {
            Caption = 'Room No';
        }
        field(50010; Name; Text[50])
        {
            Caption = 'Room Name';
        }
        field(50020; Status; Enum RoomStatus)
        {
            Caption = 'Actual Status';
        }
        field(50030; Smoking; Boolean)
        {
            Caption = 'Smoking Room';
        }
        field(50040; Type; Enum RoomType)
        {
            Caption = 'Type of Room';
        }
        field(50050; Capacity; Integer)
        {
            Caption = 'Maximum Number of Persons';
        }
        field(50060; PriceClass; Code[10])
        {
            Caption = 'Price Class';
            TableRelation = RoomClass.RoomClass;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}