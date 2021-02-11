import React, { useState, useRef } from 'react';
import PropTypes from 'prop-types';
import uuid from 'react-uuid';
import { Search } from '../Search';
import { useFocusTrap, useDebounceEffect } from '../common/hooks';
import { TypeaheadPanel } from './TypeaheadPanel';

const A11Y_ID = uuid();

export const Typeahead = ({
  contained,
  items,
  searchFn,
  maxResults,
  placeholder,
  ...rest
}) => {
  const [searchValue, setSearchValue] = useState('');
  const [searchResults, setSearchResults] = useState([]);
  const [open, setOpen] = useState(false);
  const containerRef = useRef(null);

  useFocusTrap({
    active: open,
    containerRef,
    onDeactivateFn: () => setOpen(false),
    // NOTE: `returnFocus` prevents the search input from being refocused when Typeahead is closed,
    // which prevents blocking the 'scrollTo element' UX pattern that is used with this component
    returnFocus: false,
  });

  useDebounceEffect(async () => {
    const _value = searchValue.toUpperCase();
    let _results = [];
    if (searchFn) {
      _results = await searchFn(_value);
    } else {
      items.forEach((item) => {
        if (_results.length >= maxResults) return;
        if (item.title.toUpperCase().includes(_value)) _results.push(item);
      });
    }
    setSearchResults(_results);
  }, [searchValue], 200);

  const onSearchInteraction = (evt) => {
    setSearchValue(evt.target.value);
    if (evt.target.value.length) {
      setOpen(true);
    } else {
      setOpen(false);
    }
  };

  const onSearchClear = () => {
    setSearchValue('');
    setOpen(false);
  };

  const onPanelInteraction = (evt) => {
    if (evt.target.closest('button, a')) setOpen(false);
  };

  return (
    <div
      className="sage-typeahead"
      ref={containerRef}
      aria-expanded={open}
      aria-haspopup="listbox"
      aria-owns={A11Y_ID}
      {...rest}
    >
      <Search
        contained={contained}
        placeholder={placeholder}
        value={searchValue}
        onChange={onSearchInteraction}
        onKeyDown={(evt) => (evt.which === 13) && onSearchInteraction(evt)}
        onClear={onSearchClear}
      />
      {open && (
        <TypeaheadPanel
          items={searchResults}
          onClick={onPanelInteraction}
          onKeyDown={(evt) => (evt.which === 13) && onPanelInteraction(evt)}
          searchValue={searchValue}
          role="listbox"
          id={A11Y_ID}
        />
      )}
    </div>
  );
};

Typeahead.defaultProps = {
  contained: true,
  items: [],
  maxResults: 5,
  placeholder: 'Find',
  searchFn: null,
};

Typeahead.propTypes = {
  contained: PropTypes.bool,
  items: TypeaheadPanel.propTypes.items,
  maxResults: PropTypes.number,
  placeholder: PropTypes.string,
  searchFn: PropTypes.func,
};
