page 50148 ListaScadenza
{
    PageType = List;
    ApplicationArea = All;
    Editable = true;
    UsageCategory = Lists;
    Caption = 'Lista Scadenze';
    SourceTable = TabellaScadenze;
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

            }
        }
    }
}