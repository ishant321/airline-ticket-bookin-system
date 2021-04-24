function validation(){
    var name=document.getElementById('name').value;
    var mail=document.getElementById('mail').value;
    var mob=document.getElementById('mobnumber').value;
    var uname=document.getElementById('uname').value;
    var pass=document.getElementById('pass').value;
    var cpass=document.getElementById('cpass').value;

    // ----------NAME----------
    if(name == "")
    {
        document.getElementById('nameerror').innerHTML="**Name can not be blank";
        return false;
    }
    if((name.length<=4)||(name.length>30))
    {
        document.getElementById('nameerror').innerHTML="**the name must between 4 and 30";
        return false;
    }

    if(!isNaN(name))
    {
        document.getElementById('nameerror').innerHTML="**numbers are not allowed";
        return false;
    }
    if((name!==" ")&&((name.length<=4)||(name.length>30))&&(isNaN(name)))
    {
        document.getElementById('nameerror').innerHTML="";
        return false;
        
    }

    // ----------EMAIL----------
    if(mail == "")
    {
        document.getElementById('mailerror').innerHTML="**Email can not be blank";
        return false;
    }
    if(mail.indexOf('@')<=0){
        document.getElementById('mailerror').innerHTML="**Invalid @ position";
        return false;
    }
    if((mail.charAt(mail.length-4)!='.')&&(mail.charAt(mail.length-3)!='.')){
        document.getElementById('mailerror').innerHTML="**invalid . position";
        return false;
    }
    

     // ----------MOBILE NUMBER----------
     if (mob == "") {
        document.getElementById('moberror').innerHTML="**Mobile number can not be blank";
        return false;
     }
    

    //  ----------USERNAME----------
     if (uname == "") {
        document.getElementById('usernameerror').innerHTML="**Username can not be blank";
        return false;
     }

    //  ----------PASSWORD----------

     if (pass == "") {
        document.getElementById('passworderror').innerHTML="**Password can not be blank";
        return false;
     }


    //  -----------CONFIRM PASSWORD----------

     if (cpass == "") {
        document.getElementById('conpassworderror').innerHTML="**Confirm password can not be blank";
        return false;
     }
    }