codeunit 50401 InstallCode
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertBok('0001', 'Rcok your Guitar', 'Leo Blander', 450);
        InsertBok('0002', 'Bass in 5 Minutes a Day', 'Bettle Treble', 227);

    end;

    local procedure InsertBok(BookNo: Code[20]; BookTitle: Text; BookAuthor: Text; BookPageCount: Integer)
    var
        Book: Record "Book DX";
    begin
        if "Book".get(BookNo) then exit;
        Book."No." := BookNo;
        Book.Author := BookAuthor;
        Book.Title := BookTitle;
        Book.Hardcover := true;
        Book."Page Count" := BookPageCount;
        Book.Insert;
    end;

}