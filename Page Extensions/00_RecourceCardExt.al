pageextension 123456700 "CSD Resource Card Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {

            }
            field("CSD Quantity per Day";"CSD Quantity per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                Visible = ShowMaxField;

                field("CSD Max. Participants";"CSD Max. Participants")
                {
                    
                }
            }

        }
    }

    trigger OnAfterGetRecord();
    begin
        ShowMaxField := (type = type::Machine);
        CurrPage.Update(false);
    end;
    var
            ShowMaxField : Boolean;
}