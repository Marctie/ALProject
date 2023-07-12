table 50148 TabellaNuovaScadenza
{

    DataClassification = CustomerContent;
    Caption = 'Nuova Scadenza';

    fields
    {
        field(1; Nome; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Nome';
        }

        field(2; Tipologia; Option)
        {
            Caption = 'Tipologia';
            OptionCaption = 'Risorse, Veicoli';
            OptionMembers = Risorse,Veicoli;

        }

        field(3; Gruppo; Code[20])
        {
            Caption = 'Gruppo';

        }



    }

    keys
    {
        key(PrimaryKey; Nome)
        {
            Clustered = true;
        }
    }
}