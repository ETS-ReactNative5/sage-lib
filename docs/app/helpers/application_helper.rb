require "pp"

module ApplicationHelper

  def current_page_foundations?
    current_page?(pages_foundation_path(:ux_values)) || (params[:title] && current_page?(pages_foundation_path(params[:title])))
  end

  def current_page_content?
    current_page?(pages_content_path(:voice_tone)) || (params[:title] && current_page?(pages_content_path(params[:title])))
  end

  def current_page_experiences?
    current_page?(pages_experiences_path(:onboarding)) || (params[:title] && current_page?(pages_experiences_path(params[:title])))
  end

  def current_page_design?
    current_page?(pages_design_path(:color)) || (params[:title] && current_page?(pages_design_path(params[:title])))
  end

  def current_page_patterns?
    current_page?(pages_patterns_path(:panels_cards)) || (params[:title] && current_page?(pages_patterns_path(params[:title])))
  end

  def current_page_interactions?
    current_page?(pages_interactions_path(:container)) || (params[:title] && current_page?(pages_interactions_path(params[:title])))
  end

  def current_page_helpers?
    current_page?(pages_helpers_path(:spacing)) || (params[:title] && current_page?(pages_helpers_path(params[:title])))
  end

  def current_page_layouts?
    current_page?(pages_layout_path) || (params[:title] && current_page?(pages_layout_path(params[:title])))
  end

  def current_page_components?
    current_page?(pages_components_path) || (params[:title] && current_page?(pages_component_path(params[:title])))
  end

  def current_page_mocks?
    current_page?(pages_mocks_path) || (params[:alias] && current_page?(pages_mock_path(params[:alias])))
  end

  def storybook_url(slug)
    uri = URI(Rails.application.config.storybook_root_url)
    uri.port = 4110 if SageRails.next_theme? && Rails.env != 'production'

    "#{uri}#{slug}"
  end
end
