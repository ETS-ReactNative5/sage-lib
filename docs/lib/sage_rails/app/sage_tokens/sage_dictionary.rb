#
# Sage Dictionary tokens
#
# Note: The contents of this file are generated by Style Dictionary
# and should not be modified directly here.
# See `/style-dictionary` directory for tokens and configurations.
#

module SageDictionary

  def SageDictionary.theme
    SageRails.next_theme? ? SageDictionaryNext : SageDictionaryLegacy
  end
  
  THEME = SageDictionary.theme
end
