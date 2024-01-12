tableextension 50400 "CustomerBookExtension DX" extends Customer
{
    fields
    {
        field(50400; "Favourite Book No."; Code[20])
        {
            Caption = ' Favourite Book No. DX';
            DataClassification = ToBeClassified;

        }
    }
    trigger OnAfterInsert()
    var
        CustomerCode: Codeunit CustomerCode;
    begin
        CustomerCode.CelebrateCustomer(Rec, 'Congratulations from the Table Extension');
    end;
}
