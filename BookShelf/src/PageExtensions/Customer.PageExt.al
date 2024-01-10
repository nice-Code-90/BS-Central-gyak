pageextension 50400 "CustomerCardBook.PageExt DX" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Favourite Book No. DX";Rec."Favourite Book No. DX")
            {
                ApplicationArea=all;
                TableRelation="Book DX";
            }
            
        }
    }
}
