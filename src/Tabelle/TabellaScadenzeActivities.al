Table 50143 TabellaScadenze

{

    Caption = 'Scadenze';

    fields
    {

        Field(1; idScadenza; Integer)
        {

            NotBlank = TRUE;



        }
        Field(2; idTipologiaScadenza; Integer)
        {

            NotBlank = TRUE;
            TableRelation = TabellaScadenze.IdTipologiaScadenza;
        }
        Field(3; TipoAnagrafica; Text[25])
        {
            DataClassification = ToBeClassified;
        }
        Field(4; idAnagrafica; Code[20])
        {

            NotBlank = TRUE;
            TableRelation = Employee."No.";
        }
        Field(5; Scadenza; Date)
        {

        }
        Field(6; Stato; Integer)
        {


        }
        Field(7; TipoAnagrafica1; Option)
        {
            Caption = 'Tipo Anagrafica1';

            OptionCaption = ' ,Risorsa, Veicolo';
            OptionMembers = "",Risorsa,Veicolo;
        }
        field(8; Gruppo; Code[20])
        {



        }
        field(9; Tipologia; Text[50])
        {
            DataClassification = CustomerContent;
            NotBlank = TRUE;
            TableRelation = TabellaTipologiaScadenze.Tipologia;
        }
    }
    Keys
    {
        key(PrimaryKey; idScadenza)
        {
            Clustered = TRUE;
        }
    }
}