page 50002 RoomClassList
{
    Caption = 'Room Class List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = RoomClass;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(Rec)
            {
                field(RoomClass; Rec.RoomClass)
                {
                    ApplicationArea = All;
                }
                field(PricePerNight; Rec.PricePerNight)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("New Action")
            {
                ApplicationArea = All;
                Image = New;
                Promoted = true;
                PromotedCategory = Process;
                //RunObject = Report "Your Report";
                ToolTip = 'Run the new action';
            }
        }
    }
}