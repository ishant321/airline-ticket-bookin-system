function verify(){
  var from=document.getElementById('indexfrom').value;
  var to=document.getElementById('indexto').value;

  if(from=="Departure_City")
  {
    document.getElementById('indexfromerror').innerHTML="**from can not be blank";
       return false;
  }
  if(from!=="Departure_City"){
    document.getElementById('indexfromerror').innerHTML=" ";
  }

  if(to=="Arrival_City")
  {
    document.getElementById('indextoerror').innerHTML="**to can not be blank";
       return false;
  }

  if(to!=="Arrival_City"){
    document.getElementById('indextoerror').innerHTML=" ";
  }

   if(from == to)
   {
       document.getElementById('indexfromtoerror').innerHTML="**source and destination can not be same";
       return false;
   }
}
