class SageForms::SageTextInput < SimpleForm::Inputs::TextInput
  include RemoveSimpleFormGeneratedCSSClasses;

  def input(_wrapper_options)
    super
  end
end
