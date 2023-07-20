codeunit 50100 CodeunitFiltroScadenze
{
    procedure SetScadenzeFilter(var idScadenzaCue: Integer)
    var
        CueRec: Record "TabellaScadenzeCue";
    begin
        if idScadenzaCue <> 0 then begin
            CueRec.Get(idScadenzaCue);
            case CueRec.Stato of
                'Non Maturate':
                    SetRange("Scadenza", '<', CurrentDate);
                'InScadenza':
                    SetRange("Scadenza", '>=', CurrentDate);
                SetRange("Scadenza", '<=', CurrentDate + 30);
                'Scadute':
                    SetRange("Scadenza", '>', CurrentDate);
            end;
        end;
    end;

}