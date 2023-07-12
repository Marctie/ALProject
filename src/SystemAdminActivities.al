page 50133 "Esempio Cue Activities"
{
    Caption = 'Esempio Cue Activities';
    PageType = CardPart;
    SourceTable = "Tabella Esempio Cue";
    RefreshOnActivate = true;
    ShowFilter = false;
    ApplicationArea = all;


    layout
    {
        area(content)
        {
            cuegroup(SalesCueContainer)
            {
                Caption = 'vi prego uscite';
                CuegroupLayout = Wide;
                ShowCaption = true;


                field("NoUserLoggedOn"; Rec.NoUsersLoggedOn)
                {
                    Caption = 'PrimaCue';
                    ApplicationArea = all;
                    DrillDownPageID = "ListaScadenza";
                    ToolTip = 'Specifies the sum of sales in the current month excluding taxes.';

                }
                field("Total No of Minutes Logged On"; Rec."Total of Minutes Logged On")
                {
                    Caption = 'SecondaCue';
                    ToolTip = 'Specifies the field for the total number of minutes logged on';
                    ApplicationArea = all;
                    DrillDownPageId = "Sales Invoice List";

                }
            }
            cuegroup(Group2)
            {
                Caption = 'vi prego uscite';
                ShowCaption = True;


                field("CampoEsempio"; Rec.NoUsersLoggedOn)
                {
                    Caption = 'terzaCue';
                    ApplicationArea = all;
                    DrillDownPageID = "Sales Invoice List";
                    ToolTip = 'Specifies the sum of sales in the current month excluding taxes.';

                }
                field("CampoEsempio2"; Rec."Total of Minutes Logged On")
                {
                    Caption = 'quartacue';
                    ToolTip = 'Specifies the field for the total number of minutes logged on';
                    ApplicationArea = all;
                    DrillDownPageId = "Sales Invoice List";

                }


            }


        }
    }



    actions
    {
        area(processing)
        {
            action("Set Up Cues")
            {
                ApplicationArea = all;
                Caption = 'Set Up Cues';
                Image = Setup;
                ToolTip = 'Set up the cues (status tiles) related to the role.';

                trigger OnAction()
                var
                    CueRecordRef: RecordRef;
                begin
                    CueRecordRef.GetTable(Rec);
                    CuesAndKpis.OpenCustomizePageForCurrentUser(CueRecordRef.Number);
                end;
            }
        }

    }

    trigger OnOpenPage()
    begin
        rec.Reset();
        if not rec.get() then begin
            rec.init();
            rec.insert();
            Commit();

        end
    end;

    trigger OnAfterGetCurrRecord()
    begin
        rec."Total No of Minutes This Month" := rec.GetLoggedOnMinutesThisMonth();
        rec."Total of Minutes Logged On" := rec."Total of Minutes Logged On";
    end;


    var
        CuesAndKpis: Codeunit "Cues And KPIs";
        ActivitiesMgt: Codeunit "Activities Mgt.";
}

