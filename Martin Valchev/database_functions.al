/*var
    customer: Record Customer;
begin
    customer.Find('-');
    // SELECT * FROM Customer
    Message('%1', customer.Name);

    customer.Find('+');
    // SELECT * FROM Customer Order By No. Desc
    Message('%1', customer.Name);

    customer.FindFirst();
    // SELECT TOP 1 * FROM Customer
    Message('%1', customer.Name);

    customer.FindLast();
    // SELECT TOP 1 * FROM Customer Order By No. Desc
    Message('%1', customer.Name);
    
customer.SetCurrentKey(City);
// Sorts the records by the field that is in the parantheses.
example given: 
-----------
    var
    customer: Record Customer;
begin
    customer.SetCurrentKey(City);

    customer.FindFirst();
    Message('%1', customer);
    */
