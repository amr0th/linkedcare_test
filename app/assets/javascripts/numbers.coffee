$(document).ready ->
  $.formUtils.addValidator
    name: 'not_selected'
    validatorFunction: (value, $el, config, language, $form) ->
      arr_values = []
      fields_ok = true
      $('.validate_equal').each ->
        if $.inArray($(this).val(), arr_values) == -1
          arr_values.push $(this).val()
        else
          fields_ok = false
          return
        return
      fields_ok
  return

$(document).ready ->
  $.validate
    form: '#numbers_form'
  return