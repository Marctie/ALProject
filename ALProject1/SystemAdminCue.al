table 50102 "System Admin Cue"
{
    Caption = 'System Admin Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Primary Key; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
            
        }
        field(2; No of Users Logged On; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type"=const("Web Client")));
        }
        field(3; "Total of Minutes Logged On"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("User Time Register".Minutes);
        }
        field(4; "Total No of Minutes This Month"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type"=const("Web Client")));
        }
    }
    
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    procedure GetLoggedOnMinutesThisMonth() MonthlyMinutes:Decimal
    var
        UserTimeReg:Record "User Time Register";
        begin
            UserTimeReg.Reset();
            UserTimeReg.SetRange(Date, CalcDate('-CM', Today),CalcDate('-CM',Today));
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

            procedure CalcSalesThisMonth() Amount:Decimal
            var
                CustLedgEntry: Record "Cust.Ledger Entry";
                CustLedgEntrySales: Query "Custom Ledg. Entry Sales";
                begin
                    CustLedgEntrySales.SetRange(DocumentTypeFilter, CustLedgEntry."Document Type" ::Invoice);
                    CustLedgEntrySales.SetRange(PostingDateFilter, CalcDate('<-CM>', Workdate), Workdate);
                    CustLedgEntrySales.Open();
                    if CustLedgEntrySales.Read() then
                    Amount := CustLedgEntrySales.SumSalesLCY;
                    CustLedgEntrySales.Close();
                end;
