codeunit 50106 "Employee Document Expiration"
{
    Access = Public;
    procedure CheckDocumentExpirations()
    var
        EmployeeDocumentExpiration: Codeunit "Employee Document Expiration";
        EmployeeDocument: Record "Tabella Scadenze Cue";
        Today: Date;
        DocumentExpiryDate: Date;
        DaysRemaining: Integer;
    begin
        Today := WORKDATE;

        EmployeeDocument.RESET;
        EmployeeDocument.SETFILTER("Tipologia", 'Patente', 'IdentityCard'); // Modifica con i tuoi tipi di documento

        WHILE EmployeeDocument.Stato <> '2' DO BEGIN
            DocumentExpiryDate := EmployeeDocument."Scadenza";

            DaysRemaining := DocumentExpiryDate - Today;
            IF DaysRemaining < 0 THEN BEGIN
                EmployeeDocument.ExpirationStatus := EmployeeDocument.ExpirationStatus::Scaduta;
            END
            ELSE
                IF DaysRemaining < 30 THEN BEGIN
                    EmployeeDocument.ExpirationStatus := EmployeeDocument.ExpirationStatus::InScadenza;
                END
                ELSE BEGIN
                    EmployeeDocument.ExpirationStatus := EmployeeDocument.ExpirationStatus::NonMaturata;
                END;

            EmployeeDocument.MODIFY(TRUE);
        END;
    end;
}