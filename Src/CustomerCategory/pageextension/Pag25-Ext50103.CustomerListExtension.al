pageextension 50103 CustomerListExtension extends "Customer List"
{

    actions
    {
        addlast(Processing)
        {
            action("Assign Default Category")
            {
                Image = ChangeCustomer;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;
                Caption = 'Assign Default Category to all Customers';
                ToolTip = 'Assign  the default category  to all Customers';
                trigger OnAction()
                var
                    custManagement: Codeunit "Customer Management";
                begin
                    custManagement.AssignDefaultCategory();
                end;
            }

        }
    }
}