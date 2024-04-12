table 50003 NoConformitiesHeader
{
    Caption = 'No Conformities Header';
    DataCaptionFields = "No.";
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
            InitValue = Open;
        }
        field(50009; Comments; Blob)
        {
            Caption = 'Comments';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    procedure AssistEdit(OldNoConformityHeader: Record NoConformitiesHeader) Result: Boolean
    var
        NoConformitiesHeader: Record NoConformitiesHeader;
        NoSeries: Codeunit "No. Series";
        InventorySetup: Record "Inventory Setup";
        IsHandled: Boolean;
        NoSerieChoose: Code[20];
    begin
        IsHandled := false;
        //TODO: OnBeforeAssistEdit(Rec, OldNoConformityHeader, IsHandled)
        If IsHandled then
            exit;
        NoConformitiesHeader.Copy(Rec);
        InventorySetup.Get();
        NoSeries.LookupRelatedNoSeries(InventorySetup.NoConformitiesSeries, InventorySetup.NoConformitiesSeries, NoSerieChoose);
        NoConformitiesHeader."No." := NoSeries.GetNextNo(NoSerieChoose);
        Rec := NoConformitiesHeader;
        //TODO: OnAfterAssistEdit(Rec, OldNoConformityHeader, IsHandled)
        exit(true);
    end;

    procedure GetRichText(): Text
    var
        IStream: InStream;
        TextValue: Text;
    begin
        Rec.CalcFields(Rec.Comments);
        Rec.Comments.CreateInStream(IStream);
        IStream.ReadText(TextValue);
        exit(TextValue)
    end;

    procedure SaveRichText(RichText: Text)
    var
        OStream: OutStream;
    begin
        Rec.Comments.CreateOutStream(OStream);
        OStream.WriteText(RichText);
        Rec.Modify();
    end;
}
