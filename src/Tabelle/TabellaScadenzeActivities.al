Table 50143 TabellaScadenze

{
    Caption = 'Scadenze';

    fields
    {

        Field(1; idScadenza; Integer)
        {

        }
        Field(2; idTipologiaScadenza; Integer)
        {


        }
        Field(3; TipoAnagrafica; Text[25])
        {

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
        field(10; Cuefield; Integer)
        {
            CalcFormula = count(TabellaScadenze WHERE(Stato = CONST(2)));
            Caption = 'Cuefield';
            FieldClass = FlowField;
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