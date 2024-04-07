page 50008 "No Conformities Subform"
{
    AutoSplitKey = true;
    Caption = 'Lines';
    DelayedInsert = true;
    LinksAllowed = false;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = NoConformitiesLine;

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                ShowCaption = false;

                field(ItemNo; Rec.ItemNo)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Qty; Rec.Qty)
                {
                    ApplicationArea = All;
                }
                field(NoConformityType; Rec.NoConformityType)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}