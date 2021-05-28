function verify(){
  var from=document.getElementById('indexfrom').value;
  var to=document.getElementById('indexto').value;

  if(from=="Departure_City")
  {
    document.getElementById('indexfromerror').innerHTML="Please select your departuere city";
       return false;
  }
  if(from!=="Departure_City"){
    document.getElementById('indexfromerror').innerHTML=" ";
  }

  if(to=="Arrival_City")
  {
    document.getElementById('indextoerror').innerHTML="please select your arrival city";
       return false;
  }

  if(to!=="Arrival_City"){
    document.getElementById('indextoerror').innerHTML=" ";
  }

   if(from == to)
   {
       document.getElementById('indexfromtoerror').innerHTML="Departure city and arrival city can not be same";
       return false;
   }
}


