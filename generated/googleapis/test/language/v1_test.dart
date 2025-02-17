// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/language/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAnalyzeEntitiesRequest = 0;
api.AnalyzeEntitiesRequest buildAnalyzeEntitiesRequest() {
  final o = api.AnalyzeEntitiesRequest();
  buildCounterAnalyzeEntitiesRequest++;
  if (buildCounterAnalyzeEntitiesRequest < 3) {
    o.document = buildDocument();
    o.encodingType = 'foo';
  }
  buildCounterAnalyzeEntitiesRequest--;
  return o;
}

void checkAnalyzeEntitiesRequest(api.AnalyzeEntitiesRequest o) {
  buildCounterAnalyzeEntitiesRequest++;
  if (buildCounterAnalyzeEntitiesRequest < 3) {
    checkDocument(o.document!);
    unittest.expect(
      o.encodingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzeEntitiesRequest--;
}

core.List<api.Entity> buildUnnamed0() => [
      buildEntity(),
      buildEntity(),
    ];

void checkUnnamed0(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.int buildCounterAnalyzeEntitiesResponse = 0;
api.AnalyzeEntitiesResponse buildAnalyzeEntitiesResponse() {
  final o = api.AnalyzeEntitiesResponse();
  buildCounterAnalyzeEntitiesResponse++;
  if (buildCounterAnalyzeEntitiesResponse < 3) {
    o.entities = buildUnnamed0();
    o.language = 'foo';
  }
  buildCounterAnalyzeEntitiesResponse--;
  return o;
}

void checkAnalyzeEntitiesResponse(api.AnalyzeEntitiesResponse o) {
  buildCounterAnalyzeEntitiesResponse++;
  if (buildCounterAnalyzeEntitiesResponse < 3) {
    checkUnnamed0(o.entities!);
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzeEntitiesResponse--;
}

core.int buildCounterAnalyzeEntitySentimentRequest = 0;
api.AnalyzeEntitySentimentRequest buildAnalyzeEntitySentimentRequest() {
  final o = api.AnalyzeEntitySentimentRequest();
  buildCounterAnalyzeEntitySentimentRequest++;
  if (buildCounterAnalyzeEntitySentimentRequest < 3) {
    o.document = buildDocument();
    o.encodingType = 'foo';
  }
  buildCounterAnalyzeEntitySentimentRequest--;
  return o;
}

void checkAnalyzeEntitySentimentRequest(api.AnalyzeEntitySentimentRequest o) {
  buildCounterAnalyzeEntitySentimentRequest++;
  if (buildCounterAnalyzeEntitySentimentRequest < 3) {
    checkDocument(o.document!);
    unittest.expect(
      o.encodingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzeEntitySentimentRequest--;
}

core.List<api.Entity> buildUnnamed1() => [
      buildEntity(),
      buildEntity(),
    ];

void checkUnnamed1(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.int buildCounterAnalyzeEntitySentimentResponse = 0;
api.AnalyzeEntitySentimentResponse buildAnalyzeEntitySentimentResponse() {
  final o = api.AnalyzeEntitySentimentResponse();
  buildCounterAnalyzeEntitySentimentResponse++;
  if (buildCounterAnalyzeEntitySentimentResponse < 3) {
    o.entities = buildUnnamed1();
    o.language = 'foo';
  }
  buildCounterAnalyzeEntitySentimentResponse--;
  return o;
}

void checkAnalyzeEntitySentimentResponse(api.AnalyzeEntitySentimentResponse o) {
  buildCounterAnalyzeEntitySentimentResponse++;
  if (buildCounterAnalyzeEntitySentimentResponse < 3) {
    checkUnnamed1(o.entities!);
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzeEntitySentimentResponse--;
}

core.int buildCounterAnalyzeSentimentRequest = 0;
api.AnalyzeSentimentRequest buildAnalyzeSentimentRequest() {
  final o = api.AnalyzeSentimentRequest();
  buildCounterAnalyzeSentimentRequest++;
  if (buildCounterAnalyzeSentimentRequest < 3) {
    o.document = buildDocument();
    o.encodingType = 'foo';
  }
  buildCounterAnalyzeSentimentRequest--;
  return o;
}

void checkAnalyzeSentimentRequest(api.AnalyzeSentimentRequest o) {
  buildCounterAnalyzeSentimentRequest++;
  if (buildCounterAnalyzeSentimentRequest < 3) {
    checkDocument(o.document!);
    unittest.expect(
      o.encodingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzeSentimentRequest--;
}

core.List<api.Sentence> buildUnnamed2() => [
      buildSentence(),
      buildSentence(),
    ];

void checkUnnamed2(core.List<api.Sentence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSentence(o[0]);
  checkSentence(o[1]);
}

core.int buildCounterAnalyzeSentimentResponse = 0;
api.AnalyzeSentimentResponse buildAnalyzeSentimentResponse() {
  final o = api.AnalyzeSentimentResponse();
  buildCounterAnalyzeSentimentResponse++;
  if (buildCounterAnalyzeSentimentResponse < 3) {
    o.documentSentiment = buildSentiment();
    o.language = 'foo';
    o.sentences = buildUnnamed2();
  }
  buildCounterAnalyzeSentimentResponse--;
  return o;
}

void checkAnalyzeSentimentResponse(api.AnalyzeSentimentResponse o) {
  buildCounterAnalyzeSentimentResponse++;
  if (buildCounterAnalyzeSentimentResponse < 3) {
    checkSentiment(o.documentSentiment!);
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.sentences!);
  }
  buildCounterAnalyzeSentimentResponse--;
}

core.int buildCounterAnalyzeSyntaxRequest = 0;
api.AnalyzeSyntaxRequest buildAnalyzeSyntaxRequest() {
  final o = api.AnalyzeSyntaxRequest();
  buildCounterAnalyzeSyntaxRequest++;
  if (buildCounterAnalyzeSyntaxRequest < 3) {
    o.document = buildDocument();
    o.encodingType = 'foo';
  }
  buildCounterAnalyzeSyntaxRequest--;
  return o;
}

void checkAnalyzeSyntaxRequest(api.AnalyzeSyntaxRequest o) {
  buildCounterAnalyzeSyntaxRequest++;
  if (buildCounterAnalyzeSyntaxRequest < 3) {
    checkDocument(o.document!);
    unittest.expect(
      o.encodingType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyzeSyntaxRequest--;
}

core.List<api.Sentence> buildUnnamed3() => [
      buildSentence(),
      buildSentence(),
    ];

void checkUnnamed3(core.List<api.Sentence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSentence(o[0]);
  checkSentence(o[1]);
}

core.List<api.Token> buildUnnamed4() => [
      buildToken(),
      buildToken(),
    ];

void checkUnnamed4(core.List<api.Token> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToken(o[0]);
  checkToken(o[1]);
}

core.int buildCounterAnalyzeSyntaxResponse = 0;
api.AnalyzeSyntaxResponse buildAnalyzeSyntaxResponse() {
  final o = api.AnalyzeSyntaxResponse();
  buildCounterAnalyzeSyntaxResponse++;
  if (buildCounterAnalyzeSyntaxResponse < 3) {
    o.language = 'foo';
    o.sentences = buildUnnamed3();
    o.tokens = buildUnnamed4();
  }
  buildCounterAnalyzeSyntaxResponse--;
  return o;
}

void checkAnalyzeSyntaxResponse(api.AnalyzeSyntaxResponse o) {
  buildCounterAnalyzeSyntaxResponse++;
  if (buildCounterAnalyzeSyntaxResponse < 3) {
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.sentences!);
    checkUnnamed4(o.tokens!);
  }
  buildCounterAnalyzeSyntaxResponse--;
}

core.int buildCounterAnnotateTextRequest = 0;
api.AnnotateTextRequest buildAnnotateTextRequest() {
  final o = api.AnnotateTextRequest();
  buildCounterAnnotateTextRequest++;
  if (buildCounterAnnotateTextRequest < 3) {
    o.document = buildDocument();
    o.encodingType = 'foo';
    o.features = buildFeatures();
  }
  buildCounterAnnotateTextRequest--;
  return o;
}

void checkAnnotateTextRequest(api.AnnotateTextRequest o) {
  buildCounterAnnotateTextRequest++;
  if (buildCounterAnnotateTextRequest < 3) {
    checkDocument(o.document!);
    unittest.expect(
      o.encodingType!,
      unittest.equals('foo'),
    );
    checkFeatures(o.features!);
  }
  buildCounterAnnotateTextRequest--;
}

core.List<api.ClassificationCategory> buildUnnamed5() => [
      buildClassificationCategory(),
      buildClassificationCategory(),
    ];

void checkUnnamed5(core.List<api.ClassificationCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClassificationCategory(o[0]);
  checkClassificationCategory(o[1]);
}

core.List<api.Entity> buildUnnamed6() => [
      buildEntity(),
      buildEntity(),
    ];

void checkUnnamed6(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.List<api.ClassificationCategory> buildUnnamed7() => [
      buildClassificationCategory(),
      buildClassificationCategory(),
    ];

void checkUnnamed7(core.List<api.ClassificationCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClassificationCategory(o[0]);
  checkClassificationCategory(o[1]);
}

core.List<api.Sentence> buildUnnamed8() => [
      buildSentence(),
      buildSentence(),
    ];

void checkUnnamed8(core.List<api.Sentence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSentence(o[0]);
  checkSentence(o[1]);
}

core.List<api.Token> buildUnnamed9() => [
      buildToken(),
      buildToken(),
    ];

void checkUnnamed9(core.List<api.Token> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToken(o[0]);
  checkToken(o[1]);
}

core.int buildCounterAnnotateTextResponse = 0;
api.AnnotateTextResponse buildAnnotateTextResponse() {
  final o = api.AnnotateTextResponse();
  buildCounterAnnotateTextResponse++;
  if (buildCounterAnnotateTextResponse < 3) {
    o.categories = buildUnnamed5();
    o.documentSentiment = buildSentiment();
    o.entities = buildUnnamed6();
    o.language = 'foo';
    o.moderationCategories = buildUnnamed7();
    o.sentences = buildUnnamed8();
    o.tokens = buildUnnamed9();
  }
  buildCounterAnnotateTextResponse--;
  return o;
}

void checkAnnotateTextResponse(api.AnnotateTextResponse o) {
  buildCounterAnnotateTextResponse++;
  if (buildCounterAnnotateTextResponse < 3) {
    checkUnnamed5(o.categories!);
    checkSentiment(o.documentSentiment!);
    checkUnnamed6(o.entities!);
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.moderationCategories!);
    checkUnnamed8(o.sentences!);
    checkUnnamed9(o.tokens!);
  }
  buildCounterAnnotateTextResponse--;
}

core.int buildCounterClassificationCategory = 0;
api.ClassificationCategory buildClassificationCategory() {
  final o = api.ClassificationCategory();
  buildCounterClassificationCategory++;
  if (buildCounterClassificationCategory < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
  }
  buildCounterClassificationCategory--;
  return o;
}

void checkClassificationCategory(api.ClassificationCategory o) {
  buildCounterClassificationCategory++;
  if (buildCounterClassificationCategory < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterClassificationCategory--;
}

core.int buildCounterClassificationModelOptions = 0;
api.ClassificationModelOptions buildClassificationModelOptions() {
  final o = api.ClassificationModelOptions();
  buildCounterClassificationModelOptions++;
  if (buildCounterClassificationModelOptions < 3) {
    o.v1Model = buildV1Model();
    o.v2Model = buildV2Model();
  }
  buildCounterClassificationModelOptions--;
  return o;
}

void checkClassificationModelOptions(api.ClassificationModelOptions o) {
  buildCounterClassificationModelOptions++;
  if (buildCounterClassificationModelOptions < 3) {
    checkV1Model(o.v1Model!);
    checkV2Model(o.v2Model!);
  }
  buildCounterClassificationModelOptions--;
}

core.int buildCounterClassifyTextRequest = 0;
api.ClassifyTextRequest buildClassifyTextRequest() {
  final o = api.ClassifyTextRequest();
  buildCounterClassifyTextRequest++;
  if (buildCounterClassifyTextRequest < 3) {
    o.classificationModelOptions = buildClassificationModelOptions();
    o.document = buildDocument();
  }
  buildCounterClassifyTextRequest--;
  return o;
}

void checkClassifyTextRequest(api.ClassifyTextRequest o) {
  buildCounterClassifyTextRequest++;
  if (buildCounterClassifyTextRequest < 3) {
    checkClassificationModelOptions(o.classificationModelOptions!);
    checkDocument(o.document!);
  }
  buildCounterClassifyTextRequest--;
}

core.List<api.ClassificationCategory> buildUnnamed10() => [
      buildClassificationCategory(),
      buildClassificationCategory(),
    ];

void checkUnnamed10(core.List<api.ClassificationCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClassificationCategory(o[0]);
  checkClassificationCategory(o[1]);
}

core.int buildCounterClassifyTextResponse = 0;
api.ClassifyTextResponse buildClassifyTextResponse() {
  final o = api.ClassifyTextResponse();
  buildCounterClassifyTextResponse++;
  if (buildCounterClassifyTextResponse < 3) {
    o.categories = buildUnnamed10();
  }
  buildCounterClassifyTextResponse--;
  return o;
}

void checkClassifyTextResponse(api.ClassifyTextResponse o) {
  buildCounterClassifyTextResponse++;
  if (buildCounterClassifyTextResponse < 3) {
    checkUnnamed10(o.categories!);
  }
  buildCounterClassifyTextResponse--;
}

core.int buildCounterDependencyEdge = 0;
api.DependencyEdge buildDependencyEdge() {
  final o = api.DependencyEdge();
  buildCounterDependencyEdge++;
  if (buildCounterDependencyEdge < 3) {
    o.headTokenIndex = 42;
    o.label = 'foo';
  }
  buildCounterDependencyEdge--;
  return o;
}

void checkDependencyEdge(api.DependencyEdge o) {
  buildCounterDependencyEdge++;
  if (buildCounterDependencyEdge < 3) {
    unittest.expect(
      o.headTokenIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
  }
  buildCounterDependencyEdge--;
}

core.int buildCounterDocument = 0;
api.Document buildDocument() {
  final o = api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.content = 'foo';
    o.gcsContentUri = 'foo';
    o.language = 'foo';
    o.type = 'foo';
  }
  buildCounterDocument--;
  return o;
}

void checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsContentUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocument--;
}

core.List<api.EntityMention> buildUnnamed11() => [
      buildEntityMention(),
      buildEntityMention(),
    ];

void checkUnnamed11(core.List<api.EntityMention> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityMention(o[0]);
  checkEntityMention(o[1]);
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  final o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.mentions = buildUnnamed11();
    o.metadata = buildUnnamed12();
    o.name = 'foo';
    o.salience = 42.0;
    o.sentiment = buildSentiment();
    o.type = 'foo';
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    checkUnnamed11(o.mentions!);
    checkUnnamed12(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.salience!,
      unittest.equals(42.0),
    );
    checkSentiment(o.sentiment!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntity--;
}

core.int buildCounterEntityMention = 0;
api.EntityMention buildEntityMention() {
  final o = api.EntityMention();
  buildCounterEntityMention++;
  if (buildCounterEntityMention < 3) {
    o.sentiment = buildSentiment();
    o.text = buildTextSpan();
    o.type = 'foo';
  }
  buildCounterEntityMention--;
  return o;
}

void checkEntityMention(api.EntityMention o) {
  buildCounterEntityMention++;
  if (buildCounterEntityMention < 3) {
    checkSentiment(o.sentiment!);
    checkTextSpan(o.text!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntityMention--;
}

core.int buildCounterFeatures = 0;
api.Features buildFeatures() {
  final o = api.Features();
  buildCounterFeatures++;
  if (buildCounterFeatures < 3) {
    o.classificationModelOptions = buildClassificationModelOptions();
    o.classifyText = true;
    o.extractDocumentSentiment = true;
    o.extractEntities = true;
    o.extractEntitySentiment = true;
    o.extractSyntax = true;
    o.moderateText = true;
  }
  buildCounterFeatures--;
  return o;
}

void checkFeatures(api.Features o) {
  buildCounterFeatures++;
  if (buildCounterFeatures < 3) {
    checkClassificationModelOptions(o.classificationModelOptions!);
    unittest.expect(o.classifyText!, unittest.isTrue);
    unittest.expect(o.extractDocumentSentiment!, unittest.isTrue);
    unittest.expect(o.extractEntities!, unittest.isTrue);
    unittest.expect(o.extractEntitySentiment!, unittest.isTrue);
    unittest.expect(o.extractSyntax!, unittest.isTrue);
    unittest.expect(o.moderateText!, unittest.isTrue);
  }
  buildCounterFeatures--;
}

core.int buildCounterModerateTextRequest = 0;
api.ModerateTextRequest buildModerateTextRequest() {
  final o = api.ModerateTextRequest();
  buildCounterModerateTextRequest++;
  if (buildCounterModerateTextRequest < 3) {
    o.document = buildDocument();
  }
  buildCounterModerateTextRequest--;
  return o;
}

void checkModerateTextRequest(api.ModerateTextRequest o) {
  buildCounterModerateTextRequest++;
  if (buildCounterModerateTextRequest < 3) {
    checkDocument(o.document!);
  }
  buildCounterModerateTextRequest--;
}

core.List<api.ClassificationCategory> buildUnnamed13() => [
      buildClassificationCategory(),
      buildClassificationCategory(),
    ];

void checkUnnamed13(core.List<api.ClassificationCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClassificationCategory(o[0]);
  checkClassificationCategory(o[1]);
}

core.int buildCounterModerateTextResponse = 0;
api.ModerateTextResponse buildModerateTextResponse() {
  final o = api.ModerateTextResponse();
  buildCounterModerateTextResponse++;
  if (buildCounterModerateTextResponse < 3) {
    o.moderationCategories = buildUnnamed13();
  }
  buildCounterModerateTextResponse--;
  return o;
}

void checkModerateTextResponse(api.ModerateTextResponse o) {
  buildCounterModerateTextResponse++;
  if (buildCounterModerateTextResponse < 3) {
    checkUnnamed13(o.moderationCategories!);
  }
  buildCounterModerateTextResponse--;
}

core.int buildCounterPartOfSpeech = 0;
api.PartOfSpeech buildPartOfSpeech() {
  final o = api.PartOfSpeech();
  buildCounterPartOfSpeech++;
  if (buildCounterPartOfSpeech < 3) {
    o.aspect = 'foo';
    o.case_ = 'foo';
    o.form = 'foo';
    o.gender = 'foo';
    o.mood = 'foo';
    o.number = 'foo';
    o.person = 'foo';
    o.proper = 'foo';
    o.reciprocity = 'foo';
    o.tag = 'foo';
    o.tense = 'foo';
    o.voice = 'foo';
  }
  buildCounterPartOfSpeech--;
  return o;
}

void checkPartOfSpeech(api.PartOfSpeech o) {
  buildCounterPartOfSpeech++;
  if (buildCounterPartOfSpeech < 3) {
    unittest.expect(
      o.aspect!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.case_!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.form!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gender!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.person!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.proper!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reciprocity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tense!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.voice!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartOfSpeech--;
}

core.int buildCounterSentence = 0;
api.Sentence buildSentence() {
  final o = api.Sentence();
  buildCounterSentence++;
  if (buildCounterSentence < 3) {
    o.sentiment = buildSentiment();
    o.text = buildTextSpan();
  }
  buildCounterSentence--;
  return o;
}

void checkSentence(api.Sentence o) {
  buildCounterSentence++;
  if (buildCounterSentence < 3) {
    checkSentiment(o.sentiment!);
    checkTextSpan(o.text!);
  }
  buildCounterSentence--;
}

core.int buildCounterSentiment = 0;
api.Sentiment buildSentiment() {
  final o = api.Sentiment();
  buildCounterSentiment++;
  if (buildCounterSentiment < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterSentiment--;
  return o;
}

void checkSentiment(api.Sentiment o) {
  buildCounterSentiment++;
  if (buildCounterSentiment < 3) {
    unittest.expect(
      o.magnitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterSentiment--;
}

core.int buildCounterTextSpan = 0;
api.TextSpan buildTextSpan() {
  final o = api.TextSpan();
  buildCounterTextSpan++;
  if (buildCounterTextSpan < 3) {
    o.beginOffset = 42;
    o.content = 'foo';
  }
  buildCounterTextSpan--;
  return o;
}

void checkTextSpan(api.TextSpan o) {
  buildCounterTextSpan++;
  if (buildCounterTextSpan < 3) {
    unittest.expect(
      o.beginOffset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextSpan--;
}

core.int buildCounterToken = 0;
api.Token buildToken() {
  final o = api.Token();
  buildCounterToken++;
  if (buildCounterToken < 3) {
    o.dependencyEdge = buildDependencyEdge();
    o.lemma = 'foo';
    o.partOfSpeech = buildPartOfSpeech();
    o.text = buildTextSpan();
  }
  buildCounterToken--;
  return o;
}

void checkToken(api.Token o) {
  buildCounterToken++;
  if (buildCounterToken < 3) {
    checkDependencyEdge(o.dependencyEdge!);
    unittest.expect(
      o.lemma!,
      unittest.equals('foo'),
    );
    checkPartOfSpeech(o.partOfSpeech!);
    checkTextSpan(o.text!);
  }
  buildCounterToken--;
}

core.int buildCounterV1Model = 0;
api.V1Model buildV1Model() {
  final o = api.V1Model();
  buildCounterV1Model++;
  if (buildCounterV1Model < 3) {}
  buildCounterV1Model--;
  return o;
}

void checkV1Model(api.V1Model o) {
  buildCounterV1Model++;
  if (buildCounterV1Model < 3) {}
  buildCounterV1Model--;
}

core.int buildCounterV2Model = 0;
api.V2Model buildV2Model() {
  final o = api.V2Model();
  buildCounterV2Model++;
  if (buildCounterV2Model < 3) {
    o.contentCategoriesVersion = 'foo';
  }
  buildCounterV2Model--;
  return o;
}

void checkV2Model(api.V2Model o) {
  buildCounterV2Model++;
  if (buildCounterV2Model < 3) {
    unittest.expect(
      o.contentCategoriesVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterV2Model--;
}

void main() {
  unittest.group('obj-schema-AnalyzeEntitiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeEntitiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeEntitiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeEntitiesRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzeEntitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeEntitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeEntitiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeEntitiesResponse(od);
    });
  });

  unittest.group('obj-schema-AnalyzeEntitySentimentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeEntitySentimentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeEntitySentimentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeEntitySentimentRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzeEntitySentimentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeEntitySentimentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeEntitySentimentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeEntitySentimentResponse(od);
    });
  });

  unittest.group('obj-schema-AnalyzeSentimentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeSentimentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeSentimentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeSentimentRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzeSentimentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeSentimentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeSentimentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeSentimentResponse(od);
    });
  });

  unittest.group('obj-schema-AnalyzeSyntaxRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeSyntaxRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeSyntaxRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeSyntaxRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzeSyntaxResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeSyntaxResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeSyntaxResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyzeSyntaxResponse(od);
    });
  });

  unittest.group('obj-schema-AnnotateTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotateTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotateTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotateTextRequest(od);
    });
  });

  unittest.group('obj-schema-AnnotateTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotateTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotateTextResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotateTextResponse(od);
    });
  });

  unittest.group('obj-schema-ClassificationCategory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClassificationCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClassificationCategory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClassificationCategory(od);
    });
  });

  unittest.group('obj-schema-ClassificationModelOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClassificationModelOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClassificationModelOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClassificationModelOptions(od);
    });
  });

  unittest.group('obj-schema-ClassifyTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClassifyTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClassifyTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClassifyTextRequest(od);
    });
  });

  unittest.group('obj-schema-ClassifyTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClassifyTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClassifyTextResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClassifyTextResponse(od);
    });
  });

  unittest.group('obj-schema-DependencyEdge', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDependencyEdge();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DependencyEdge.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDependencyEdge(od);
    });
  });

  unittest.group('obj-schema-Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Document.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDocument(od);
    });
  });

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Entity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntity(od);
    });
  });

  unittest.group('obj-schema-EntityMention', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityMention();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityMention.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityMention(od);
    });
  });

  unittest.group('obj-schema-Features', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeatures();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Features.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeatures(od);
    });
  });

  unittest.group('obj-schema-ModerateTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModerateTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModerateTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModerateTextRequest(od);
    });
  });

  unittest.group('obj-schema-ModerateTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModerateTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModerateTextResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModerateTextResponse(od);
    });
  });

  unittest.group('obj-schema-PartOfSpeech', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartOfSpeech();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartOfSpeech.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartOfSpeech(od);
    });
  });

  unittest.group('obj-schema-Sentence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSentence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Sentence.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSentence(od);
    });
  });

  unittest.group('obj-schema-Sentiment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSentiment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Sentiment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSentiment(od);
    });
  });

  unittest.group('obj-schema-TextSpan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextSpan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextSpan.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextSpan(od);
    });
  });

  unittest.group('obj-schema-Token', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Token.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkToken(od);
    });
  });

  unittest.group('obj-schema-V1Model', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV1Model();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.V1Model.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkV1Model(od);
    });
  });

  unittest.group('obj-schema-V2Model', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2Model();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.V2Model.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkV2Model(od);
    });
  });

  unittest.group('resource-DocumentsResource', () {
    unittest.test('method--analyzeEntities', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildAnalyzeEntitiesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnalyzeEntitiesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnalyzeEntitiesRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('v1/documents:analyzeEntities'),
        );
        pathOffset += 28;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnalyzeEntitiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.analyzeEntities(arg_request, $fields: arg_$fields);
      checkAnalyzeEntitiesResponse(response as api.AnalyzeEntitiesResponse);
    });

    unittest.test('method--analyzeEntitySentiment', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildAnalyzeEntitySentimentRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnalyzeEntitySentimentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnalyzeEntitySentimentRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 35),
          unittest.equals('v1/documents:analyzeEntitySentiment'),
        );
        pathOffset += 35;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnalyzeEntitySentimentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.analyzeEntitySentiment(arg_request, $fields: arg_$fields);
      checkAnalyzeEntitySentimentResponse(
          response as api.AnalyzeEntitySentimentResponse);
    });

    unittest.test('method--analyzeSentiment', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildAnalyzeSentimentRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnalyzeSentimentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnalyzeSentimentRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('v1/documents:analyzeSentiment'),
        );
        pathOffset += 29;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnalyzeSentimentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.analyzeSentiment(arg_request, $fields: arg_$fields);
      checkAnalyzeSentimentResponse(response as api.AnalyzeSentimentResponse);
    });

    unittest.test('method--analyzeSyntax', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildAnalyzeSyntaxRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnalyzeSyntaxRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnalyzeSyntaxRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('v1/documents:analyzeSyntax'),
        );
        pathOffset += 26;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnalyzeSyntaxResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.analyzeSyntax(arg_request, $fields: arg_$fields);
      checkAnalyzeSyntaxResponse(response as api.AnalyzeSyntaxResponse);
    });

    unittest.test('method--annotateText', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildAnnotateTextRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AnnotateTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnnotateTextRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('v1/documents:annotateText'),
        );
        pathOffset += 25;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnnotateTextResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.annotateText(arg_request, $fields: arg_$fields);
      checkAnnotateTextResponse(response as api.AnnotateTextResponse);
    });

    unittest.test('method--classifyText', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildClassifyTextRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ClassifyTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClassifyTextRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('v1/documents:classifyText'),
        );
        pathOffset += 25;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildClassifyTextResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.classifyText(arg_request, $fields: arg_$fields);
      checkClassifyTextResponse(response as api.ClassifyTextResponse);
    });

    unittest.test('method--moderateText', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildModerateTextRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModerateTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModerateTextRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('v1/documents:moderateText'),
        );
        pathOffset += 25;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildModerateTextResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.moderateText(arg_request, $fields: arg_$fields);
      checkModerateTextResponse(response as api.ModerateTextResponse);
    });
  });
}
