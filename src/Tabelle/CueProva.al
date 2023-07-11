page 1310 "O365 Activities"
{
    Caption = 'Activities';
    PageType = CardPart;
    RefreshOnActivate = true;
    ShowFilter = false;
    SourceTable = "Activities Cue";

    layout
    {
        area(content)
        {
            cuegroup(ListaProva)
            {
                CaptionML = ENU = 'Lista Prova';
                CuegroupLayout = Wide;
                field(NonMaturati; Rec.NonMaturati)
                {
                    CaptionML = ENU = 'Open';
                    DrillDownPageId =

                }
            }
        }
    }