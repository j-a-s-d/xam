# xam
# ===
# MULTIPLATFORM INTROSPECTION

from parseutils import parseUntil

template getCurrentProcName*: string =
  ## NOTE: this is a modified version of "procName" present at https://github.com/nim-lang/Nim/issues/8212#issuecomment-657202258
  when not declaredInScope(internalCProcName):
    var internalCProcName {.exportc:"__this_name_should_not_be_used", inject.}: cstring
    {.emit: "__this_name_should_not_be_used = __func__;".}
    var realProcNameButShouldnotBeUsed {.inject.}: string
    discard parseUntil($internalCProcName, realProcNameButShouldnotBeUsed, "__")
    realProcNameButShouldnotBeUsed
  else:
    internalCProcName

template function_name*: string =
  ## Cpp's std::source_location function template
  getCurrentProcName()

template callee*: string =
  ## Javascript's argument variable object property template
  getCurrentProcName()

template getMethodName*: string =
  ## Java's Thread.currentThread().getStackTrace() element function template
  getCurrentProcName()

template methodName*: string =
  ## Kotlin/Groovy's Thread.currentThread().stackTrace element function template
  getCurrentProcName()

template `?FUNCTION_NAME`*: string =
  ## Erlang's ?FUNCTION_NAME preprocessor-macro template
  ## NOTE: it has to be called with the backticks
  getCurrentProcName()

# NOTE: the following aliases can not be included due to the underscore naming
#
#template __name__*: string =
#  ## Python-like special-attribute template
#  getCurrentProcName()
#
#template __qualname__*: string =
#  ## Python-like special-attribute template
#  getCurrentProcName()
#
#template __func__*: string =
#  ## Cpp-like preprocessor-macro template
#  getCurrentProcName()
#
#template __FUNCTION__*: string =
#  ## Cpp/PHP-like preprocessor-macro/magic-constant template
#  getCurrentProcName()
#
#template __PRETTY_FUNCTION__*: string =
#  ## Cpp-like preprocessor-macro template
#  getCurrentProcName()
#
#template __METHOD__*: string =
#  ## PHP/Ruby-like magic-constant/special-symbol template
#  getCurrentProcName()
#
#template __callee__*: string =
#  ## Ruby-like special-symbol template
#  getCurrentProcName()
#
#template __SUB__*: string =
#  ## Perl-like special-sequence template
#  getCurrentProcName()
