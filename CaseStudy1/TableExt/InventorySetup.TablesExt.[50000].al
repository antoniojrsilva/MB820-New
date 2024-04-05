tableextension 50000 InventorySetup extends "Inventory Setup"
{
    fields
    {
        field(50000; NoConformitiesSeries; Code[20])
        {
            Caption = 'No Conformity Nos.';
            TableRelation = "No. Series".Code;
        }
    }
}