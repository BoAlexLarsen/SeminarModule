tableextension 123456700 "CSD Resource Ext" extends Resource
{
    fields
    {
        field(123456700;"CSD Resource Type";Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(123456701;"CSD Max. Participants";Integer)
        {
            Caption = 'Max. Participants';
            MinValue = 0;
            BlankZero = true;
        }
        field(123456702;"CSD Quantity per Day";Integer)
        {
            Caption = 'Quantity per Day';
            BlankZero = true;
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;

        }
    }
    
    var
        myInt : Integer;
}