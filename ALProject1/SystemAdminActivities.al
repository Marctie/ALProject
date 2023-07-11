page 50 "System Admin Activities"
{
    Caption = "Activities"
    PageType = CardPart;
    SourceTable = "System Admin Activities";
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(Group1)
            {
                CuegroupLayout = Wide;
                ShowCaption = False;

                field("Sales This Month"; Rec."Sales This Month")
                {
                    ToolTip = 'Specifies the field for the sales done this month';
                    ApplicationArea = Suite;
                    DrillDownPageId = "Customer Ledger Entries";
                }

            }
            field("Total No of Minutes Logged On"; Rec."Total No of Minutes Logged On")
            {
                ToolTip = 'Specifies the field for the total number of minutes logged on';
                ApplicationArea = Suite;
                DrillDownPageId = "User Time Registers";

            }
            field("Total No of Minutes Logged On"; Rec."Total No of Minutes Logged On")
            {
                ToolTip = 'Specifies the field for the total number of minutes logged on';
                ApplicationArea = Suite;
                DrillDownPageId = "User Time Registers";

            }

        }
                cuegroup(UsersInfo)
                {
                    field("No of Users Logged On";Rec."No of Users Logged On")
                    {
                        ToolTip = 'Specifies the field for the total number of users logged on';
                        ApplicationArea = Suite;
                        DrillDownPageId = "Concurrent Session List";
                    }
                    field("No of Entries Posted Today";Rec."No of Entries Posted Today")
                    {
                        ToolTip = 'Specifies the field for the total number of entries posted today';
                        ApplicationArea = Suite;
                        DrillDownPageId = "General Ledger Entries";
                    }
                    field("No of Approved Entries";Rec."No of Approved Entries")
                    {
                        ToolTip = 'Specifies the field for the total number of approved entries';
                        ApplicationArea = Suite;
                        DrillDownPageId = "Approval Entries";
                    }
                }
    trigger OnOpenPage()
    begin
        if not rec.get then begin
            rec.init();
            rec.insert();
        end
    end;

    trigger OnAfterGetCurrRecord()
    begin
        rec."Total No of Minutes This Month" := rec.GetLoggedOnMinutesThisMonth();
        rec."Total No of Minutes Logged On" := rec.
    end;
    
 /*   actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}
*/