pageextension 123456701 "CSD Resource List Ext" extends "Resource List"
{
    layout
    {
        addafter(Type)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {
                Visible = showtype;
            }
            field("CSD Quantity per Day";"CSD Quantity per Day")
            {

            }
            field("CSD Max. Participants";"CSD Max. Participants")
            {
                Visible = ShowMaxQuantity;
            }
        }

    }

    trigger OnOpenPage();
    begin
      FilterGroup(3);
      ShowType := (GetFilter(type) = '');
      ShowMaxQuantity := (GetFilter(type) = format(Type::Machine));
      FilterGroup(0);
    end;
    var
        ShowType : Boolean;
        ShowMaxQuantity : Boolean;
}