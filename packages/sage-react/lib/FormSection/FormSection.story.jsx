import React from 'react';
import { storiesOf } from '@storybook/react';
import { Button } from '../Button';
import { FormSection } from './FormSection';
import { Input } from '../Input';
import { withKnobs, text } from '@storybook/addon-knobs';
import { centerXY } from '../story-support/decorators';

storiesOf('Sage/Form Section', module)
  .addDecorator(withKnobs)
  .addDecorator(centerXY)
  .add('Default', () => (
    <div style={{ width: '75%' }}>
      <FormSection
        title={text('Title', 'Sign in')}
        subtitle={text('Subtitle', 'Log in to access our applicaiton and all its great features!')}
      >
        <Input id="fs-email" label="Email/username" />
        <Input id="fs-password" label="Password" type="password" />
        <Button color="primary">
          Log in
        </Button>
      </FormSection>
    </div>
  ));
