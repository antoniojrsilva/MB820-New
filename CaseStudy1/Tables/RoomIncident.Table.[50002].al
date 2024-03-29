table 50002 RoomIncident
{
    Caption = 'Room Incident';
    DataClassification = CustomerContent;

    fields
    {
        field(50000; IncidentEntryNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Incident Entry No.';
            AutoIncrement = true;
        }
        field(50001; RoomNo; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Room No.';
            TableRelation = Room."No.";
        }
        field(50002; IncidentDate; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Incident Date';
        }
        field(50003; Status; Enum IncidentStatus)
        {
            DataClassification = CustomerContent;
            Caption = 'Status';

            trigger OnValidate()
            begin
                if (Status = IncidentStatus::Closed) then
                    ClosingDate := Today()
                else
                    ClosingDate := 0D;
            end;
        }
        field(50004; ClosingDate; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Closing Date';
        }
        field(50005; Description; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(50006; ResponsibleEmployee; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Responsible Employee';
            TableRelation = Employee."No.";
        }
        field(50007; Image; Media)
        {
            DataClassification = CustomerContent;
            Caption = 'Image';
        }
    }

    keys
    {
        key(PK; IncidentEntryNo)
        {
            Clustered = true;
        }
    }
}