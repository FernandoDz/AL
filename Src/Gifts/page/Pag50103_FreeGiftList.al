page 50103 "Free Gift List"
{
    PageType = List;
    SourceTable = FreeGifts;
    UsageCategory = Lists;
    Caption = 'Free Gift Setup';
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(CustomerCategoryCode; Rec.CustomerCategoryCode)
                {
                    ApplicationArea = All;
                }
                field(ItemNo; Rec.ItemNo)
                {
                    ApplicationArea = All;
                }
                field(MinimunOrderQuantity; Rec.MinimunOrderQuantity)
                {
                    ApplicationArea = All;
                    Style = Strong;
                }
                field(GiftQuantity; Rec.GiftQuantity)
                {
                    ApplicationArea = All;
                    Style = Strong;
                }
            }
        }
    }
}
