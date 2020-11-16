import { CLASSNAMES_SPACERS } from './spacers';
import {
  CLASSNAMES_TYPE,
  CLASSNAME_TYPE_BLOCK,
  CLASSNAMES_TYPE_COLORS,
  CLASSNAME_TRUNCATE_TEXT
} from './type';
import {
  CLASSNAMES_GRID_TEMPLATES,
  lookupGridTemplateClassname
} from './grid-templates';

const CLASSNAMES = {
  SPACERS: CLASSNAMES_SPACERS,
  TYPE: CLASSNAMES_TYPE,
  TYPE_BLOCK: CLASSNAME_TYPE_BLOCK,
  TYPE_COLORS: CLASSNAMES_TYPE_COLORS,
  TRUNCATE_TEXT: CLASSNAME_TRUNCATE_TEXT,
  GRID_TEMPLATES: CLASSNAMES_GRID_TEMPLATES,
  lookupGridTemplate: lookupGridTemplateClassname,
};

export default CLASSNAMES;
