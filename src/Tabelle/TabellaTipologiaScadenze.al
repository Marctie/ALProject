table 50142 TabellaTipologiaScadenze
{
    DataClassification = CustomerContent;
    Caption = 'Tipologia Scadenze';


    fields
    {

        field(1; IdTipologiaScadenza; Integer)
        {
            DataClassification = CustomerContent;
            NotBlank = TRUE;
        }
        field(2; IdScadenza; Integer)
        {
            DataClassification = CustomerContent;
            TableRelation = TabellaScadenze.idScadenza;
        }
        field(3; Descrizione; Text[100])
        {
            DataClassification = CustomerContent;
            NotBlank = TRUE;
        }
        field(4; Tipologia; Text[50])
        {
            DataClassification = CustomerContent;
            NotBlank = TRUE;
        }
        field(5; Gruppo; Text[25])
        {
            DataClassification = CustomerContent;
            NotBlank = TRUE;
        }
        field(6; TipologiaAnagrafica; Text[25])
        {
            DataClassification = CustomerContent;
            NotBlank = TRUE;
        }
        field(7; ManutenzioneMacchina; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(8; AvvisoScadenza; Text[25])
        {
            DataClassification = CustomerContent;
        }
        field(9; AvvisoInvioEmail; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(10; MittenteNome; Text[25])
        {
            DataClassification = CustomerContent;
        }
        field(11; MittenteIndirizzo; Text[150])
        {
            DataClassification = CustomerContent;
        }
        field(12; TestoEmail; Text[2000])
        {
            DataClassification = CustomerContent;
        }
        field(13; Ricorrente; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(14; FormulaRinnovoScadenza; Text[50])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PrimaryKey; IdTipologiaScadenza)
        {
            Clustered = TRUE;
        }
    }
}