page 50005 RoomsAPI
{
    PageType = API;

    APIVersion = 'v2.6';
    APIPublisher = 'antonio';
    APIGroup = 'integration';

    EntityName = 'room';
    EntitySetName = 'rooms';

    SourceTable = Room;
    ODataKeyFields = SystemId;

    Extensible = false;
    Editable = false;
    DelayedInsert = true;

    DataAccessIntent = ReadOnly;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(SystemId; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field("no"; Rec."No.")
                {
                }
                field(name; Rec.Name)
                {
                }
                field(status; Rec.Status)
                {
                }
            }
        }
    }
}