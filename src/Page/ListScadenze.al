page 50148 ListaScadenza
{
    PageType = List;
    ApplicationArea = All;
    Editable = true;
    UsageCategory = Lists;
    Caption = 'Lista Scadenze';
    SourceTable = "Tabella Scadenze Cue";
    CardPageId = CardScadenza;

    layout
    {
        Area(Content)
        {
            repeater(Scadenze)
            {
                ShowCaption = true;
                field(idScadenza; rec.idScadenza)
                {
                    ApplicationArea = All;
                }
                Field(idTipologiaScadenza; rec.idTipologiaScadenza)
                {
                    ApplicationArea = all;
                }
                field(idAnagrafica; rec.idAnagrafica)
                {
                    ApplicationArea = All;
                }
                field(TipoAnagrafica; rec.TipoAnagrafica1)
                {
                    ApplicationArea = All;
                }
                field(Scadenza; rec.Scadenza)
                {
                    ApplicationArea = All;
                }
                field(Stato; rec.Stato)
                {
                    ApplicationArea = All;
                }
                field(ExpirationStatus; Rec.ExpirationStatus)
                {

                }


            }
        }
    }
}
