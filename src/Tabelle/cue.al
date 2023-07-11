page 50143 "cue"

{
    Caption = 'Lista Scadenze';
    PageType = CardPart;
    SourceTable = "Tabella Scadenze Activities";
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(Group1)
            {
                CuegroupLayout = Wide;
                ShowCaption = false;

                field("Non Maturati"; Rec."Non Maturati")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = 50143 "Non Maturati";


                }
                field("In Scadenza"; Rec."In Scadenza")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = 50143 "In Scaduti"



                }
                field("Scaduti"; Rec."Scaduti")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = 50143 "Scaduti";


                }
            }
        }
    }

    actions
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