import React from 'react';
import PropTypes from 'prop-types';

const tagPropTypes = PropTypes.oneOfType([
  PropTypes.string,
  PropTypes.elementType,
]);

const Link = ({
  children,
  tag,
  ...rest
}) => {
  const SelfTag = tag || 'a';
  return (
    <SelfTag {...rest}>
      {children}
    </SelfTag>
  );
};

Link.defaultProps = {
  children: null,
  tag: null,
};

Link.tagPropTypes = tagPropTypes;

Link.propTypes = {
  children: PropTypes.node,
  tag: tagPropTypes,
};

export default Link;
