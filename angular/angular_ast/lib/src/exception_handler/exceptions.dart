part of 'exception_handler.dart';

@sealed
class ParserErrorCode {
  static const cannotFindMatchingClose = ParserErrorCode._(
    'CANNOT_FIND_MATCHING_CLOSE',
    'Cannot find matching close element to this',
  );

  @Deprecated('Use cannotFindMatchingClose instead')
  // ignore: constant_identifier_names
  static const CANNOT_FIND_MATCHING_CLOSE = cannotFindMatchingClose;

  static const danglingCloseElement = ParserErrorCode._(
    'DANGLING_CLOSE_ELEMENT',
    'Closing tag is dangling and no matching open tag can be found',
  );

  @Deprecated('Use danglingCloseElement instead')
  // ignore: constant_identifier_names
  static const DANGLING_CLOSE_ELEMENT = danglingCloseElement;

  static const duplicateStarDirective = ParserErrorCode._(
    'DUPLICATE_STAR_DIRECTIVE',
    'Already found a *-directive, limit 1 per element.',
  );

  @Deprecated('Use duplicateStarDirective instead')
  // ignore: constant_identifier_names
  static const DUPLICATE_STAR_DIRECTIVE = duplicateStarDirective;

  static const duplicateSelectDecorator = ParserErrorCode._(
    'DUPLICATE_SELECT_DECORATOR',
    "Only 1 'select' decorator can exist in <ng-content>, found duplicate",
  );

  @Deprecated('Use duplicateSelectDecorator instead')
  // ignore: constant_identifier_names
  static const DUPLICATE_SELECT_DECORATOR = duplicateSelectDecorator;

  static const duplicateProjectAsDecorator = ParserErrorCode._(
    'DUPLICATE_PROJECT_AS_DECORATOR',
    "Only 1 'ngProjectAs' decorator can exist in <ng-content>, found duplicate",
  );

  @Deprecated('Use duplicateProjectAsDecorator instead')
  // ignore: constant_identifier_names
  static const DUPLICATE_PROJECT_AS_DECORATOR = duplicateProjectAsDecorator;

  static const duplicateReferenceDecorator = ParserErrorCode._(
    'DUPLICATE_REFERENCE_DECORATOR',
    'Only 1 reference decorator can exist in <ng-content>, found duplicate',
  );

  @Deprecated('Use duplicateReferenceDecorator instead')
  // ignore: constant_identifier_names
  static const DUPLICATE_REFERENCE_DECORATOR = duplicateReferenceDecorator;

  static const elementDecorator = ParserErrorCode._(
    'ELEMENT_DECORATOR',
    'Expected element decorator after whitespace',
  );

  @Deprecated('Use elementDecorator instead')
  // ignore: constant_identifier_names
  static const ELEMENT_DECORATOR = elementDecorator;

  static const elementDecoratorAfterPrefix = ParserErrorCode._(
    'ELEMENT_DECORATOR_AFTER_PREFIX',
    'Expected element decorator identifier after prefix',
  );

  @Deprecated('Use elementDecoratorAfterPrefix instead')
  // ignore: constant_identifier_names
  static const ELEMENT_DECORATOR_AFTER_PREFIX = elementDecoratorAfterPrefix;

  static const elementDecoratorSuffixBeforePrefix = ParserErrorCode._(
    'ELEMENT_DECORATOR',
    'Found special decorator suffix before prefix',
  );

  @Deprecated('Use elementDecoratorSuffixBeforePrefix instead')
  // ignore: constant_identifier_names
  static const ELEMENT_DECORATOR_SUFFIX_BEFORE_PREFIX =
      elementDecoratorSuffixBeforePrefix;

  static const elementDecoratorValue = ParserErrorCode._(
    'ELEMENT_DECORATOR_VALUE',
    "Expected quoted value following '='",
  );

  @Deprecated('Use elementDecoratorValue instead')
  // ignore: constant_identifier_names
  static const ELEMENT_DECORATOR_VALUE = elementDecoratorValue;

  static const elementDecoratorValueMissingQuotes = ParserErrorCode._(
    'ELEMENT_DECORATOR_VALUE_MISSING_QUOTES',
    'Decorator values must contain quotes',
  );

  @Deprecated('Use elementDecoratorValueMissingQuotes instead')
  // ignore: constant_identifier_names
  static const ELEMENT_DECORATOR_VALUE_MISSING_QUOTES =
      elementDecoratorValueMissingQuotes;

  static const elementIdentifier = ParserErrorCode._(
    'ELEMENT_IDENTIFIER',
    'Expected element tag name',
  );

  @Deprecated('Use elementIdentifier instead')
  // ignore: constant_identifier_names
  static const ELEMENT_IDENTIFIER = elementIdentifier;

  static const expectedAfterElementIdentifier = ParserErrorCode._(
    'EXPECTED_AFTER_ELEMENT_IDENTIFIER',
    'Expected either whitespace or close tag end after element identifier',
  );

  @Deprecated('Use expectedAfterElementIdentifier instead')
  // ignore: constant_identifier_names
  static const EXPECTED_AFTER_ELEMENT_IDENTIFIER =
      expectedAfterElementIdentifier;

  static const expectedEqualSign = ParserErrorCode._(
    'EXPECTED_EQUAL_SIGN',
    "Expected '=' between decorator and value",
  );

  @Deprecated('Use expectedEqualSign instead')
  // ignore: constant_identifier_names
  static const EXPECTED_EQUAL_SIGN = expectedEqualSign;

  static const expectedStandalone = ParserErrorCode._(
    'EXPECTING_STANDALONE',
    'Expected standalone token',
  );

  @Deprecated('Use expectedStandalone instead')
  // ignore: constant_identifier_names
  static const EXPECTED_STANDALONE = expectedStandalone;

  static const expectedTagClose = ParserErrorCode._(
    'EXPECTED_TAG_CLOSE',
    'Expected tag close.',
  );

  @Deprecated('Use expectedTagClose instead')
  // ignore: constant_identifier_names
  static const EXPECTED_TAG_CLOSE = expectedTagClose;

  static const unexpectedToken = ParserErrorCode._(
    'UNEXPECTED_TOKEN',
    'Unexpected token',
  );

  @Deprecated('Use unexpectedToken instead')
  // ignore: constant_identifier_names
  static const UNEXPECTED_TOKEN = unexpectedToken;

  static const expectedWhitespaceBeforeNewDecorator = ParserErrorCode._(
    'EXPECTED_WHITESPACE_BEFORE_DECORATOR',
    'Expected whitespace before a new decorator',
  );

  @Deprecated('Use expectedWhitespaceBeforeNewDecorator instead')
  // ignore: constant_identifier_names
  static const EXPECTED_WHITESPACE_BEFORE_NEW_DECORATOR =
      expectedWhitespaceBeforeNewDecorator;

  static const emptyInterpolation = ParserErrorCode._(
    'EMPTY_INTERPOLATION',
    'Interpolation expression cannot be empty',
  );

  @Deprecated('Use emptyInterpolation instead')
  // ignore: constant_identifier_names
  static const EMPTY_INTERPOLATION = emptyInterpolation;

  static const invalidDecoratorInNgcontainer = ParserErrorCode._(
    'INVALID_DECORATOR_IN_NGCONTAINER',
    "Only '*' bindings are supported on <ng-container>",
  );

  @Deprecated('Use invalidDecoratorInNgcontainer instead')
  // ignore: constant_identifier_names
  static const INVALID_DECORATOR_IN_NGCONTAINER = invalidDecoratorInNgcontainer;

  static const invalidDecoratorInNgcontent = ParserErrorCode._(
    'INVALID_DECORATOR_IN_NGCONTENT',
    "Only 'select' is a valid attribute/decorate in <ng-content>",
  );

  @Deprecated('Use invalidDecoratorInNgcontent instead')
  // ignore: constant_identifier_names
  static const INVALID_DECORATOR_IN_NGCONTENT = invalidDecoratorInNgcontent;

  static const invalidDecoratorInTemplate = ParserErrorCode._(
    'INVALID_DECORATOR_IN_TEMPLATE',
    "Invalid decorator in 'template' element",
  );

  @Deprecated('Use invalidDecoratorInTemplate instead')
  // ignore: constant_identifier_names
  static const INVALID_DECORATOR_IN_TEMPLATE = invalidDecoratorInTemplate;

  static const invalidLetBindingInNontemplate = ParserErrorCode._(
    'INVALID_LET_BINDING_IN_NONTEMPLATE',
    "'let-' binding can only be used in 'template' element",
  );

  @Deprecated('Use invalidLetBindingInNontemplate instead')
  // ignore: constant_identifier_names
  static const INVALID_LET_BINDING_IN_NONTEMPLATE =
      invalidLetBindingInNontemplate;

  static const invalidMicroExpression = ParserErrorCode._(
    'INVALID_MICRO_EXPRESSION',
    'Failed parsing micro expression',
  );

  @Deprecated('Use invalidMicroExpression instead')
  // ignore: constant_identifier_names
  static const INVALID_MICRO_EXPRESSION = invalidMicroExpression;

  static const nonvoidElementUsingVoidEnd = ParserErrorCode._(
    'NONVOID_ELEMENT_USING_VOID_END',
    'Element is not a void-element',
  );

  @Deprecated('Use nonvoidElementUsingVoidEnd instead')
  // ignore: constant_identifier_names
  static const NONVOID_ELEMENT_USING_VOID_END = nonvoidElementUsingVoidEnd;

  static const ngcontentMustCloseImmediately = ParserErrorCode._(
    'NGCONTENT_MUST_CLOSE_IMMEDIATElY',
    "'<ng-content ...>' must be followed immediately by close '</ng-content>'",
  );

  @Deprecated('Use ngcontentMustCloseImmediately instead')
  // ignore: constant_identifier_names
  static const NGCONTENT_MUST_CLOSE_IMMEDIATELY = ngcontentMustCloseImmediately;

  static const propertyNameTooManyFixes = ParserErrorCode._(
    'PROPERTY_NAME_TOO_MANY_FIXES',
    "Property name can only be in format: 'name[.postfix[.unit]]",
  );

  @Deprecated('Use propertyNameTooManyFixes instead')
  // ignore: constant_identifier_names
  static const PROPERTY_NAME_TOO_MANY_FIXES = propertyNameTooManyFixes;

  static const referenceIdentifierFound = ParserErrorCode._(
    'REFERENCE_IDENTIFIER_FOUND',
    'Reference decorator only supports #<variable> on <ng-content>',
  );

  @Deprecated('Use referenceIdentifierFound instead')
  // ignore: constant_identifier_names
  static const REFERENCE_IDENTIFIER_FOUND = referenceIdentifierFound;

  static const suffixBanana = ParserErrorCode._(
    'SUFFIX_BANANA',
    "Expected closing banana ')]'",
  );

  @Deprecated('Use suffixBanana instead')
  // ignore: constant_identifier_names
  static const SUFFIX_BANANA = suffixBanana;

  static const suffixEvent = ParserErrorCode._(
    'SUFFIX_EVENT',
    "Expected closing parenthesis ')'",
  );

  @Deprecated('Use suffixEvent instead')
  // ignore: constant_identifier_names
  static const SUFFIX_EVENT = suffixEvent;

  static const suffixProperty = ParserErrorCode._(
    'SUFFIX_PROPERTY',
    "Expected closing bracket ']'",
  );

  @Deprecated('Use suffixProperty instead')
  // ignore: constant_identifier_names
  static const SUFFIX_PROPERTY = suffixProperty;

  static const unclosedQuote = ParserErrorCode._(
    'UNCLOSED_QUOTE',
    'Expected close quote for element decorator value',
  );

  @Deprecated('Use unclosedQuote instead')
  // ignore: constant_identifier_names
  static const UNCLOSED_QUOTE = unclosedQuote;

  static const unopenedMustache = ParserErrorCode._(
    'UNOPENED_MUSTACHE',
    'Unopened mustache',
  );

  @Deprecated('Use unopenedMustache instead')
  // ignore: constant_identifier_names
  static const UNOPENED_MUSTACHE = unopenedMustache;

  static const unterminatedComment = ParserErrorCode._(
    'UNTERMINATED COMMENT',
    'Unterminated comment',
  );

  @Deprecated('Use unterminatedComment instead')
  // ignore: constant_identifier_names
  static const UNTERMINATED_COMMENT = unterminatedComment;

  static const unterminatedMustache = ParserErrorCode._(
    'UNTERMINATED_MUSTACHE',
    'Unterminated mustache',
  );

  @Deprecated('Use unterminatedMustache instead')
  // ignore: constant_identifier_names
  static const UNTERMINATED_MUSTACHE = unterminatedMustache;

  static const voidElementInCloseTag = ParserErrorCode._(
    'VOID_ELEMENT_IN_CLOSE_TAG',
    'Void element identifiers cannot be used in close element tag',
  );

  @Deprecated('Use voidElementInCloseTag instead')
  // ignore: constant_identifier_names
  static const VOID_ELEMENT_IN_CLOSE_TAG = voidElementInCloseTag;

  static const voidCloseInCloseTag = ParserErrorCode._(
    'VOID_CLOSE_IN_CLOSE_TAG',
    "Void close '/>' cannot be used in a close element",
  );

  @Deprecated('Use voidCloseInCloseTag instead')
  // ignore: constant_identifier_names
  static const VOID_CLOSE_IN_CLOSE_TAG = voidCloseInCloseTag;

  final String name;

  final String message;

  const ParserErrorCode._(
    this.name,
    this.message,
  );
}
