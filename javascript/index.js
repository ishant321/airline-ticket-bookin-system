function verify(){
  var from=document.getElementById('indexfrom').value;
  var to=document.getElementById('indexto').value;
  var seating=document.getElementById('prefferedseating').value;
  var n=document.getElementById('adult').value;
  var deptdate=document.getElementById('departuredate').value;
 

 

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

  
}
