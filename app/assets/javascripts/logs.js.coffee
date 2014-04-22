$(document).ready ->
  prepare_calendar()
 
prepare_calendar = () ->
  time = new Date().getTime()
  calendar = $('#calendar').calendar({
    events_source: [
      {
        "id": 293,
        "title": "Event 1",
        "url": "http://example.com",
        "class": "event-important",
        "start": time,
        "end": time
      }
      {
        "id": 294,
        "title": "Event 2",
        "url": "http://example.com",
        "class": "event-important",
        "start": time,
        "end": time
      }
    ],
    tmpl_path: 'calendar/',
    onAfterEventsLoad: (events) ->
      if !events
        return
      list = $('#eventlist')
      list.html('')
 
      $.each events, (key, val) ->
        $(document.createElement('li'))
          .html('<a href="' + val.url + '">' + val.title + '</a>')
          .appendTo(list)
    ,
    onAfterViewLoad: (view) ->
      $('.page-header h3').text(this.getTitle())
      $('.btn-group button').removeClass('active')
      $('button[data-calendar-view="' + view + '"]').addClass('active')
    ,
    classes: {
      months: {
        general: 'label'
      }
    }
  })
 
  $('.btn-group button[data-calendar-nav]').each () ->
    $(this).click () ->
      calendar.navigate($(this).data('calendar-nav'))
      
jQuery ->
  $('#logs').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#logs').data('source')