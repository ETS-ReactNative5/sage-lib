import React from 'react';
import PropTypes from 'prop-types';
import classnames from 'classnames';
import { DropdownTriggerDefault } from './DropdownTriggerDefault';

export const DropdownTrigger = ({
  children,
  disabled,
  icon,
  isLabelVisible,
  label,
  modifier,
  onClickTrigger,
  subtleButton,
  width,
}) => {
  const onClick = () => {
    onClickTrigger();
  };

  const classNames = classnames(
    'sage-dropdown__trigger',
    {
      [`sage-dropdown__trigger--${modifier}`]: modifier,
      'sage-dropdown__trigger--custom-width': width,
    }
  );

  const styles = {};
  if (width) {
    styles['--sage-dropdown-trigger-width'] = width;
  }

  return (
    <div className={classNames} style={{ ...styles }}>
      {children
        ? React.cloneElement(children, { onClick })
        : (
          <DropdownTriggerDefault
            disabled={disabled}
            icon={icon}
            isLabelVisible={isLabelVisible}
            label={label}
            onClick={onClickTrigger}
            subtle={subtleButton}
          />
        )}
    </div>
  );
};

DropdownTrigger.defaultProps = {
  children: null,
  disabled: false,
  icon: null,
  isLabelVisible: true,
  modifier: null,
  label: null,
  subtleButton: false,
  width: null,
};

DropdownTrigger.propTypes = {
  children: PropTypes.node,
  disabled: PropTypes.bool,
  icon: PropTypes.string,
  isLabelVisible: PropTypes.bool,
  label: PropTypes.oneOfType([PropTypes.string, PropTypes.node]),
  modifier: PropTypes.string,
  onClickTrigger: PropTypes.func.isRequired,
  subtleButton: PropTypes.bool,
  width: PropTypes.string,
};
