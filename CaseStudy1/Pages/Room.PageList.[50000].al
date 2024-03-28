page 50000 Room
{
    AdditionalSearchTerms = 'keys, chambre, zimmer';
    Caption = 'Room';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Room;
    Editable = false;

    PromotedActionCategories = 'New,Process,Report,Category';

    layout
    {
        area(Content)
        {
            field(RoomNo; Rec.RoomNo)
            {

            }
            field(RoomName; Rec.RoomName)
            {

            }
            field(Status; Rec.Status)
            {

            }
            field(Type; Rec.Type)
            {

            }
            field(Smoking; Rec.Smoking)
            {

            }
        }
    }

}