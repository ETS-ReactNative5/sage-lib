class SageFormInput < SageComponent
  set_attribute_schema({
    autocomplete: [:optional, String],
    disabled: [:optional, TrueClass],
    has_error: [:optional, TrueClass],
    has_placeholder: [:optional, TrueClass],
    hide_label: [:optional, TrueClass],
    icon: [:optional, NilClass, SageSchemas::ICON],
    id: String,
    input_mode: [:optional, String],
    input_type: [:optional, String],
    label_text: [:optional, String],
    max: [:optional, String],
    maxlength: [:optional, String],
    message_text: [:optional, String],
    min: [:optional, String],
    minlength: [:optional, String],
    name: [:optional, String],
    pattern: [:optional, String],
    placeholder: [:optional, String],
    prefix: [:optional, String],
    readonly: [:optional, TrueClass],
    required: [:optional, TrueClass],
    step: [:optional, String],
    suffix: [:optional, String],
    value: [:optional, String]
  })

  def sections
    %w(form_input_popover)
  end
end
