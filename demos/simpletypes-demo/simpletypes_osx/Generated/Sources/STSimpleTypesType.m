
#import "STSimpleTypesType.h"
#import <libxml/xmlreader.h>

@interface STSimpleTypesType ()

@property(nonatomic, readwrite) NSString *test_string;
@property(nonatomic, readwrite) NSString *test_ENTITIES;
@property(nonatomic, readwrite) NSString *test_ENTITY;
@property(nonatomic, readwrite) NSString *test_ID;
@property(nonatomic, readwrite) NSString *test_IDREF;
@property(nonatomic, readwrite) NSString *test_IDREFS;
@property(nonatomic, readwrite) NSString *test_language;
@property(nonatomic, readwrite) NSString *test_Name;
@property(nonatomic, readwrite) NSString *test_NCName;
@property(nonatomic, readwrite) NSString *test_NMTOKEN;
@property(nonatomic, readwrite) NSString *test_NMTOKENS;
@property(nonatomic, readwrite) NSString *test_normalizedString;
@property(nonatomic, readwrite) NSString *test_QName;
@property(nonatomic, readwrite) NSString *test_token;
@property(nonatomic, readwrite) NSString *test_NOTATION;
@property(nonatomic, readwrite) NSNumber *test_byte;
@property(nonatomic, readwrite) NSNumber *test_int;
@property(nonatomic, readwrite) NSNumber *test_integer;
@property(nonatomic, readwrite) NSNumber *test_long;
@property(nonatomic, readwrite) NSNumber *test_negativeInteger;
@property(nonatomic, readwrite) NSNumber *test_nonNegativeInteger;
@property(nonatomic, readwrite) NSNumber *test_nonPositiveInteger;
@property(nonatomic, readwrite) NSNumber *test_positiveInteger;
@property(nonatomic, readwrite) NSNumber *test_short;
@property(nonatomic, readwrite) NSNumber *test_unsignedLong;
@property(nonatomic, readwrite) NSNumber *test_unsignedInt;
@property(nonatomic, readwrite) NSNumber *test_unsignedShort;
@property(nonatomic, readwrite) NSNumber *test_unsignedByte;
@property(nonatomic, readwrite) NSNumber *test_gDay;
@property(nonatomic, readwrite) NSNumber *test_gMonth;
@property(nonatomic, readwrite) NSNumber *test_gMonthDay;
@property(nonatomic, readwrite) NSNumber *test_gYear;
@property(nonatomic, readwrite) NSNumber *test_gYearMonth;
@property(nonatomic, readwrite) NSNumber *test_decimal;
@property(nonatomic, readwrite) NSNumber *test_double;
@property(nonatomic, readwrite) NSNumber *test_float;
@property(nonatomic, readwrite) NSNumber *test_duration;
@property(nonatomic, readwrite) NSNumber *test_boolean;
@property(nonatomic, readwrite) NSURL *test_anyURI;
@property(nonatomic, readwrite) NSDate *test_dateTime;

@end

@implementation STSimpleTypesType

/**
* Name:        readAttributes
* Parameters:  (void *) - the Libxml's xmlTextReader pointer
* Returns:     (void)
* Description: Read the attributes for the current XML element
*/
- (void)readAttributes:(void *)reader {
  NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
  dateFormatter.timeStyle = NSDateFormatterFullStyle;
  dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ssZ";
  NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
  numFormatter.numberStyle = NSNumberFormatterDecimalStyle;
  NSNumberFormatter *decFormatter = [[NSNumberFormatter alloc] init];
  decFormatter.decimalSeparator = @".";
  decFormatter.numberStyle = NSNumberFormatterDecimalStyle;
}

/**
 * Name:        initWithReader
 * Parameters:  (void *) - the Libxml's xmlTextReader pointer
 * Returns:     returns the classes created object
 * Description: Iterate through the XML and create the STSimpleTypesType object
 */
- (id)initWithReader:(void *)reader {
  int _complexTypeXmlDept = xmlTextReaderDepth(reader);
  self = [super init];

  /* Customize the object */
  if (self) {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeStyle = NSDateFormatterFullStyle;
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ssZ";
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    numFormatter.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumberFormatter *decFormatter = [[NSNumberFormatter alloc] init];
    decFormatter.decimalSeparator = @".";
    decFormatter.numberStyle = NSNumberFormatterDecimalStyle;

    [self readAttributes:reader];

    int _readerOk = xmlTextReaderRead(reader);
    int _currentNodeType = xmlTextReaderNodeType(reader);
    int _currentXmlDept = xmlTextReaderDepth(reader);
    while (_readerOk && _currentNodeType != XML_READER_TYPE_NONE &&
           _complexTypeXmlDept < _currentXmlDept) {
      BOOL handledInChild = NO;
      if (_currentNodeType == XML_READER_TYPE_ELEMENT ||
          _currentNodeType == XML_READER_TYPE_TEXT) {
        NSString *_currentElementName = [NSString
            stringWithCString:(const char *)xmlTextReaderConstLocalName(reader)
                     encoding:NSUTF8StringEncoding];
        if ([@"test_string" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_stringElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_stringElementValue) {

            self.test_string =
                [NSString stringWithCString:test_stringElementValue
                                   encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_ENTITIES" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_ENTITIESElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_ENTITIESElementValue) {

            self.test_ENTITIES =
                [NSString stringWithCString:test_ENTITIESElementValue
                                   encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_ENTITY" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_ENTITYElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_ENTITYElementValue) {

            self.test_ENTITY =
                [NSString stringWithCString:test_ENTITYElementValue
                                   encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_ID" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_IDElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_IDElementValue) {

            self.test_ID = [NSString stringWithCString:test_IDElementValue
                                              encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_IDREF" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_IDREFElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_IDREFElementValue) {

            self.test_IDREF = [NSString stringWithCString:test_IDREFElementValue
                                                 encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_IDREFS" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_IDREFSElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_IDREFSElementValue) {

            self.test_IDREFS =
                [NSString stringWithCString:test_IDREFSElementValue
                                   encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_language" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_languageElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_languageElementValue) {

            self.test_language =
                [NSString stringWithCString:test_languageElementValue
                                   encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_Name" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_NameElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_NameElementValue) {

            self.test_Name = [NSString stringWithCString:test_NameElementValue
                                                encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_NCName" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_NCNameElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_NCNameElementValue) {

            self.test_NCName =
                [NSString stringWithCString:test_NCNameElementValue
                                   encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_NMTOKEN" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_NMTOKENElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_NMTOKENElementValue) {

            self.test_NMTOKEN =
                [NSString stringWithCString:test_NMTOKENElementValue
                                   encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_NMTOKENS" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_NMTOKENSElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_NMTOKENSElementValue) {

            self.test_NMTOKENS =
                [NSString stringWithCString:test_NMTOKENSElementValue
                                   encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_normalizedString"
                       isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_normalizedStringElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_normalizedStringElementValue) {

            self.test_normalizedString =
                [NSString stringWithCString:test_normalizedStringElementValue
                                   encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_QName" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_QNameElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_QNameElementValue) {

            self.test_QName = [NSString stringWithCString:test_QNameElementValue
                                                 encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_token" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_tokenElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_tokenElementValue) {

            self.test_token = [NSString stringWithCString:test_tokenElementValue
                                                 encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_NOTATION" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_NOTATIONElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_NOTATIONElementValue) {

            self.test_NOTATION =
                [NSString stringWithCString:test_NOTATIONElementValue
                                   encoding:NSUTF8StringEncoding];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_byte" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_byteElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_byteElementValue) {

            self.test_byte = [numFormatter
                numberFromString:[NSString
                                     stringWithCString:test_byteElementValue
                                              encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_int" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_intElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_intElementValue) {

            self.test_int = [numFormatter
                numberFromString:[NSString
                                     stringWithCString:test_intElementValue
                                              encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_integer" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_integerElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_integerElementValue) {

            self.test_integer = [numFormatter
                numberFromString:[NSString
                                     stringWithCString:test_integerElementValue
                                              encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_long" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_longElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_longElementValue) {

            self.test_long = [numFormatter
                numberFromString:[NSString
                                     stringWithCString:test_longElementValue
                                              encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_negativeInteger"
                       isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_negativeIntegerElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_negativeIntegerElementValue) {

            self.test_negativeInteger = [numFormatter
                numberFromString:
                    [NSString stringWithCString:test_negativeIntegerElementValue
                                       encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_nonNegativeInteger"
                       isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_nonNegativeIntegerElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_nonNegativeIntegerElementValue) {

            self.test_nonNegativeInteger = [numFormatter
                numberFromString:
                    [NSString
                        stringWithCString:test_nonNegativeIntegerElementValue
                                 encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_nonPositiveInteger"
                       isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_nonPositiveIntegerElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_nonPositiveIntegerElementValue) {

            self.test_nonPositiveInteger = [numFormatter
                numberFromString:
                    [NSString
                        stringWithCString:test_nonPositiveIntegerElementValue
                                 encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_positiveInteger"
                       isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_positiveIntegerElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_positiveIntegerElementValue) {

            self.test_positiveInteger = [numFormatter
                numberFromString:
                    [NSString stringWithCString:test_positiveIntegerElementValue
                                       encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_short" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_shortElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_shortElementValue) {

            self.test_short = [numFormatter
                numberFromString:[NSString
                                     stringWithCString:test_shortElementValue
                                              encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_unsignedLong" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_unsignedLongElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_unsignedLongElementValue) {

            self.test_unsignedLong = [numFormatter
                numberFromString:
                    [NSString stringWithCString:test_unsignedLongElementValue
                                       encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_unsignedInt" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_unsignedIntElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_unsignedIntElementValue) {

            self.test_unsignedInt = [numFormatter
                numberFromString:
                    [NSString stringWithCString:test_unsignedIntElementValue
                                       encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_unsignedShort"
                       isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_unsignedShortElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_unsignedShortElementValue) {

            self.test_unsignedShort = [numFormatter
                numberFromString:
                    [NSString stringWithCString:test_unsignedShortElementValue
                                       encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_unsignedByte" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_unsignedByteElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_unsignedByteElementValue) {

            self.test_unsignedByte = [numFormatter
                numberFromString:
                    [NSString stringWithCString:test_unsignedByteElementValue
                                       encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_gDay" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_gDayElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_gDayElementValue) {

            self.test_gDay = [numFormatter
                numberFromString:[NSString
                                     stringWithCString:test_gDayElementValue
                                              encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_gMonth" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_gMonthElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_gMonthElementValue) {

            self.test_gMonth = [numFormatter
                numberFromString:[NSString
                                     stringWithCString:test_gMonthElementValue
                                              encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_gMonthDay" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_gMonthDayElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_gMonthDayElementValue) {

            self.test_gMonthDay = [numFormatter
                numberFromString:
                    [NSString stringWithCString:test_gMonthDayElementValue
                                       encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_gYear" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_gYearElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_gYearElementValue) {

            self.test_gYear = [numFormatter
                numberFromString:[NSString
                                     stringWithCString:test_gYearElementValue
                                              encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_gYearMonth" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_gYearMonthElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_gYearMonthElementValue) {

            self.test_gYearMonth = [numFormatter
                numberFromString:
                    [NSString stringWithCString:test_gYearMonthElementValue
                                       encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_decimal" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_decimalElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_decimalElementValue) {
            _readerOk = xmlTextReaderRead(reader);
            _currentNodeType = xmlTextReaderNodeType(reader);
            self.test_decimal = [decFormatter
                numberFromString:[NSString
                                     stringWithCString:test_decimalElementValue
                                              encoding:NSUTF8StringEncoding]];
            _readerOk = xmlTextReaderRead(reader);
            _currentNodeType = xmlTextReaderNodeType(reader);
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_double" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_doubleElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_doubleElementValue) {
            _readerOk = xmlTextReaderRead(reader);
            _currentNodeType = xmlTextReaderNodeType(reader);
            self.test_double = [decFormatter
                numberFromString:[NSString
                                     stringWithCString:test_doubleElementValue
                                              encoding:NSUTF8StringEncoding]];
            _readerOk = xmlTextReaderRead(reader);
            _currentNodeType = xmlTextReaderNodeType(reader);
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_float" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_floatElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_floatElementValue) {
            _readerOk = xmlTextReaderRead(reader);
            _currentNodeType = xmlTextReaderNodeType(reader);
            self.test_float = [decFormatter
                numberFromString:[NSString
                                     stringWithCString:test_floatElementValue
                                              encoding:NSUTF8StringEncoding]];
            _readerOk = xmlTextReaderRead(reader);
            _currentNodeType = xmlTextReaderNodeType(reader);
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_duration" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_durationElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_durationElementValue) {
            _readerOk = xmlTextReaderRead(reader);
            _currentNodeType = xmlTextReaderNodeType(reader);
            self.test_duration = [decFormatter
                numberFromString:[NSString
                                     stringWithCString:test_durationElementValue
                                              encoding:NSUTF8StringEncoding]];
            _readerOk = xmlTextReaderRead(reader);
            _currentNodeType = xmlTextReaderNodeType(reader);
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_boolean" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_booleanElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_booleanElementValue) {

            self.test_boolean = [NSNumber
                numberWithBool:[[NSString
                                   stringWithCString:test_booleanElementValue
                                            encoding:NSUTF8StringEncoding]
                                   isEqualToString:@"true"]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_anyURI" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_anyURIElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_anyURIElementValue) {

            self.test_anyURI = [NSURL
                URLWithString:[NSString
                                  stringWithCString:test_anyURIElementValue
                                           encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else if ([@"test_dateTime" isEqualToString:_currentElementName]) {

          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);
          const char *test_dateTimeElementValue =
              (const char *)xmlTextReaderConstValue(reader);
          if (test_dateTimeElementValue) {

            self.test_dateTime = [dateFormatter
                dateFromString:[NSString
                                   stringWithCString:test_dateTimeElementValue
                                            encoding:NSUTF8StringEncoding]];
          }
          _readerOk = xmlTextReaderRead(reader);
          _currentNodeType = xmlTextReaderNodeType(reader);

        } else {
          NSLog(@"Ignoring unexpected: %@", _currentElementName);
          break;
        }
      }

      _readerOk = handledInChild ? xmlTextReaderReadState(reader)
                                 : xmlTextReaderRead(reader);
      _currentNodeType = xmlTextReaderNodeType(reader);
      _currentXmlDept = xmlTextReaderDepth(reader);
    }
  }
  return self;
}

/**
 * Name:            dictionary
 * Parameters:
 * Returns:         Populated dictionary
 * Description:     Populate the dictionary from the simpleType names within our
 * XSD
 */
- (NSDictionary *)dictionary {
  /* Initial setup */
  NSMutableDictionary *dict = [NSMutableDictionary dictionary];

  /* Populate the dictionary */

  if (self.test_string) {
    [dict setObject:self.test_string forKey:@"test_string"];
  }
  if (self.test_ENTITIES) {
    [dict setObject:self.test_ENTITIES forKey:@"test_ENTITIES"];
  }
  if (self.test_ENTITY) {
    [dict setObject:self.test_ENTITY forKey:@"test_ENTITY"];
  }
  if (self.test_ID) {
    [dict setObject:self.test_ID forKey:@"test_ID"];
  }
  if (self.test_IDREF) {
    [dict setObject:self.test_IDREF forKey:@"test_IDREF"];
  }
  if (self.test_IDREFS) {
    [dict setObject:self.test_IDREFS forKey:@"test_IDREFS"];
  }
  if (self.test_language) {
    [dict setObject:self.test_language forKey:@"test_language"];
  }
  if (self.test_Name) {
    [dict setObject:self.test_Name forKey:@"test_Name"];
  }
  if (self.test_NCName) {
    [dict setObject:self.test_NCName forKey:@"test_NCName"];
  }
  if (self.test_NMTOKEN) {
    [dict setObject:self.test_NMTOKEN forKey:@"test_NMTOKEN"];
  }
  if (self.test_NMTOKENS) {
    [dict setObject:self.test_NMTOKENS forKey:@"test_NMTOKENS"];
  }
  if (self.test_normalizedString) {
    [dict setObject:self.test_normalizedString forKey:@"test_normalizedString"];
  }
  if (self.test_QName) {
    [dict setObject:self.test_QName forKey:@"test_QName"];
  }
  if (self.test_token) {
    [dict setObject:self.test_token forKey:@"test_token"];
  }
  if (self.test_NOTATION) {
    [dict setObject:self.test_NOTATION forKey:@"test_NOTATION"];
  }
  if (self.test_byte) {
    [dict setObject:self.test_byte forKey:@"test_byte"];
  }
  if (self.test_int) {
    [dict setObject:self.test_int forKey:@"test_int"];
  }
  if (self.test_integer) {
    [dict setObject:self.test_integer forKey:@"test_integer"];
  }
  if (self.test_long) {
    [dict setObject:self.test_long forKey:@"test_long"];
  }
  if (self.test_negativeInteger) {
    [dict setObject:self.test_negativeInteger forKey:@"test_negativeInteger"];
  }
  if (self.test_nonNegativeInteger) {
    [dict setObject:self.test_nonNegativeInteger
             forKey:@"test_nonNegativeInteger"];
  }
  if (self.test_nonPositiveInteger) {
    [dict setObject:self.test_nonPositiveInteger
             forKey:@"test_nonPositiveInteger"];
  }
  if (self.test_positiveInteger) {
    [dict setObject:self.test_positiveInteger forKey:@"test_positiveInteger"];
  }
  if (self.test_short) {
    [dict setObject:self.test_short forKey:@"test_short"];
  }
  if (self.test_unsignedLong) {
    [dict setObject:self.test_unsignedLong forKey:@"test_unsignedLong"];
  }
  if (self.test_unsignedInt) {
    [dict setObject:self.test_unsignedInt forKey:@"test_unsignedInt"];
  }
  if (self.test_unsignedShort) {
    [dict setObject:self.test_unsignedShort forKey:@"test_unsignedShort"];
  }
  if (self.test_unsignedByte) {
    [dict setObject:self.test_unsignedByte forKey:@"test_unsignedByte"];
  }
  if (self.test_gDay) {
    [dict setObject:self.test_gDay forKey:@"test_gDay"];
  }
  if (self.test_gMonth) {
    [dict setObject:self.test_gMonth forKey:@"test_gMonth"];
  }
  if (self.test_gMonthDay) {
    [dict setObject:self.test_gMonthDay forKey:@"test_gMonthDay"];
  }
  if (self.test_gYear) {
    [dict setObject:self.test_gYear forKey:@"test_gYear"];
  }
  if (self.test_gYearMonth) {
    [dict setObject:self.test_gYearMonth forKey:@"test_gYearMonth"];
  }
  if (self.test_decimal) {
    [dict setObject:self.test_decimal forKey:@"test_decimal"];
  }
  if (self.test_double) {
    [dict setObject:self.test_double forKey:@"test_double"];
  }
  if (self.test_float) {
    [dict setObject:self.test_float forKey:@"test_float"];
  }
  if (self.test_duration) {
    [dict setObject:self.test_duration forKey:@"test_duration"];
  }
  if (self.test_boolean) {
    [dict setObject:self.test_boolean forKey:@"test_boolean"];
  }
  if (self.test_anyURI) {
    [dict setObject:self.test_anyURI forKey:@"test_anyURI"];
  }
  if (self.test_dateTime) {
    [dict setObject:self.test_dateTime forKey:@"test_dateTime"];
  }

  return dict;
}
@end
