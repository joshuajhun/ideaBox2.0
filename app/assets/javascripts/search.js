function searchIdeas(){
  $("#search").keyup(function(event){
    var searchParam = $(this).val().toLowerCase();
    var allExisitingIdeas = $('#index').children();

    allExisitingIdeas.removeClass('invisible');

    var hideIdeas = allExisitingIdeas.filter(function(){
    var ideaBodyAndText = $(this).find("#ideaname, #ideabody").text().toLowerCase()
    return !(ideaBodyAndText.includes(searchParam))
  })
  hideIdeas.addClass('invisible');
  })
}
