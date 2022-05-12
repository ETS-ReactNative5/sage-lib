class SageForms::SageBooleanInput < SimpleForm::Inputs::BooleanInput
  include RemoveSimpleFormGeneratedCSSClasses

  def nested_boolean_style?
    false
  end
end
