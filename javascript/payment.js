function pv()
{
    
    var cd=document.getElementById('card').value;
    var date=document.getElementById('date').value;
    var c=document.getElementById('cvc').value;
    var nm=document.getElementById('code-name').value;

    if(cd=="")
    {
        document.getElementById('pay-error').innerHTML="**Please enter your card number";
        return false;
    }

    if(isNaN(cd))
    {
        document.getElementById('pay-error').innerHTML="**enter your card number";
        return false;
    }

    if(cd.length!=16)
    {
        document.getElementById('pay-error').innerHTML="**Please enter your 16 digit card number";
        return false; 
    }

    else{
        document.getElementById('pay-error').innerHTML="";
    }

    if(date=="")
    {
        document.getElementById('pay-error').innerHTML="**Please enter your card expiry date";
        return false;
    }

    else{
        document.getElementById('pay-error').innerHTML="";
    }

    if(c=="")
    {
        document.getElementById('pay-error').innerHTML="**Your CV code can not be blank";
        return false;
    }

    if(isNaN(c))
    {
        document.getElementById('pay-error').innerHTML="**Enter your CV code";
        return false;
    }

    if(c.length!=3)
    {
        document.getElementById('pay-error').innerHTML="**Please enter your valid CV number";
        return false;
    }

    else
    {
        document.getElementById('pay-error').innerHTML="";
    }

    if(nm=="")
    {
        document.getElementById('pay-error').innerHTML="**Name can not be blank";
        return false;
    }
    
    if(nm.length<=6)
    {
        document.getElementById('pay-error').innerHTML="**Please enter your name on card";
        return false;
    }

    else{
        document.getElementById('pay-error').innerHTML="";
    }

}