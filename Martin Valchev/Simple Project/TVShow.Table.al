table 50140 "TV Show"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Show Type"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Run Time"; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Host Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Host Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Average Listeners"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Audience Share"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Advertising Revenue"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Royalty Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Pk; "No.")
        {
            Clustered = true;
        }
        key(Name; Name)
        {
        }
        key(HostName; "Host Name")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Host Name") { }
        fieldgroup(Brick; "No.", Name, "Audience Share") { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}