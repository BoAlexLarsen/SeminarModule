page 123456702 "Seminar Comment Sheet"
{
    PageType = List;
    SourceTable = "Seminar Comment Line";
    Caption = 'Seminar Comment Sheet';
    DelayedInsert = true;
    MultipleNewLines = true;
    AutoSplitKey = true;
    DataCaptionFields = "No.";
    LinksAllowed = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {

                }
                field(Comment;Comment)
                {

                }
                field(Code;Code)
                {
                    Visible = false;
                }
            }
        }
    }
}