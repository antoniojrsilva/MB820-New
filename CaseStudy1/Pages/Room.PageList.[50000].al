page 50000 Room
{
    AdditionalSearchTerms = 'keys, chambre, zimmer';
    Caption = 'Room List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Room;
    CardPageId = RoomCard;
    Editable = false;

    PromotedActionCategories = 'New,Process,Report,Category';

    layout
    {
        area(Content)
        {
            repeater(Rec)
            {
                field(RoomNo; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(RoomName; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Smoking; Rec.Smoking)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}