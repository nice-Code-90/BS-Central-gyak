page 50401 "BookList DX"
{
    ApplicationArea = All;
    Caption = 'BookList DX';
    PageType = List;
    SourceTable = "Book DX";
    UsageCategory = Lists;
    Editable=false;
    CardPageId="BookCard DX";
    
    layout
    {
        area(content)
        {
            repeater(group)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.';
                }
                field(Author; Rec.Author)
                {
                    ToolTip = 'Specifies the value of the Author field.';
                }
            }
        }
    }
}
