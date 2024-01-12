codeunit 50400 CustomerCode
{
    procedure CelebrateCustomer(MyCustomer: Record Customer; ExtraMessage: Text)
    var
        NEW_CUSTOMER: Label 'We have a new customer %1!!\\%2'; // label: más nelvekre történő forsításhoz

    begin
        Message(NEW_CUSTOMER, MyCustomer."No.", ExtraMessage);
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    local procedure CustomerOnAfterInsert(var Rec: Record Customer)
    begin
        CelebrateCustomer(Rec, 'Congratulations from the Codeunit!');
    end;
}