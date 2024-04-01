page 50006 HotelHeadLines
{
    Caption = 'Hotel Head Lines';
    PageType = HeadlinePart;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(Caption1)
            {
                ShowCaption = false;
                Visible = true;
                field(Headline1; HeadLine1)
                {
                    Editable = false;
                }
            }
        }
    }

    var
        HeadLine1: Label 'This is the Head Line 1';
}