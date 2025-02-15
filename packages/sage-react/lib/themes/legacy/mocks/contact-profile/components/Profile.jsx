import React from 'react';
import PropTypes from 'prop-types';
import uuid from 'react-uuid';
import {
  Avatar,
  Button,
  CopyButton,
  Dropdown,
  OptionsDropdown,
  Panel,
  SageClassnames,
  Tooltip,
} from '../../..';
import { mockProfileActions, mockProfileMoreActions } from '../dataHelper';

export const Profile = ({ avatarImage, email, initials, name }) => (
  <>
    <Panel.Block className={SageClassnames.TYPE_ALIGN_CENTER}>
      <Avatar
        badge={true}
        centered={true}
        image={{
          src: avatarImage,
          alt: name,
        }}
        initials={initials}
        size="68px"
        className={SageClassnames.SPACERS.SM_BOTTOM}
      />
      <h3 className={`${SageClassnames.TYPE.HEADING_4} ${SageClassnames.TYPE_COLORS.CHARCOAL_500}`}>
        {name}
      </h3>
      <CopyButton borderless={true}>
        {email}
      </CopyButton>
    </Panel.Block>
    <Button.Group
      gap={Button.Group.GAP_OPTIONS.SM}
      align={Button.Group.ALIGN_OPTIONS.CENTER}
    >
      {mockProfileActions.map(({ href, icon, label }) => (
        <React.Fragment key={uuid()}>
          <Tooltip content={label}>
            <Button
              color={Button.COLORS.SECONDARY}
              href={href}
              icon={icon}
              iconOnly={true}
              raised={false}
            >
              {label}
            </Button>
          </Tooltip>
        </React.Fragment>
      ))}
      <OptionsDropdown
        data-js-tooltip="More"
        options={mockProfileMoreActions}
        triggerButtonSubtle={false}
        align={Dropdown.POSITIONS.RIGHT}
      />
    </Button.Group>
  </>
);

Profile.defaultProps = {};

Profile.propTypes = {
  avatarImage: PropTypes.string.isRequired,
  email: PropTypes.string.isRequired,
  initials: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
};
