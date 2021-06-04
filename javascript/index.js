function verify(){
  var from=document.getElementById('indexfrom').value;
  var to=document.getElementById('indexto').value;
  var seating=document.getElementById('prefferedseating').value;
  var n=document.getElementById('adult').value;
  var ddate=new Date(document.getElementById('departuredate').value);
  var rdate=new Date(document.getElementById('returndate').value);
  var deptdate=document.getElementById('departuredate').value;
  var retdate=document.getElementById('returndate').value;

 

  if(from=="Departure_City")
  {
    document.getElementById('index-error').innerHTML="**Please select your departuere city";
       return false;
  }
  if(from!=="Departure_City"){
    document.getElementById('index-error').innerHTML=" ";
  }

  if(to=="Arrival_City")
  {
    document.getElementById('index-error').innerHTML="**please select your arrival city";
       return false;
  }

  if(to!=="Arrival_City"){
    document.getElementById('index-error').innerHTML=" ";
  }

   if(from == to)
   {
       document.getElementById('index-error').innerHTML="**Departure city and arrival city can not be same";
       return false;
   }

   if(seating == "preffered_seating")
   {
    document.getElementById('index-error').innerHTML="**Please select your seating";
    return false;
   }

   if(seating!=="preffered_seating")
   {
    document.getElementById('index-error').innerHTML=" ";
   }

   if(n == "")
   {
    document.getElementById('index-error').innerHTML="**Please provide your number of passengers";
    return false;
   }

   if(n!=="")
   {
    document.getElementById('index-error').innerHTML=" ";
   }

   if(deptdate == "")
   {
    document.getElementById('index-error').innerHTML="**Please select your daparture date";
    return false;
   }

   if(deptdate !== "")
   {
    document.getElementById('index-error').innerHTML="";
   }

   if(retdate == "")
   {
    document.getElementById('index-error').innerHTML="**Please select your return date";
    return false;
   }
   
   if(ddate > rdate)
   {
    document.getElementById('index-error').innerHTML="**you can not travel reverse";
    return false;
   }
   else{
    document.getElementById('index-error').innerHTML="";
   }

   if(retdate!== "")
   {
    document.getElementById('index-error').innerHTML="";
   }

}
