function login()
{
    var mail=document.getElementById('emailll').value;
    var pass=document.getElementById('password').value;

    if(mail=="")
    { 
       document.getElementById('emailerror').innerHTML="**Email can not be blank";
       return false;
    }
    if(mail.indexOf('@')<=0){
        document.getElementById('emailerror').innerHTML="**Invalid @ position";
        return false;
    }
    if((mail.charAt(mail.length-4)!='.')&&(mail.charAt(mail.length-3)!='.')){
        document.getElementById('emailerror').innerHTML="**invalid . position";
        return false;
    }
    else{
        document.getElementById('emailerror').innerHTML="";
    }

    if(pass=="")
    {
        document.getElementById('passworderrorlogin').innerHTML="**password can not be blank";
        return false;
    }
    if(pass !=="")
    {
        document.getElementById('passworderrorlogin').innerHTML="";
    }
    
}