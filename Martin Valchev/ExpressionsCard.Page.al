page 50111 "Expressions Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expressions Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                caption = 'Input';

                field(Value1; Value1)
                {
                    ToolTip = 'Enter a value for Value1.';

                    Caption = 'First Value: ';
                }
                field(Value2; Value2)
                {
                    ToolTip = 'Enter a value for Value1.';

                    Caption = 'Second Value: ';
                }
            }

            group(Output)
            {
                caption = 'Output';
                field(Result; Result)
                {
                    Editable = false;
                    Caption = 'Result: ';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                //comment 

                Caption = 'Execute';
                Image = ExecuteBatch;
                ApplicationArea = All;
                ToolTip = 'Click to calculate the result.';

                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;

}