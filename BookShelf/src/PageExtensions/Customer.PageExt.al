pageextension 50400 "CustomerCardBook.PageExt DX" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Favourite Book No."; Rec."Favourite Book No.")
            {
                ApplicationArea = all;
                TableRelation = "Book DX";
            }

        }
    }
}
