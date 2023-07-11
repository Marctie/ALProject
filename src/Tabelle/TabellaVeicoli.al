table 50141 TabellaVeicoli
{
    DataClassification = CustomerContent;
    Caption = 'Veicoli';

    fields
    {
        field(1; idVeicolo; Integer)
        {
            DataClassification = CustomerContent;
            NotBlank = True;
        }
        field(2; TipologiaVeicolo; Text[25])
        {
            DataClassification = CustomerContent;

        }
        field(3; Targa; Text[25])
        {
            DataClassification = CustomerContent;
        }

    }
    keys
    {
        key(Key1; idVeicolo)
        {
            Clustered = true;
        }
    }
}