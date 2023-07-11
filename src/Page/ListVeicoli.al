page 50145 ListaVeicoli
{
    PageType = List;
    ApplicationArea = All;
    Editable = true;
    UsageCategory = Lists;
    SourceTable = TabellaVeicoli;
    Caption = 'Lista Veicoli';
    CardPageId = CardVeicoli;


    layout
    {
        area(Content)
        {
            repeater(Scadenze)
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