page 50003 ToDoAssistedSetup
{
    PageType = NavigatePage;
    SourceTable = Integer;
    ApplicationArea = All;
    SourceTableTemporary = true;
    Caption = 'Add a To-Do for the Team';

    layout
    {
        area(content)
        {
            group(Step1)
            {
                Caption = '1';
                InstructionalText = '';
                Visible = Step1Visible;
            }
            group(Step2)
            {
                Caption = '2';
                InstructionalText = '';
                Visible = Step2Visible;
            }
            group(Step3)
            {
                Caption = '3';
                InstructionalText = '';
                Visible = Step3Visible;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Back)
            {
                Enabled = BackEnabled;
                InFooterBar = true;
                Image = PreviousRecord;
                trigger OnAction()
                begin
                    NextStep(true);
                end;
            }
            action(Next)
            {
                Enabled = NextEnabled;
                InFooterBar = true;
                Image = NextRecord;
                trigger OnAction()
                begin
                    NextStep(false);
                end;
            }
            action(Finish)
            {
                Enabled = FinishEnabled;
                InFooterBar = true;
                Image = Approve;
                trigger OnAction()
                begin
                    Finished();
                end;
            }
        }
    }

    var
        Step1Visible: Boolean;
        Step2Visible: Boolean;
        Step3Visible: Boolean;
        Step: Option Start,Fill,Finish;
        BackEnabled: Boolean;
        NextEnabled: Boolean;
        FinishEnabled: Boolean;

    local procedure NextStep(Backwards: Boolean)
    begin
        If Backwards then
            Step -= 1
        else
            Step += 1;
        EnableControls();
    end;

    local procedure Finished()
    begin
        CurrPage.Close();
    end;

    local procedure EnableControls()
    begin
        ResetControls();
        case Step of
            Step::Start:
                ShowStep1();
            Step::Fill:
                ShowStep2();
            Step::Finish:
                ShowStep3();
        end;
    end;

    local procedure ResetControls()
    begin
        FinishEnabled := false;
        BackEnabled := true;
        NextEnabled := true;
        Step1Visible := false;
        Step2Visible := false;
        Step3Visible := false;
    end;

    local procedure ShowStep1()
    begin
        Step1Visible := true;
        Step2Visible := false;
        Step3Visible := false;
        BackEnabled := false;
        NextEnabled := true;
        FinishEnabled := false;
    end;

    local procedure ShowStep2()
    begin
        Step1Visible := false;
        Step2Visible := true;
        Step3Visible := false;
        BackEnabled := true;
        NextEnabled := true;
        FinishEnabled := false;
    end;

    local procedure ShowStep3()
    begin
        Step1Visible := false;
        Step2Visible := false;
        Step3Visible := true;
        BackEnabled := true;
        NextEnabled := false;
        FinishEnabled := true;
    end;

    local procedure LoadTopBanners()
    begin

    end;

    trigger OnInit()
    begin
        LoadTopBanners();
        EnableControls();
    end;
}