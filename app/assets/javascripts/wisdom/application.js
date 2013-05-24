// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//

//= require jquery
//= require jquery_ujs
//= require jquery.ui.sortable
//= require bootstrap-affix
//= require bootstrap-scrollspy
//= require bootstrap-modal
//= require bootstrap-dropdown
//= require bootstrap-wysihtml5
//= require_tree .


$(function(){
  $('.sortable').sortable({
      axis: 'y',
      handle: '.icon-reorder',
      items:'.sortableItem',
      update: function(e, ui){
        var itemID = ui.item.data('item-id'),
        position = ui.item.index(),
        url = $(e.target).closest('.sortable').data('url');

        $.post(url, {item_id: itemID, row_order_position: position})
      }
  });

  $('#filter').livefilter({selector:'section, section .question'});

  $('#editor').wysihtml5();
})
