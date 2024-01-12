codeunit 50403 DotNetWrappers
{
    trigger OnRun()
    begin
        TextDemo();
        ListDemo();
    end;

    procedure TextDemo()
    var
        myText: Text;
        myTextBuilder: TextBuilder;
    begin
        myTextBuilder.AppendLine('We can append lines');
        myTextBuilder.Append('...or just add characters');
        myTextBuilder.AppendLine('to the current line');
        myTextBuilder.AppendLine('some text');
        myTextBuilder.Replace('some text', 'replaced by some other text');
        myText := myTextBuilder.ToText();

        myText := myText.ToUpper();

        Message(myText);
    end;

    procedure ListDemo()
    var
        CustomerNames: list of [text];
    begin
        CustomerNames.Add('Bill');
        CustomerNames.Add('John');
        CustomerNames.Add('LillyBelle');

        if CustomerNames.Contains('John') then
            Message('John is on the list');

        Message('Name at index 1: ' + CustomerNames.Get(1));
        PrintCustomerNames(CustomerNames);
    end;

    procedure PrintCustomerNames(CustomerNames: list of [text])
    var
        CustomerName: Text;
    begin
        foreach CustomerName in CustomerNames do begin
            Message(CustomerName);
            CountCharactersInCustomerName(CustomerName);
        end;
    end;

    procedure CountCharactersInCustomerName(CustomerName: Text)
    var
        LetterCounter: Dictionary of [Char, Integer];
        i: Integer;
        c: Integer; // darabszám
    begin
        Clear(LetterCounter);
        for i := 1 to StrLen(CustomerName) do begin
            if LetterCounter.Get(CustomerName[i], c) then
                LetterCounter.Set(CustomerName[i], c + 1)  // ha taálható karakter a következő helyen, növeljük a c értékét
            else
                LetterCounter.Set(CustomerName[i], 1);
        end;
        if LetterCounter.Get('1', c) then
            Message('the name %1 has the letter L %2 times', CustomerName, Format(c));
    end;
}

