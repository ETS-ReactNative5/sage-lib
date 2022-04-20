require('../test/testHelper');

import React from 'react';
import { shallow } from 'enzyme';
import { Search } from './Search';

describe('Sage Search', () => {
  let component,
    defaultProps;

  beforeEach(() => {
    defaultProps = {
      label: 'Search',
      id: 'search-form-1',
      onChange: (data) => data,
      value: '',
    };

    component = shallow(
      <Search {...defaultProps} />
    );
  });

  describe('construction', () => {
    it('renders the component', () => {
      expect(component).toHaveLength(1);
    });
  });
});
