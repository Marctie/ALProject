page 50147 CardVeicoli
{
    PageType = Card;
    ApplicationArea = All;
    Editable = true;
    UsageCategory = Lists;
    SourceTable = TabellaVeicoli;
    Caption = 'Card Veicoli';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(idVeicolo; rec.idVeicolo)
                {
                    ApplicationArea = All;

                }
                field(TipologiaVeicolo; rec.TipologiaVeicolo)
                {
                    ApplicationArea = All;

                }
                field(Targa; rec.Targa)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}