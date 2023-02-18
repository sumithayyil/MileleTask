$("#searchBySeller").hide();
$("#searchBySteering").hide();
$("#button").hide();

$(function () {
  $("#searchBySupplier").click(function () {
    $("#searchBySeller").fadeIn("slow");
  });
});

$(function () {
  $("#searchBySeller").click(function () {
    $("#searchBySteering").fadeIn("slow");
  });
});
$(function () {
  $("#searchBySteering").click(function () {
    $("#button").fadeIn("slow");
  });
});

$("#searchBySFX").hide();
$("#searchByVariant").hide();
$("#searchByColor").hide();

$(function () {
  $("#searchByModel").click(function () {
    $("#searchBySFX").fadeIn("slow");
  });
});

$(function () {
  $("#searchBySFX").click(function () {
    $("#searchByVariant").fadeIn("slow");
  });
});
$(function () {
  $("#searchByVariant").click(function () {
    $("#searchByColor").fadeIn("slow");
  });
});
