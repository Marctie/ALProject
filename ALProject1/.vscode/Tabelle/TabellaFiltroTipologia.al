table 50140 TabellaTipologiaScadenzeFiltro
{
    Caption = 'Tipologia Scadenze Filtro';

    fields
    {
        field(1; IdTipologiaScadenzaFiltro; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Tipologia; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Valore; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Tipologia1; code[20])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(IdTipologiaScadenzaFiltro; IdTipologiaScadenzaFiltro)
        {
            Clustered = true;
        }
    }
}