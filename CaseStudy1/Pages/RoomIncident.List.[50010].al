page 50010 RoomIncidentList
{
    Caption = 'Room Incident List';
    PageType = List;
    SourceTable = RoomIncident;
    ApplicationArea = All;
    //CardPageId
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(RoomIncidents)
            {
                Caption = 'Room Incidents';

                field(RoomNo; Rec.RoomNo)
                {
                }
                field(ResponsibleEmployee; Rec.ResponsibleEmployee)
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(Status; Rec.Status)
                {
                }
                field(IncidentDate; Rec.IncidentDate)
                {
                }
                field(ClosingDate; Rec.ClosingDate)
                {
                }
            }
        }
    }
}