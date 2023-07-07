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
        Field(3; idAnagrafica; Code[20])
        {

            NotBlank = TRUE;
            TableRelation = Customer."No.";
        }
        Field(4; Scadenza; Date)
        {

        }
        Field(5; Stato; Integer)
        {


        }
        Field(6; TipoAnagrafica1; Code[20])
        {
            Caption = 'Tipo Anagrafica1';
            //OptionCaption = ' ,Risorsa, Veicolo';
            //OptionMembers = "",Risorsa,Veicolo;
        }
        field(7; Gruppo; Code[20])
        {
            TableRelation = TabellaTipologiaScadenzeFiltro.Valore WHERE(Tipologia1 = FIELD(TipoAnagrafica1));

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