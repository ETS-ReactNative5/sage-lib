import React from 'react';
import PropTypes from 'prop-types';
import classnames from 'classnames';
import { SageTokens } from '../configs';
import { Link } from '../index';
import ButtonGroup from './ButtonGroup';
import { BUTTON_COLORS, BUTTON_ICON_POSITIONS } from './configs';

const Button = ({
  alignEnd,
  children,
  className,
  color,
  disabled,
  icon,
  iconOnly,
  iconPosition,
  noShadow,
  raised,
  small,
  subtle,
  ...rest
}) => {
  const { to, href } = rest;
  const isLink = to || href;
  const isPrimary = color === BUTTON_COLORS.PRIMARY;
  const TagName = isLink ? Link : 'button';
  const blockName = 'sage-btn';
  const classNames = classnames(
    blockName,
    className,
    {
      [`${blockName}--align-end`]: alignEnd,
      [`${blockName}--${color}`]: color,
      [`${blockName}--no-shadow`]: noShadow && !subtle && isPrimary,
      [`${blockName}--raised`]: raised && !subtle && !isPrimary,
      [`${blockName}--small`]: small,
      [`${blockName}--subtle`]: subtle,
      [`${blockName}--icon-${iconPosition}-${icon}`]: icon && !iconOnly,
      [`${blockName}--icon-only-${icon}`]: icon && iconOnly,
      disabled: isLink && disabled,
    }
  );

  return (
    <TagName
      className={classNames}
      aria-disabled={isLink && disabled}
      disabled={!isLink && disabled}
      {...rest}
    >
      {iconOnly ? (
        <span className="visually-hidden">
          {children}
        </span>
      ) : (
        <span className="sage-btn__truncate-text">
          {children}
        </span>
      )}
    </TagName>
  );
};

Button.Group = ButtonGroup;
Button.COLORS = BUTTON_COLORS;
Button.ICON_POSITIONS = BUTTON_ICON_POSITIONS;

Button.defaultProps = {
  alignEnd: false,
  children: null,
  className: '',
  color: BUTTON_COLORS.PRIMARY,
  disabled: false,
  icon: null,
  iconOnly: false,
  iconPosition: BUTTON_ICON_POSITIONS.LEFT,
  noShadow: null,
  onClick: null,
  raised: null,
  small: false,
  subtle: false,
  type: 'button',
};

Button.propTypes = {
  alignEnd: PropTypes.bool,
  children: PropTypes.node,
  className: PropTypes.string,
  color: PropTypes.oneOf(Object.values(BUTTON_COLORS)),
  disabled: PropTypes.bool,
  icon: PropTypes.oneOf(Object.values(SageTokens.ICONS)),
  iconOnly: PropTypes.bool,
  iconPosition: PropTypes.oneOf(Object.values(BUTTON_ICON_POSITIONS)),
  noShadow: PropTypes.bool,
  onClick: PropTypes.func,
  raised: PropTypes.bool,
  small: PropTypes.bool,
  subtle: PropTypes.bool,
  type: PropTypes.string,
};

export default Button;
