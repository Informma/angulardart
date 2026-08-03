part of 'tokens.dart';

/// The types of tokens that can be returned by the NgStringTokenizer
enum NgSimpleTokenType {
  atSign,
  bang,
  backSlash,
  closeBanana,
  closeBrace,
  closeBracket,
  closeParen,
  closeTagStart,
  commentBegin,
  commentEnd,
  dash,
  doubleQuote,
  openTagStart,
  tagEnd,
  equalSign,
  eof,
  forwardSlash,
  hash,
  identifier,
  mustacheBegin,
  mustacheEnd,
  openBanana,
  openBrace,
  openBracket,
  openParen,
  period,
  percent,
  singleQuote,
  star,
  text,
  unexpectedChar,
  voidCloseTag,
  whitespace;

  @Deprecated('Use eof instead')
  static const EOF = eof; // ignore: constant_identifier_names
}

/// The types of tokens that can be returned by the NgScanner.
enum NgTokenType {
  annotationPrefix,
  bananaPrefix,
  bananaSuffix,
  bindPrefix, // Not used in NgScanner.
  beforeElementDecorator,
  beforeElementDecoratorValue,
  closeElementEnd,
  closeElementStart,
  commentEnd,
  commentStart,
  commentValue,
  doubleQuote,
  elementDecorator,
  elementDecoratorValue,
  elementIdentifier,
  eventPrefix,
  eventSuffix,
  interpolationEnd,
  interpolationStart,
  interpolationValue,
  letPrefix,
  openElementEnd,
  openElementEndVoid,
  openElementStart,
  onPrefix, // Not used in NgScanner.
  propertyPrefix,
  propertySuffix,
  referencePrefix,
  singleQuote,
  templatePrefix,
  text,
  whitespace,
}
