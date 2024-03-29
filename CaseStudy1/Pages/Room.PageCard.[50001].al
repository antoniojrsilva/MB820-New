page 50001 RoomCard
{
    Caption = 'Room Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Room;

    Layout
    {
        area(Content)
        {
            group(General)
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
                field(Smoking; Rec.Smoking)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Capacity; Rec.Capacity)
                {
                    ApplicationArea = All;
                }
                field(PriceClass; Rec.PriceClass)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}