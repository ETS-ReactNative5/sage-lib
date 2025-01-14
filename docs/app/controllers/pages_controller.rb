class PagesController < ApplicationController
  def index
    render(layout: 'home')
  end

  def foundation
    render params[:title]
  end

  def content
    render params[:title]
  end

  def experiences
    render params[:title]
  end

  def design
    render params[:title]
  end

  def mock
    @alias = params[:alias]

    render(layout: 'mocks')
  end

  def mocks
    render(layout: 'mocks')
  end

  def patterns
    render params[:title]
  end

  def interactions
    render params[:title]
  end

  def helpers
    render params[:title]
  end

  def patterns
    render params[:title]
  end

  def interactions
    render params[:title]
  end

  def helpers
    render params[:title]
  end

  def component
    @title = params[:title]
  end

  def components
  end

  def sandbox
    render(layout: 'sandbox')
  end

  def utilities
  end

  def search
    @search = params[:search]
    
    render(layout: 'full_page')
  end

  def layouts
  end

  def layout
    @title = params[:title]
  end

  # Generator Pages
  def status
    render(layout: 'full_page')
  end

  def support
    render(layout: 'full_page')
  end

  def breakout
    @type = params[:type]
    @title = params[:title]

    render(layout: 'breakout')
  end
end
