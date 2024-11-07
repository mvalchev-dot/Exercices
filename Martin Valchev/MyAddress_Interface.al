page 50199 Myaddress
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Caption = 'What is the address?';
                ToolTip = 'Select the address.';
                Image = Addresses;

                trigger OnAction()
                var
                    iAddressProvider: Interface IAddressProvider;
                begin
                    AddressProviderFactory(iAddressProvider);
                    Message(iAddressProvider.GetAddress());
                end;
            }
            action(SendToHome)
            {
                ApplicationArea = All;
                Image = Home;
                Caption = 'Send to Home.';
                ToolTip = 'Set the interface implementation to home.';

                trigger OnAction()
                begin
                    sendTo := sendTo::Private
                end;
            }
            action(SendToWork)
            {
                Image = WorkCenter;
                Caption = 'Send to Work.';
                ToolTip = 'Set the interface implementation to Work.';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    sendTo := sendTo::Company
                end;
            }

        }

    }

    var
        myInt: Integer;

    local procedure AddressproviderFactory(var iAddressProvider: Interface IAddressProvider)
    var
        CompanyAddressProvider: Codeunit CompanyAddressProvider;
        PrivateAddressProvider: Codeunit PrivateAddressProvider;
    begin

        if sendTo = sendTo::Company then
            iAddressProvider := CompanyAddressProvider;

        if sendTo = sendTo::Private then
            iAddressProvider := PrivateAddressProvider;

    end;

    var
        sendTo: enum SendTo;

}
codeunit 50197 CompanyAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('Company address \ Denmark 2800')
    end;
}

codeunit 50196 PrivateAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('My Home address \ Denmark 2800')
    end;
}
interface IAddressProvider
{
    procedure GetAddress(): Text;
}

enum 50198 SendTo
{
    Extensible = true;

    value(0; Company)
    {
    }

    value(1; Private)
    {
    }
}
