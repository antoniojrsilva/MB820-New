page 50007 "No Conformities Document Page"
{
    PageType = Document;
    SourceTable = NoConformitiesHeader;
    Caption = 'No Conformities Document';
    ApplicationArea = All;
    UsageCategory = Documents;


    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Importance = Standard;

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Date"; Rec.NCDate)
                {
                    ApplicationArea = All;
                }
                field(Owner; Rec.Owner)
                {
                    ApplicationArea = All;
                }
                field(ReceiptNo; Rec.ReceiptNo)
                {
                    ApplicationArea = All;
                }
                field(ReceiptDate; Rec.ReceiptDate)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
            part(NoConformitiesLines; "No Conformities Subform")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
            group(Comment)
            {
                field(Comments; PageComments)
                {
                    ExtendedDatatype = RichContent;
                    MultiLine = true;

                    trigger OnValidate()
                    begin
                        Rec.SaveRichText(PageComments);
                    end;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
        }
    }

    trigger OnAfterGetRecord()
    begin
        PageComments := Rec.GetRichText();
    end;

    var
        PageComments: Text;

}