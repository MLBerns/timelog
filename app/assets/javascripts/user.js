$(document).ready(function(){
  $("#time_punch").click(function(e){
    e.preventDefault
    if ($(this).attr("name") == "punch_in") {
      $.post("/punch_in", function(response){
        console.log(response)
        $("#punch_status").html("Currently punched in. You punched in at " + response.punch_time)
      })
      $(this).html("Punch Out").attr("name", "punch_out")
    }
    else if ($(this).attr("name") == "punch_out") {
      $.post("/punch_out", function(response){
        $("#punch_status").html("Not currently punched in")
      })
      $(this).html("Punch In").attr("name", "punch_in")
    }
  })
})
