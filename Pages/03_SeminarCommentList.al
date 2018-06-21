page 123456703 "Seminar Comment List"
{
    PageType = List;
    SourceTable = "Seminar Comment Line";
    Caption = 'Seminar Comment List';
    Editable = false;
    DataCaptionFields = "No.";
    LinksAllowed = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {

                }
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