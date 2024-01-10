profile MyProfile
{
    Caption='My Profile';
    RoleCenter="Order Processor Role Center";
    Customizations=MyCustomization;
}

pagecustomization MyCustomization customizes "Customer List"
{
        Description='Custom Profile';

    layout
    {
        modify("Responsibility Center")
        {
            Visible=false;

        }
    }
    
}