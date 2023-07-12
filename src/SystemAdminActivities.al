page 50133 "Esempio Cue Activities"
{
    Caption = 'Esempio Cue Activities';
    PageType = CardPart;
    SourceTable = "TabellaScadenze";
    RefreshOnActivate = true;
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

    var
        CuesAndKpis: Codeunit "Cues And KPIs";
        ActivitiesMgt: Codeunit "Activities Mgt.";


}

