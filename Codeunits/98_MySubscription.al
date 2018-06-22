codeunit 123456798 "CSD My Subscription"
{
    EventSubscriberInstance = StaticAutomatic;
    [EventSubscriber(Objecttype::Codeunit, Codeunit::"Sales-Post",'OnAfterPostGLAndCustomer','',true,true)]
    local procedure OnAfterPostGLAndCustomer(VAR SalesHeader : Record "Sales Header";VAR GenJnlPostLine : Codeunit "Gen. Jnl.-Post Line";TotalSalesLine : Record "Sales Line";TotalSalesLineLCY : Record "Sales Line");
    begin
        
    end;
}