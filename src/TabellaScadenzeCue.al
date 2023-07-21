Table 50101 "Tabella Scadenze Cue"

{


    fields
    {

        Field(1; idScadenza; Integer)
        {
            NotBlank = TRUE;
            InitValue = 1;
            FieldClass = FlowField;
            CalcFormula = sum("tabella Scadenze Cue".idScadenza) WHERE("tabella scadenze cue".stato = CONST(1));
        }
        Field(2; idTipologiaScadenza; Integer)
        {

            NotBlank = TRUE;

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
        Field(6; Stato; Option)
        {
            OptionCaption = 'DaRinnovare, Rinnovata';
            OptionMembers = "1","2";

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

        }
        field(10; LimiteScadenza; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(11; ExpirationStatus; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'StatoScadenza';
            OptionCaption = 'Scaduta, InScadenza, NonMaturata';
            OptionMembers = Scaduta,InScadenza,NonMaturata;
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