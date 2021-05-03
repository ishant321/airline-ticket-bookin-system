function validation(){
    var name=document.getElementById('name').value;
    var mail=document.getElementById('mail').value;
    var mob=document.getElementById('mobnumber').value;
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

     if(isNaN(mob))
     {
        document.getElementById('moberror').innerHTML="**It should be your mobile number";
        return false;
     }

     if(mob.length!=4)
     {
        document.getElementById('moberror').innerHTML="**Enter a valid mobile number";
        return false;
     }
    


    //  ----------PASSWORD----------

     if (pass == "") {
        document.getElementById('passworderror').innerHTML="**Password can not be blank";
        return false;
     }

     if((pass.length>6)&&(pass.length<15))
    {
        document.getElementById('passworderror').innerHTML="**Password must between 5 and 15";
        return false;
    }



    //  -----------CONFIRM PASSWORD----------

     if (cpass == "") {
        document.getElementById('conpassworderror').innerHTML="**Confirm password can not be blank";
        return false;
     }

     if (pass!=cpass) {
        document.getElementById('conpassworderror').innerHTML="**Password didn't match";
        return false;
    }
    
}