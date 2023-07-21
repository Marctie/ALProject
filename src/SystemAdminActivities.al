page 50133 "Esempio Cue Activities"
{
    Caption = 'Esempio Cue Activities';
    PageType = CardPart;
    SourceTable = "Tabella Scadenze cue";
    ShowFilter = false;
    ApplicationArea = all;


    layout
    {
        area(content)
        {
            cuegroup(Group1)
            {
                Caption = 'Avvisi Scadenza';
                ShowCaption = True;


                field("Non Maturate"; rec.idScadenza)
                {
                    Caption = 'Non Maturati';
                    ApplicationArea = all;
                    DrillDownPageID = "ListaScadenza";
                    ToolTip = 'Tutte le scadenze';

                }
                field("In Scadenza"; Rec.idScadenza)
                {
                    Caption = 'In Scadenza';
                    ToolTip = 'Scadenze il cui rinnovo cade ad un mese o meno dalla data odierna';
                    ApplicationArea = all;
                    DrillDownPageId = "ListaScadenza";

                }
                field("Scadute"; Rec.idScadenza)
                {
                    Caption = 'Scaduti';
                    ToolTip = 'scadenze che hanno superato la data di rinnovo';
                    ApplicationArea = all;
                    DrillDownPageId = "ListaScadenza";

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





            }
        }

    }

    trigger OnOpenPage();
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
            EmployeeDocumentExpiration.CheckDocumentExpirations();
        end;

    end;


    var
        CuesAndKpis: Codeunit "Cues And KPIs";
        ActivitiesMgt: Codeunit "Activities Mgt.";
        EmployeeDocumentExpiration: Codeunit "Employee Document Expiration";


}

