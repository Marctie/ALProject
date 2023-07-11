page 50139 ListaTipologiaScadenzeFiltro
{
    PageType = List;
    ApplicationArea = All;
    Editable = true;
    UsageCategory = Lists;
    Caption = 'Lista TipologiaScadenzeFiltro';
    CardPageId = CardTipolgiaScadenzeFiltro;
    SourceTable = TabellaTipologiaScadenzeFiltro;

    layout
    {
        area(Content)
        {
            repeater(Scadenze)
            {
                field(IdTipologiaScadenzaFiltro; Rec.IdTipologiaScadenzaFiltro)
                {
                    ApplicationArea = All;

                }
                field(Tipologia; Rec.Tipologia)
                {
                    ApplicationArea = All;

                }
                field(Valore; Rec.Valore)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}