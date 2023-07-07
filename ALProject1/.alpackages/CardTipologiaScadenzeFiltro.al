page 50138 CardTipolgiaScadenzeFiltro
{
    PageType = Card;
    ApplicationArea = All;
    Editable = true;
    SourceTable = TabellaTipologiaScadenzeFiltro;
    Caption = 'Card TipologieScadenzeFiltro';


    layout
    {
        area(Content)
        {
            group(GroupName)
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