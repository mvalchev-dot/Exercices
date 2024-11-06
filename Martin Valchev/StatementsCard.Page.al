page 50112 "Statements Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statements Card';
    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    Caption = 'Input Field';
                    ToolTip = 'Add value';
                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;
                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Suggestion; Suggestion)
                {
                    Editable = false;
                    Caption = 'Output Field';
                    ToolTip = 'Shows value';
                }
                field(Level; Level)
                {
                    Editable = false;
                    Caption = 'Output Field';
                    ToolTip = 'Shows value';
                }
            }
        }
    }

    actions
    {

    }
    local procedure GetSuggestion()
    var
        myInt: Integer;
    begin
        Level := '';
        Suggestion := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
        end;
    end;

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;
}