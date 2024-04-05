table 50003 NoConformitiesHeader
{
    Caption = 'No Conformities Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(50001; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(50002; NCDate; Date)
        {
            Caption = 'Date No Conformitie';
        }
        field(50003; VendorNo; Code[20])
        {
            Caption = 'Vendor';
            TableRelation = Vendor."No.";
        }
        field(50004; Owner; Code[20])
        {
            Caption = 'Owner';
            TableRelation = Employee."No.";
        }
        field(50005; ReceiptNo; Code[20])
        {
            Caption = 'Receipt No.';
            TableRelation = "Purchase Header"."No.";
        }
        field(50006; ReceiptDate; Date)
        {
            Caption = 'Receipt Date';
            TableRelation = "Purchase Header"."Posting Date";
        }
        field(50007; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(50008; Status; Enum NoConformityStatus)
        {
            Caption = 'Status';
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