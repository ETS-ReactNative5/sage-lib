class SageForms::SageStringInput < SimpleForm::Inputs::StringInput
  include RemoveSimpleFormGeneratedCSSClasses;

  def input(wrapper_options)
    if SageSageRails.next_theme?

      template.content_tag(
        :div,
        id: 'julian-test2',
        class: 'some-random-class',
        data: {
          next: SageRails.next_theme?
        }
        ) do
          @builder.text_field(attribute_name, wrapper_options)
        end
      else

    # input_html_options[:type] ||= input_type
  end

  def build_markup
    markup = []
  end

  def input_type
    :string
  end
end
