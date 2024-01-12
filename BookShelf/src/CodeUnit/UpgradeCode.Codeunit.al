codeunit 50402 "UpgradeCode.Codeunut"
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany()
    var
        Book: Record "Book DX";
        Customer: Record Customer;
    begin
        Book.Reset();
        if not Book.FindFirst() then exit;

        Customer.Reset();

        if not Customer.IsEmpty() then
            Customer.ModifyAll("Favourite Book No.", Book."No.");
    end;
}
