table 50134 "Tabella Esempio Cue"
{
    Caption = 'System Admin Cue';


    fields
    {
        field(1; PrimaryKey; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Non Maturati"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type" = const("Web Client")));
        }
        field(3; "In Scadenza"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("User Time Register".Minutes);
        }
        field(4; "Scaduti"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type" = const("Web Client")));
        }
    }

    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }
    procedure GetLoggedOnMinutesThisMonth() MonthlyMinutes: Decimal
    var
        UserTimeReg: Record "User Time Register";
    begin
        UserTimeReg.Reset();
        UserTimeReg.SetRange(Date, CalcDate('-CM', Today), CalcDate('-CM', Today));
        if UserTimeReg.FindFirst() then begin
            UserTimeReg.CalcSums(Minutes);
            MonthlyMinutes := UserTimeReg.Minutes;
        end
    end;

    procedure GetTheNoOfPostedEntries() PostedEntriesToday: Integer
    var
        GLEntry: Record "G/L Entry";
    begin
        GLEntry.Reset();
        GLEntry.SetRange("Posting Date", Today);
        PostedEntriesToday := GLEntry.Count();
    end;

}