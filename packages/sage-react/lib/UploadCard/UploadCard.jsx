import React, { useEffect, useState } from 'react';
import PropTypes from 'prop-types';
import classnames from 'classnames';
import Button from '../Button';
import Icon from '../Icon';
import { SageTokens } from '../configs';

const UploadCard = ({
  acceptedFiles,
  className,
  errors,
  inputProps,
  replaceLabel,
  rootProps,
  selectionLabel,
  selectionSubtext,
  ...rest
}) => {
  const [filesSelected, updateFilesSelected] = useState(acceptedFiles && acceptedFiles.length > 0);
  useEffect(() => {
    updateFilesSelected(acceptedFiles && acceptedFiles.length > 0);
  }, [acceptedFiles, updateFilesSelected]);

  const classNames = classnames(
    'sage-upload-card',
    className,
    {
      'sage-upload-card--selected': filesSelected,
      'sage-upload-card--error': errors,
    }
  );

  return (
    <div className={classNames} {...rootProps} {...rest}>
      <div className="sage-upload-card__dropzone">
        <input className="sage-upload-card__input" {...inputProps} />
        {filesSelected ? (
          <>
            <div className="sage-upload-card__preview sage-icon-card sage-icon-card--draft">
              <Icon
                icon={Icon.ICONS.FILE}
                size={Icon.SIZES['4XL']}
              />
            </div>
            <div className="sage-upload-card__body">
              {acceptedFiles.map(({ name, size }, i) => {
                // Limit to one file for now
                if (i > 0) {
                  return null;
                }

                return (
                  <React.Fragment key={name}>
                    <p className="sage-upload-card__text">{name}</p>
                    <Button
                      color={Button.COLORS.PRIMARY}
                      icon={SageTokens.ICONS.CARET_DOWN}
                      iconPosition={Button.ICON_POSITIONS.RIGHT}
                      subtle={true}
                    >
                      Replace file
                    </Button>
                    <p className="sage-upload-card__subtext">
                      {`File size: ${size}B`}
                    </p>
                  </React.Fragment>
                );
              })}
            </div>
          </>
        ) : (
          <div className="sage-upload-card__body">
            <Icon
              className="sage-upload-card__icon"
              icon={Icon.ICONS.FILE}
              size={Icon.SIZES['4XL']}
              color={SageTokens.COLOR_SLIDERS.GREY_500}
            />
            <Button
              icon={SageTokens.ICONS.CARET_DOWN}
              color={Button.COLORS.PRIMARY}
              iconPosition={Button.ICON_POSITIONS.RIGHT}
              subtle={true}
            >
              {selectionLabel}
            </Button>
            <p className="sage-upload-card__subtext">
              {selectionSubtext}
            </p>
          </div>
        )}
      </div>
      {errors && (
        <div className="sage-upload-card__errors">
          {errors.map(({ code, message }) => (
            <p key={code}>{message}</p>
          ))}
        </div>
      )}
    </div>
  );
};

UploadCard.defaultProps = {
  acceptedFiles: [],
  className: null,
  errors: null,
  inputProps: null,
  replaceLabel: 'Replace file',
  rootProps: null,
  selectionLabel: 'Select a file',
  selectionSubtext: null,
};

UploadCard.propTypes = {
  acceptedFiles: PropTypes.arrayOf(PropTypes.shape),
  className: PropTypes.string,
  errors: PropTypes.arrayOf(PropTypes.shape({
    code: PropTypes.string,
    message: PropTypes.string,
  })),
  inputProps: PropTypes.shape({}),
  replaceLabel: PropTypes.string,
  rootProps: PropTypes.shape({}),
  selectionLabel: PropTypes.string,
  selectionSubtext: PropTypes.string,
};

export default UploadCard;