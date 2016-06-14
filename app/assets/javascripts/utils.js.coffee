# app/assets/javascripts/utils.js.coffee

@amountFormat = (amount) ->
  '$ ' + Number(amount).toLocaleString()

@doneButton = (done) ->
  if done
    'btn btn-success'
  else
    'btn btn-default'
