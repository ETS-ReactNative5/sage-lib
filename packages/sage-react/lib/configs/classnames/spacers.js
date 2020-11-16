import TOKENS from '../tokens';

// Generates spacer classnames from spacer tokens such as:
// CLASSNAMES_SPACERS.3XS_TOP ---> `sage-spacer-top-3xs`
// Note that `MD` is default so CLASSNAMES_SPACERS.MD_TOP will return `sage-spacer-top` (no `-md`)
const spacerClassPrefix = 'sage-spacer';
export const CLASSNAMES_SPACERS = {};
Object.keys(TOKENS.SPACERS).forEach((spacerToken) => {
  const spacerClassSuffix = TOKENS.SPACERS[spacerToken] === TOKENS.SPACERS.MD ? '' : `-${TOKENS.SPACERS[spacerToken]}`;
  CLASSNAMES_SPACERS[`${spacerToken}_TOP`] = `${spacerClassPrefix}-top${spacerClassSuffix}`;
  CLASSNAMES_SPACERS[`${spacerToken}_RIGHT`] = `${spacerClassPrefix}-right${spacerClassSuffix}`;
  CLASSNAMES_SPACERS[`${spacerToken}_BOTTOM`] = `${spacerClassPrefix}-bottom${spacerClassSuffix}`;
  CLASSNAMES_SPACERS[`${spacerToken}_LEFT`] = `${spacerClassPrefix}-left${spacerClassSuffix}`;
});
