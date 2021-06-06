function check(){
    var name=document.getElementById('order-name').value;
    var num=document.getElementById('number').value;

    if(name == "")
    {
        document.getElementById('order-error').innerHTML="**Name can not be blank";
        return false;
    }

    if(name.length<=6)
    {
        document.getElementById('order-error').innerHTML="**Please enter your full name";
        return false;
    }

    else
    {
        document.getElementById('order-error').innerHTML="";
    }

    if(num == "")
    {
        document.getElementById('order-error').innerHTML="**Mobile number can not be blank";
        return false;
    }
    
    if(isNaN(num))
    {
        document.getElementById('order-error').innerHTML="**please enter your number";
        return false;
    }
    
    if(num.length!=10)
    {
        document.getElementById('order-error').innerHTML="**Please enter your 10 digit moble number";
        return false;
    }
    
    else
    {
        document.getElementById('order-error').innerHTML="";
    }
}