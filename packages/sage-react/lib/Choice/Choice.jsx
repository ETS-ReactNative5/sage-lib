import React from 'react';
import PropTypes from 'prop-types';
import classnames from 'classnames';
import { SageTokens } from '../configs';
import { ICON_ALIGNMENTS, TYPES } from './configs';

export const Choice = ({
  alignCenter,
  className,
  customContentClass,
  disabled,
  fullWidth,
  graphic,
  icon,
  isActive,
  linkText,
  radioConfigs,
  subtext,
  target,
  text,
  type,
  verticalAlignIcon,
  ...rest
}) => {
  const baseClass = 'sage-choice';
  const isIconType = type && type === TYPES.ICON;
  const isRadioType = type && type === TYPES.RADIO;

  const classNames = classnames(
    baseClass,
    className,
    {
      [`${baseClass}--active`]: isActive,
      [`${baseClass}--align-center`]: isIconType && alignCenter,
      [`${baseClass}--${type}`]: type && !isIconType,
      [`${baseClass}--icon-${icon}`]: isIconType && icon,
      [`${baseClass}--full-width`]: fullWidth,
      [`${baseClass}--vertical-align-icon-${verticalAlignIcon}`]: verticalAlignIcon && (isIconType || isRadioType),
    }
  );

  const attrs = {
    'aria-controls': target,
    'aria-selected': isActive,
    className: classNames,
    'data-js-tabs-target': target,
    disabled,
    for: radioConfigs.id,
    ...rest,
  };

  // is_label = component.radio_configs.present?
  // is_link = component.attributes&.has_key?(:href)
  // is_button = !is_link and !is_label
  // html_tag = component.content.present? ? "div" : "button"
  // if is_link
  //   html_tag = "a"
  // elsif is_label
  //   html_tag = "label"
  // end

  const hasRadioConfigs = (radioConfigs.name && radioConfigs.id && radioConfigs.value);
  const isLabel = hasRadioConfigs;
  // const isLink = ('href' in rest.attributes);
  // const isButton = !isLink && !isLabel;
  let TagType = 'div';
  // if (isLink) TagType = 'a';
  if (isLabel) TagType = 'label';

  return (
    <TagType className={classNames} {...attrs}>
      {hasRadioConfigs && (
        <div className="sage-choice__radio visually-hidden">
          <input
            type="radio"
            name={radioConfigs.name}
            id={radioConfigs.id}
            value={radioConfigs.value}
            checked={isActive}
          />
        </div>
      )}
      {graphic && (
        <span className="sage-choice__graphic">
          <img src={graphic} alt="" />
        </span>
      )}
      <div className={`sage-choice__content ${customContentClass}`}>
        {text && (
          <em className="sage-choice__text">
            {text}
          </em>
        )}
        {subtext && (
          <span className="sage-choice__subtext">
            {subtext}
          </span>
        )}
      </div>
      {linkText && (
        <span className="sage-choice__link-text">
          {linkText}
        </span>
      )}
    </TagType>
  );
};

Choice.TYPES = TYPES;
Choice.ICON_ALIGNMENTS = ICON_ALIGNMENTS;

Choice.defaultProps = {
  alignCenter: false,
  className: '',
  customContentClass: '',
  disabled: false,
  fullWidth: false,
  graphic: null,
  icon: null,
  isActive: false,
  linkText: null,
  radioConfigs: {
    name: null,
    id: null,
    value: null,
  },
  subtext: null,
  target: null,
  type: null,
  verticalAlignIcon: ICON_ALIGNMENTS.DEFAULT,
};

Choice.propTypes = {
  alignCenter: PropTypes.bool,
  className: PropTypes.string,
  customContentClass: PropTypes.string,
  disabled: PropTypes.bool,
  fullWidth: PropTypes.bool,
  graphic: PropTypes.string,
  icon: PropTypes.oneOf(Object.values(SageTokens.ICONS)),
  isActive: PropTypes.bool,
  linkText: PropTypes.string,
  radioConfigs: PropTypes.shape({
    name: PropTypes.string,
    id: PropTypes.string,
    value: PropTypes.string,
  }),
  subtext: PropTypes.string,
  target: PropTypes.string,
  text: PropTypes.string.isRequired,
  type: PropTypes.oneOf(Object.values(Choice.TYPES)),
  verticalAlignIcon: PropTypes.oneOf(Object.values(Choice.ICON_ALIGNMENTS))
};
