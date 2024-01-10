table 50400 "Book DX"
{
    Caption = 'Book';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Title; Text[50])
        {
            
            Caption = 'Title';
        }
        field(3; Author; Text[50])
        {
            
            Caption = 'Author';
        }
        field(4; Hardcover; Boolean)
        {
            
            Caption = 'Hardcover';
        }
        field(5; "Page Count"; Integer)
        {
            
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    
}
