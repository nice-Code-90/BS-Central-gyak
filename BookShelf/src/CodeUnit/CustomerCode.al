codeunit 50400 CustomerCode
{
    procedure CelebrateCustomer(MyCustomer: Record Customer; ExtraMessage : Text)
    var
        
    begin
        Message('We have a new customer %1!!\\%2',MyCustomer."No.",ExtraMessage);
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    local procedure CustomerOnAfterInsert(var Rec: Record Customer)
    begin
        CelebrateCustomer(Rec,'Congratulations from the Codeunit!');
    end;
}