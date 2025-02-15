module SageSchemas

  # Miscellaneous

  ICON = Set.new(SageTokens::ICONS)

  ICON_SIZE = Set.new(SageTokens::ICON_SIZES)

  COLORS = Set.new(SageTokens::COLORS)

  COLOR_SLIDER = Set.new(SageTokens::COLOR_SLIDERS)

  CONTAINER_SIZE = [:optional, Set.new(SageTokens::CONTAINER_SIZES)]

  GRID_GAP_OPTION = Set.new(SageTokens::GRID_GAP_OPTIONS)

  GRID_TEMPLATE = Set.new(SageTokens::GRID_TEMPLATES)

  HERO_SIZE = Set.new(SageTokens::HERO_SIZES)

  STATUSES = Set.new(SageTokens::STATUSES)

  SPACER = {
    top: [:optional, Set.new(SageTokens::SPACER_SIZES)],
    right: [:optional, Set.new(SageTokens::SPACER_SIZES)],
    bottom: [:optional, Set.new(SageTokens::SPACER_SIZES)],
    left: [:optional, Set.new(SageTokens::SPACER_SIZES)],
  }

  # Components

  AVATAR = {
    badge: [:optional, TrueClass],
    centered: [:optional, TrueClass],
    color: [:optional, NilClass, SageSchemas::COLORS],
    image: [:optional, {alt: [:optional, String], src: String, id: [:optional, String]}],
    initials: [:optional, String],
    lazy_load_initials: [:optional, NilClass, TrueClass],
    size: [:optional, String],
  }

  BUTTON = {
    align: [:optional, NilClass, String],
    attributes: [:optional, NilClass, Hash],
    custom_content_class: [:optional, NilClass, String],
    disabled: [:optional, NilClass, TrueClass],
    full_width: [:optional, NilClass, TrueClass],
    icon: [:optional, NilClass, { name: String, style: Set.new(["left", "right", "only"]) }],
    spinner_on_submit: [:optional, NilClass, String],
    style: [:optional, NilClass, Set.new(["accent", "primary", "secondary", "danger"])],
    value: [:optional, String],
    # TODO: Deprecations in Next
    subtle: [:optional, NilClass, TrueClass],
    raised: [:optional, NilClass, TrueClass],
    small: [:optional, NilClass, TrueClass],
  }

  CHOICE = {
    active: [:optional, NilClass, TrueClass],
    align_center: [:optional, TrueClass],
    attributes: [:optional, NilClass, Hash],
    custom_content_class: [:optional, NilClass, String],
    disabled: [:optional, NilClass, TrueClass],
    graphic: [:optional, NilClass, String],
    icon: [:optional, NilClass, String],
    link_text: [:optional, NilClass, String],
    subtext: [:optional, NilClass, String],
    target: [:optional, NilClass, String],
    text: [:optional, NilClass, String],
    type: [:optional, NilClass, Set.new(["arrow", "graphic", "icon", "radio"])],
    vertical_align_icon: [:optional, NilClass, Set.new(["start"])],
    radio_configs: [:optional, NilClass, {
      value: String,
      name: String,
      id: String,
    }]
  }

  DROPDOWN_ITEM = {
    attributes: [:optional, Hash],
    icon: [:optional, NilClass, String],
    is_heading: [:optional, TrueClass],
    modifiers: [:optional, NilClass, [[Set.new(["disabled", "border-before", "border-after", nil])]]],
    selected: [:optional, TrueClass],
    style: [:optional, NilClass, Set.new(["primary", "danger", "muted"])],
    value: [:optional, {}, String],
  }

  DROPDOWN_TRIGGER_TYPE = [:optional, NilClass, Set.new(["select", "select-labeled"])]

  DROPDOWN_TRIGGER = {
    label: [:optional, NilClass, String],
    type: DROPDOWN_TRIGGER_TYPE,
    value: [:optional, NilClass, String],
    width: [:optional, NilClass, String],
  }

  DROPDOWN = {
    align: [:optional, Set.new(["left", "center", "right"])],
    contained: [:optional, NilClass, TrueClass],
    customized: [:optional, NilClass, TrueClass],
    custom_modifier: [:optional, NilClass, Set.new(["actions", "sort"])],
    full_width_panel: [:optional, NilClass, TrueClass],
    id: [:optional, NilClass, String],
    items: [:optional, NilClass, [[SageSchemas::DROPDOWN_ITEM]]],
    panel_size: [:optional, NilClass, Set.new(["small"])],
    panel_width: [:optional, NilClass, String],
    panel_type: [:optional, NilClass, Set.new(["custom", "dropdown", "choice", "checkbox", "status", "searchable"])],
    search: [:optional, NilClass, TrueClass],
    trigger: [:optional, NilClass, DROPDOWN_TRIGGER],
    trigger_type: DROPDOWN_TRIGGER_TYPE,
    wrap_footer: [:optional, NilClass, TrueClass],
  }

  FRAME = {
    align: [:optional, NilClass, Set.new(SageTokens::FRAME_ALIGNMENTS)],
    background: [:optional, NilClass, Set.new(SageTokens::COLOR_SLIDERS), String],
    border: [:optional, NilClass, Set.new(SageTokens::FRAME_BORDERS)],
    border_radius: [:optional, NilClass, Set.new(SageTokens::FRAME_BORDER_RADII)],
    direction: [:optional, NilClass, Set.new(SageTokens::FRAME_DIRECTIONS)],
    gap: [:optional, NilClass, Set.new(SageTokens::FRAME_SPACINGS)],
    padding: [:optional, NilClass, Set.new(SageTokens::FRAME_SPACINGS)],
    tag: [:optional, NilClass, String],
    width: [:optional, NilClass, String, Set.new(SageTokens::FRAME_WIDTHS)],
    width_ratio: [:optional, NilClass, String],
  }

  LIST_ITEM = {
    id: [:optional, Integer, String],
    more_actions: [:optional, NilClass, SageSchemas::DROPDOWN],
    sortable: [:optional, NilClass, TrueClass],
    sortable_update_url: [:optional, NilClass, String],
  }

  LIST = {
    items: [:optional, [[SageSchemas::LIST_ITEM]]],
    sortable_resource: [:optional, NilClass, String],
    tag: [:optional, NilClass, Set.new(["ul", "ol"])],
  }

  PANEL_FIGURE = {
    aspect_ratio: [:optional, NilClass, Integer, Float],
    background_color: [:optional, NilClass, String],
    bleed: [:optional, Set.new(["top", "bottom", "sides"])],
    is_wistia: [:optional, TrueClass],
    padded: [:optional, NilClass, TrueClass],
  }

  MEDIA_TILE = {
    actions_dropdown_items: [:optional, [[SageSchemas::DROPDOWN_ITEM]]],
    actions_custom: [:optional, NilClass, String],
    body: [:optional, NilClass, String],
    caption: [:optional, NilClass, String],
    footer: [:optional, NilClass, String],
    media: [:optional, NilClass, String],
    media_configs: [:optional, NilClass, SageSchemas::PANEL_FIGURE],
    tile_link: [:optional, NilClass, Hash],
    title: [:optional, NilClass, String],
    title_tag: [:optional, NilClass, Set.new(["h1", "h2", "h3", "h4", "h5", "h5", "h6"])],
  }

  TAB = {
    active: [:optional, NilClass, TrueClass],
    attributes: [:optional, NilClass, Hash],
    disabled: [:optional, NilClass, TrueClass],
    icon: [:optional, NilClass, String],
    target: [:optional, NilClass, String],
    text: String,
  }

  # Accepts any Collection that can be paginated
  def self.can_paginate?(value)
    value.respond_to?(:total_pages)
  end
end
