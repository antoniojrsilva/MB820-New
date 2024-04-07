page 50009 "No Confirmities List"
{
    Caption = 'No Confirmities List';
    SourceTable = NoConformitiesHeader;
    PageType = List;
    CardPageId = "No Conformities Document Page";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(NoConformitiesHeader)
            {
                field("No."; Rec."No.")
                {
                }
                field("Description"; Rec.Description)
                {
                }
                field("Status"; Rec.Status)
                {
                }
                field("Assigned To"; Rec.Owner)
                {
                }
                field("Date"; Rec.NCDate)
                {
                }
            }
        }
    }
}