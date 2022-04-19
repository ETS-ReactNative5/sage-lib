import React from 'react';
import uuid from 'react-uuid';
import PropTypes from 'prop-types';
import classnames from 'classnames';
import { SageTokens } from '../configs';
import { CardListItem } from './CardListItem';
import { CARD_LIST_BLOCK_SPACING } from './configs';

export const CardList = ({
  children,
  className,
  itemClassName,
  itemGridGap,
  itemGridTemplate,
  items,
  blockSpacing,
  wrapItems,
  ...rest
}) => {
  const classNames = classnames(
    'sage-card__list',
    className,
    {
      [`sage-card__list--block-space-${blockSpacing}`]: blockSpacing,
    }
  );

  return (
    <ul
      className={classNames}
      {...rest}
    >
      {items && items.map((item) => (wrapItems ? (
        <CardListItem
          key={uuid()}
          className={itemClassName}
          gap={itemGridGap}
          gridTemplate={itemGridTemplate}
        >
          {item}
        </CardListItem>
      ) : (
        <React.Fragment key={uuid()}>
          {item}
        </React.Fragment>
      )))}
      {children}
    </ul>
  );
};

CardList.SPACING = CARD_LIST_BLOCK_SPACING;

CardList.defaultProps = {
  children: null,
  className: '',
  itemClassName: null,
  itemGridGap: null,
  itemGridTemplate: null,
  items: [],
  blockSpacing: CARD_LIST_BLOCK_SPACING.DEFAULT,
  wrapItems: true,
};

CardList.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
  items: PropTypes.arrayOf(PropTypes.node),
  itemClassName: PropTypes.string,
  itemGridGap: PropTypes.oneOf(Object.values(SageTokens.GRID_GAP_OPTIONS)),
  itemGridTemplate: PropTypes.oneOf(Object.values(SageTokens.GRID_TEMPLATES)),
  blockSpacing: PropTypes.oneOf(Object.values(CARD_LIST_BLOCK_SPACING)),
  wrapItems: PropTypes.bool,
};
