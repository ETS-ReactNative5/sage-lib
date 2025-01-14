import { CLASSNAMES_SPACERS } from './spacers';
import {
  CLASSNAMES_TYPE,
  CLASSNAME_TYPE_ALIGN_CENTER,
  CLASSNAME_TYPE_ALIGN_RIGHT,
  CLASSNAME_TYPE_BLOCK,
  CLASSNAMES_TYPE_COLORS,
  CLASSNAME_TRUNCATE_TEXT,
  CLASSNAME_STRIKETHROUGH,
} from './type';
import {
  CLASSNAMES_GRID_TEMPLATES,
  lookupGridTemplateClassname
} from './grid-templates';
import {
  CLASSNAMES_LINK,
} from './links';
import {
  CLASSNAMES_GAP,
} from './gap';

export const SageClassnames = {
  SPACERS: { ...CLASSNAMES_SPACERS },
  TYPE: { ...CLASSNAMES_TYPE },
  TYPE_ALIGN_CENTER: CLASSNAME_TYPE_ALIGN_CENTER,
  TYPE_ALIGN_RIGHT: CLASSNAME_TYPE_ALIGN_RIGHT,
  TYPE_BLOCK: CLASSNAME_TYPE_BLOCK,
  TYPE_COLORS: { ...CLASSNAMES_TYPE_COLORS },
  TYPE_STRIKETHROUGH: CLASSNAME_STRIKETHROUGH,
  TRUNCATE_TEXT: CLASSNAME_TRUNCATE_TEXT,
  GAP: { ...CLASSNAMES_GAP },
  GRID_TEMPLATES: { ...CLASSNAMES_GRID_TEMPLATES },
  LINK: { ...CLASSNAMES_LINK },
  CARD_GRID: 'sage-card-grid',
  PANEL_GRID: 'sage-panel-grid',
  lookupGridTemplate: lookupGridTemplateClassname,
};
