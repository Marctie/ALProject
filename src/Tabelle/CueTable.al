table 50102 "Cue Table"
{
    Caption = 'Cue Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Non Maturati"; Code[10])
        {
            Caption = 'Non Maturati';
            DataClassification = ToBeClassified;

        }
        field(2; "In Scadenza"; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = count
        }

    }
}