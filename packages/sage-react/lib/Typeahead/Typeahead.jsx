import React, { useState, useRef, useEffect } from 'react';
import PropTypes from 'prop-types';

import Search from '../Search';
import TypeaheadPanel from './TypeaheadPanel';
import { useFocusTrap } from '../hooks';

const MAXIMUM_RESULTS = 5;

const Typeahead = ({
  items,
  ...rest
}) => {
  const [searchValue, setSearchValue] = useState('');
  const [searchResults, setSearchResults] = useState([]);
  const [open, setOpen] = useState(false);
  const containerRef = useRef(null);

  useFocusTrap({
    active: open,
    setActive: setOpen,
    containerRef: containerRef
  });

  useEffect(() => {
    setSearchResults(
      items.filter(item =>
        item.title.toUpperCase().includes(
          searchValue.toUpperCase()
        )
      ).slice(0, MAXIMUM_RESULTS)
    );
  }, [searchValue]);

  return (
    <div
      className="sage-typeahead"
      ref={containerRef}
      {...rest}
    >
      <Search
        contained={true}
        onChange={e => {
          setSearchValue(e.target.value);
          e.target.value.length ? setOpen(true) : setOpen(false);
        }}
        onClear={() => {
          setSearchValue('');
          setOpen(false);
        }}
        value={searchValue}
      />
      {open
        && <TypeaheadPanel
            searchValue={searchValue}
            items={searchResults}
          />
      }
    </div>
  );
};

Typeahead.defaultProps = {
};

Typeahead.propTypes = {
  items: TypeaheadPanel.propTypes.items
};

export default Typeahead;
