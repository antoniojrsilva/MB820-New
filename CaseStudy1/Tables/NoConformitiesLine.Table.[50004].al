table 50004 NoConformitiesLine
{
    Caption = 'No Conformity Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(50000; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = NoConformitiesHeader."No.";
        }
        field(50001; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50002; ItemNo; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item."No.";
            trigger OnValidate()
            var
                Item: Record Item;
            begin
                if Item.Get(ItemNo) then
                    Description := Item.Description;
            end;
        }
        field(50003; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(50004; Qty; Decimal)
        {
            Caption = 'Quantity';
        }
        field(50005; NoConformityType; Enum NoConformityType)
        {
            Caption = 'No Conformity Type';
        }
    }
    keys
    {
        key(PK; "No.", "Line No.")
        {
            Clustered = true;
        }
    }
}
