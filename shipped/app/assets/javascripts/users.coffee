# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
	$(document).on 'ajax:success', '.delete_ship', ->
		$(this).closest('.ship').remove()

	$('.modal').modal()

	$('.new_ship').on 'ajax:success', ->
		$('.modal').modal('close')

	$('.delete_ship').on 'ajax:success', ->
		$('.modal').modal('close') 

	$(document).on "ajax:error", (xhr, data)->
		console.log(data.responseJSON.error)
		message = '';
		for value in data.responseJSON.error
			message += value + "<br>"
		$('#new_ship_modal').html(message)