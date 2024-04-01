// pageextension 50108 DependentExtension extends "Customer Category List"
// {
//     actions

//     {
//         addlast(processing)
//         {
//             action("Delete Default Category")
//             {
//                 Image = Delete;
//                 Promoted = true;
//                 PromotedCategory = Process;
//                 PromotedIsBig = true;
//                 ApplicationArea = All;
//                 Caption = 'Delete Default Category';
//                 ToolTip = 'Delete the Default Customer Category';
//                 trigger OnAction();
//                 var
//                     CustomerCategory: Record "Customer Category";
//                     cuCustomer: Codeunit "Customer Management";
//                 begin
//                     CustomerCategory.SetRange(Default, true);
//                     CustomerCategory.Delete();
//                 end;
//             }
//         }
//     }
// }