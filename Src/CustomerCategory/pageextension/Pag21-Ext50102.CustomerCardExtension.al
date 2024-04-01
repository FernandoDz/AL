pageextension 50102 "CustomerCardExtension" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Customer Category SDM"; Rec."Customer Category SDM")
            {
                ToolTip = 'Customer Category';
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addlast("F&unctions")
        {
            action("Assign default category")
            {
                Image = ChangeCustomer;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;
                Caption = 'Assign Default Category';
                ToolTip = 'Assigns the default category for the selected customer';
                trigger OnAction();
                var
                    CustManagement: Codeunit "Customer Management";
                begin
                    CustManagement.AssignDefaultCategory(Rec."No.");

                end;
            }
        }
    }
}