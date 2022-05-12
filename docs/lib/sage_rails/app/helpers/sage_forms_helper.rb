module SageForms
   module RemoveSimpleFormGeneratedCSSClasses
    def additional_classes
      @additional_classes = []
    end
  end

  module ModifySimpleFormSelect
    def input(wrapper_options = nil)
      input_options[:include_blank] = "(None Specified)" if input_options[:include_blank] === true
      input_options[:prompt] = "-- Please Select #{attribute_name.to_s.titleize} --"
      super
    end
  end
end
