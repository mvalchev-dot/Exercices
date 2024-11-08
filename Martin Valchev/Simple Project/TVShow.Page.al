page 50140 "TV Show Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "TV Show";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = Basic;
                }
                field("Show Type"; Rec."Show Type")
                {
                    ApplicationArea = Basic;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = Basic;
                }
                field("Run Time"; Rec."Run Time")
                {
                    ApplicationArea = Basic;
                }
                field("Host Code"; Rec."Host Code")
                {
                    ApplicationArea = Basic;
                }
                field("Host Name"; Rec."Host Name")
                {
                    ApplicationArea = Basic;
                }
                field("Average Listeners"; Rec."Average Listeners")
                {
                    ApplicationArea = Basic;
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ApplicationArea = Basic;
                }
                field("Advertising Revenue"; Rec."Advertising Revenue")
                {
                    ApplicationArea = Basic;
                }
                field("Royalty Cost"; Rec."Royalty Cost")
                {
                    ApplicationArea = Basic;
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}