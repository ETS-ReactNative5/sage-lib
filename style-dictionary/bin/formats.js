const { templates } = require('./templating');
const { getCategoryCollection, getComponentSchemas } = require('./utilities');

//
// Formats
//
module.exports = {
  'sage/scss/tokens': ({ dictionary, platform }) => {
    const categories = getCategoryCollection(dictionary.allTokens);
    return templates.scssTokens({ categories });
  },
  'sage/rails/tokens': ({ dictionary, platform }) => {
    const categories = getCategoryCollection(
      dictionary.allTokens,
      {
        categoryFormat: 'constant',
        typeFormat: 'constant'
      }
    );
    return templates.railsTokens({ categories });
  },
  // TODO: In development
  //
  // 'sage/js': ({ dictionary, platform }) => {
  //   return dictionary.allTokens.map(token => `export const ${token.name} = ${token.value};`).join('\n');
  // },
  // 'sage/rails/schema': ({ dictionary, platform }) => {
  //   const components = getComponentSchemas(dictionary.allTokens);
  //   return templates.railsSchema({ components });
  // },
  // 'sage/react/schema': ({ dictionary, platform }) => {
  //   const components = getComponentSchemas(dictionary.allTokens);
  //   return templates.reactSchema({ components });
  // },
};
