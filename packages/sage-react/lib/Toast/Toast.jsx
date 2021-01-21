import React, { useEffect, useState } from 'react';
import uuid from 'react-uuid';
import classnames from 'classnames';
import PropTypes from 'prop-types';
import { Button } from '../Button';
import { Icon } from '../Icon';
import { TOAST_COLORS } from './configs';

export const Toast = ({
  className,
  color,
  description,
  isActive,
  onDismiss,
  timeout,
  title,
}) => {
  const [isDismissed, setDismissed] = useState(!isActive);

  const dismiss = (dismissed) => {
    if (dismissed) {
      if (onDismiss) {
        onDismiss();
      }

      setDismissed(true);
    } else {
      setDismissed(false);
    }
  };

  const onClickDismiss = () => {
    dismiss(true);
  };

  // Auto dismiss when applicable
  useEffect(() => {
    if (timeout && isActive) {
      setTimeout(() => {
        dismiss(true);
      }, timeout);
    }
  }, [timeout, isActive]);

  // Toggle dismissed when isActive changes
  useEffect(() => {
    dismiss(!isActive);
  }, [isActive]);

  const classNames = classnames(
    'sage-toast',
    className,
    {
      [`sage-toast--style-${color}`]: color,
    }
  );

  const id = uuid();

  return !isDismissed && (
    <dialog open className={classNames} aria-labelledby={`sage-toast-label-${id}`}>
      <output>
        <p className="sage-toast__value" id={`sage-toast-label-${id}`}>
          {title} {description}
        </p>
      </output>
      <Button
        color={Button.COLORS.SECONDARY}
        icon={Icon.ICONS.REMOVE}
        iconOnly={true}
        onClick={onClickDismiss}
        subtle={true}
      >
        Dismiss message
      </Button>
    </dialog>
  );
};

Toast.COLORS = TOAST_COLORS;

Toast.defaultProps = {
  className: null,
  color: TOAST_COLORS.DEFAULT,
  description: null,
  isActive: false,
  onDismiss: (evt) => evt,
  timeout: 3500,
  title: null,
};

Toast.propTypes = {
  className: PropTypes.string,
  color: PropTypes.oneOf(Object.values(TOAST_COLORS)),
  description: PropTypes.string,
  isActive: PropTypes.bool,
  onDismiss: PropTypes.func,
  timeout: PropTypes.number,
  title: PropTypes.string,
};
