$(document).ready(function(){
  renderIdeas()
  $('#create-idea').on('click', function(){

    var ideaParams = { name: $('#idea-name').val(), body: $("#idea-body").val()}
    $.ajax({
      type: 'POST',
      url: 'http://socalbros:3000/api/v1/ideas',
      data: ideaParams,
      success: function(newIdea){
        renderIndex(newIdea)
      },
      error: function(xhr){
        console.log(xhr.responseText)
      }
    })
  })

});
