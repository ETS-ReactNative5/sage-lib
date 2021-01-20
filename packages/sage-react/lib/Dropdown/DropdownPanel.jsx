/* eslint-disable jsx-a11y/no-noninteractive-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */
import React, { useRef } from 'react';
import PropTypes from 'prop-types';
import classnames from 'classnames';

export const DropdownPanel = ({
  children,
  coords,
  modifier,
  onClickScreen,
  onExit,
}) => {
  const menuEl = useRef(null);
  const classNames = classnames(
    'sage-dropdown__panel',
    {
      [`sage-dropdown__panel--${modifier}`]: modifier,
    }
  );

  const handlePanelClick = (e) => {
    if (e.target === menuEl.current) {
      onClickScreen();
    }
  };

  const positioningCoords = { ...coords };

  return (
    <div ref={menuEl} className={classNames} onClick={handlePanelClick} role="dialog" style={{ ...positioningCoords }}>
      {children && React.cloneElement(children, { onExit })}
    </div>
  );
};

DropdownPanel.defaultProps = {
  coords: null,
  children: null,
  modifier: null,
  onClickScreen: (evt) => evt,
  onExit: (evt) => evt,
};

DropdownPanel.propTypes = {
  children: PropTypes.node,
  coords: PropTypes.shape({
    top: PropTypes.number,
    left: PropTypes.number,
  }),
  modifier: PropTypes.string,
  onClickScreen: PropTypes.func,
  onExit: PropTypes.func,
};
