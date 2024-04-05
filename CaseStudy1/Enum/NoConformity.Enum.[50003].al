enum 50003 NoConformityStatus
{
    Caption = 'No Conformity Status';
    Extensible = true;

    value(1; Open)
    {
        caption = 'Open';
    }
    value(2; Notified)
    {
        caption = 'Notified';
    }
    value(3; Closed)
    {
        caption = 'Closed';
    }
}