page 50146 CardScadenza
{
    Caption = 'Card Scadenze';
    PageType = Card;
    ApplicationArea = All;
    Editable = true;
    UsageCategory = Lists;
    RefreshOnActivate = true;
    SourceTable = TabellaScadenze;


    Layout
    {
        Area(Content)
        {
            Group(General)
            {
                field(idScadenza; Rec.idScadenza)
                {
                    ApplicationArea = all;
                }
                field(idAnagrafica; Rec.idAnagrafica)
                {
                    ApplicationArea = all;
                }
                field(Scadenza; Rec.Scadenza)
                {
                    ApplicationArea = all;
                }
                field(Stato; Rec.Stato)
                {
                    ApplicationArea = all;
                }
                field(TipoAnagrafica1; Rec.TipoAnagrafica1)
                {
                    ApplicationArea = all;
                    DrillDown = True;

                }
            }
        }
    }
}

