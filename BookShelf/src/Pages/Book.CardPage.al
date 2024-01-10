page 50400 "BookCard DX"
{
    ApplicationArea = All;
    Caption = 'BookCard';
    PageType = Card;
    SourceTable = "Book DX";
    
    layout
    {
        area(content)
        {
            group(General )
            {
                
                Caption = 'General ';
                
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.';
                }
            }
            group( Details)
            {
                Caption = ' Details';
                
                field(Author; Rec.Author)
                {
                    ToolTip = 'Specifies the value of the Author field.';
                }
                field(Hardcover; Rec.Hardcover)
                {
                    ToolTip = 'Specifies the value of the Hardcover field.';
                }
                field("Page Count"; Rec."Page Count")
                {
                    ToolTip = 'Specifies the value of the Page Count field.';
                }
            }
        }
    }
}
