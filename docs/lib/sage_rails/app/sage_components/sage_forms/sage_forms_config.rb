class SageForms::SageFormsConfig
  def self.build_wrappers(config)
    config.custom_inputs_namespaces << "SageInputs"

    config.wrappers :sage_input, class: "sage-input", error_class: "sage-form-field--error" do |b|
      b.use :html5
      b.use :placeholder
      b.optional :maxlength
      b.optional :pattern
      b.optional :min_max
      b.optional :readonly

      b.use :input, class: "sage-input__field"
      b.use :label, class: "sage-input__label"

      b.use :error, wrap_with: { tag: "div", class: "sage-input__message" }
      b.use :hint,  wrap_with: { tag: "div", class: "sage-input__message" }
    end

    config.wrappers :sage_text, class: "sage-textarea", error_class: "sage-textarea--error" do |b|
      b.use :html5
      b.optional :readonly
      b.optional :maxlength
      b.use :placeholder

      b.use :input, class: "sage-textarea__field"
      b.use :label, class: "sage-textarea__label"

      b.use :error, wrap_with: { tag: "div", class: "sage-textarea__message" }
      b.use :hint,  wrap_with: { tag: "div", class: "sage-textarea__message" }
    end

    config.wrappers :sage_checkbox, class: "sage-checkbox", error_class: "sage-checkbox--error" do |b|
      b.use :html5
      b.optional :readonly

      b.use :input, class: "sage-checkbox__input"
      b.use :label, class: "sage-checkbox__label"

      b.use :error, wrap_with: { tag: "div", class: "sage-checkbox__message" }
      b.use :hint,  wrap_with: { tag: "div", class: "sage-checkbox__message" }
    end

    config.wrappers :sage_radio, class: "sage-radio", error_class: "sage-radio--error" do |b|
      b.use :html5
      b.optional :readonly

      b.use :input, class: "sage-radio__input"
      b.use :label, class: "sage-radio__label"

      b.use :error, wrap_with: { tag: "div", class: "sage-radio__message" }
      b.use :hint,  wrap_with: { tag: "div", class: "sage-radio__message" }
    end

    config.wrappers :sage_switch, class: "sage-switch", error_class: "sage-switch--error" do |b|
      b.use :html5
      b.optional :readonly

      b.use :input, class: "sage-switch__input"
      b.use :label, class: "sage-switch__label"

      b.use :error, wrap_with: { tag: "div", class: "sage-switch__message" }
      b.use :hint,  wrap_with: { tag: "div", class: "sage-switch__message" }
    end

    config.wrappers :sage_select, class: "sage-select", error_class: "sage-select--error", wrapper_html: { "data-js-select": true } do |b|
      b.use :html5
      b.optional :readonly

      b.use :input, class: "sage-select__field"
      b.use :label, class: "sage-select__label"

      b.use :error, wrap_with: { tag: "div", class: "sage-select__message" }
      b.use :hint,  wrap_with: { tag: "div", class: "sage-select__message" }
    end
  end
end
