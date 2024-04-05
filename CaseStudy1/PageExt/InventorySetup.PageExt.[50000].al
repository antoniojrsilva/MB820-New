pageextension 50000 InventorySetupExt extends "Inventory Setup"
{

    layout
    {
        addafter("Posted Direct Trans. Nos.")
        {
            field(NoConformitiesSeries; Rec.NoConformitiesSeries)
            {
                ApplicationArea = All;
            }
        }
    }
}