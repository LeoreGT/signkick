$(document).ready(function(){
  $('#myModal').modal('hide');

  $("#book-btn").on("click", function(){
    $(".booking-details").html("");
    var location = $("#location").val();
    var bookingDate = $("#booking_date").val();
    var duration = $("#duration").val();
    var pricePerHour = $("#price").text();
    var startTimeHour = $("[name='start_time[Start time(4i)]']").val()
    var startTimeMin = $("[name='start_time[Start time(5i)]']").val()
    console.log(pricePerHour);
    console.log(pricePerHour * (duration / 3600));
    var totalPrice = pricePerHour * (duration / 3600);
    $(".booking-details").append("<p>Location : " + location + "</p>");
    $(".booking-details").append("<p>Date : " + bookingDate + "</p>");
    $(".booking-details").append("<p>Start time : " + startTimeHour + ":" + startTimeMin + "</p>");
    $(".booking-details").append("<p>Duration : " + convert_to_hour_min(duration) + "</p>");
    $(".booking-details").append("<p>Total price : $" + totalPrice + "</p>");

  })
})

function convert_to_hour_min(duration){
  var hour = parseInt(duration / 3600);
  var min = (duration - hour * 3600) / 60;
  return hour + ":" + min;
}

