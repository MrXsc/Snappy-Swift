// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: KNArchives_sos.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct KN_SpecSetTransitionAttributesArchive {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var transitionAttributes: KN_TransitionAttributesArchive {
    get {return _transitionAttributes ?? KN_TransitionAttributesArchive()}
    set {_transitionAttributes = newValue}
  }
  /// Returns true if `transitionAttributes` has been explicitly set.
  var hasTransitionAttributes: Bool {return self._transitionAttributes != nil}
  /// Clears the value of `transitionAttributes`. Subsequent reads from it will return its default value.
  mutating func clearTransitionAttributes() {self._transitionAttributes = nil}

  var unset: Bool {
    get {return _unset ?? false}
    set {_unset = newValue}
  }
  /// Returns true if `unset` has been explicitly set.
  var hasUnset: Bool {return self._unset != nil}
  /// Clears the value of `unset`. Subsequent reads from it will return its default value.
  mutating func clearUnset() {self._unset = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _transitionAttributes: KN_TransitionAttributesArchive? = nil
  fileprivate var _unset: Bool? = nil
}

struct KN_SpecTransitionAttributesArchive {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var specSetTransitionAttributes: KN_SpecSetTransitionAttributesArchive {
    get {return _specSetTransitionAttributes ?? KN_SpecSetTransitionAttributesArchive()}
    set {_specSetTransitionAttributes = newValue}
  }
  /// Returns true if `specSetTransitionAttributes` has been explicitly set.
  var hasSpecSetTransitionAttributes: Bool {return self._specSetTransitionAttributes != nil}
  /// Clears the value of `specSetTransitionAttributes`. Subsequent reads from it will return its default value.
  mutating func clearSpecSetTransitionAttributes() {self._specSetTransitionAttributes = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _specSetTransitionAttributes: KN_SpecSetTransitionAttributesArchive? = nil
}

struct KN_SlideStylePropertyChangeSetArchive {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var fill: TSD_SpecFillArchive {
    get {return _fill ?? TSD_SpecFillArchive()}
    set {_fill = newValue}
  }
  /// Returns true if `fill` has been explicitly set.
  var hasFill: Bool {return self._fill != nil}
  /// Clears the value of `fill`. Subsequent reads from it will return its default value.
  mutating func clearFill() {self._fill = nil}

  var fillUndefined: Bool {
    get {return _fillUndefined ?? false}
    set {_fillUndefined = newValue}
  }
  /// Returns true if `fillUndefined` has been explicitly set.
  var hasFillUndefined: Bool {return self._fillUndefined != nil}
  /// Clears the value of `fillUndefined`. Subsequent reads from it will return its default value.
  mutating func clearFillUndefined() {self._fillUndefined = nil}

  var slideTransition: KN_SpecTransitionAttributesArchive {
    get {return _slideTransition ?? KN_SpecTransitionAttributesArchive()}
    set {_slideTransition = newValue}
  }
  /// Returns true if `slideTransition` has been explicitly set.
  var hasSlideTransition: Bool {return self._slideTransition != nil}
  /// Clears the value of `slideTransition`. Subsequent reads from it will return its default value.
  mutating func clearSlideTransition() {self._slideTransition = nil}

  var slideTransitionUndefined: Bool {
    get {return _slideTransitionUndefined ?? false}
    set {_slideTransitionUndefined = newValue}
  }
  /// Returns true if `slideTransitionUndefined` has been explicitly set.
  var hasSlideTransitionUndefined: Bool {return self._slideTransitionUndefined != nil}
  /// Clears the value of `slideTransitionUndefined`. Subsequent reads from it will return its default value.
  mutating func clearSlideTransitionUndefined() {self._slideTransitionUndefined = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _fill: TSD_SpecFillArchive? = nil
  fileprivate var _fillUndefined: Bool? = nil
  fileprivate var _slideTransition: KN_SpecTransitionAttributesArchive? = nil
  fileprivate var _slideTransitionUndefined: Bool? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "KN"

extension KN_SpecSetTransitionAttributesArchive: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SpecSetTransitionAttributesArchive"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "transition_attributes"),
    2: .same(proto: "unset"),
  ]

  public var isInitialized: Bool {
    if self._unset == nil {return false}
    if let v = self._transitionAttributes, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._transitionAttributes)
      case 2: try decoder.decodeSingularBoolField(value: &self._unset)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._transitionAttributes {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._unset {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: KN_SpecSetTransitionAttributesArchive, rhs: KN_SpecSetTransitionAttributesArchive) -> Bool {
    if lhs._transitionAttributes != rhs._transitionAttributes {return false}
    if lhs._unset != rhs._unset {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension KN_SpecTransitionAttributesArchive: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SpecTransitionAttributesArchive"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "spec_set_transition_attributes"),
  ]

  public var isInitialized: Bool {
    if let v = self._specSetTransitionAttributes, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._specSetTransitionAttributes)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._specSetTransitionAttributes {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: KN_SpecTransitionAttributesArchive, rhs: KN_SpecTransitionAttributesArchive) -> Bool {
    if lhs._specSetTransitionAttributes != rhs._specSetTransitionAttributes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension KN_SlideStylePropertyChangeSetArchive: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SlideStylePropertyChangeSetArchive"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fill"),
    2: .standard(proto: "fill_undefined"),
    3: .standard(proto: "slide_transition"),
    4: .standard(proto: "slide_transition_undefined"),
  ]

  public var isInitialized: Bool {
    if let v = self._fill, !v.isInitialized {return false}
    if let v = self._slideTransition, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._fill)
      case 2: try decoder.decodeSingularBoolField(value: &self._fillUndefined)
      case 3: try decoder.decodeSingularMessageField(value: &self._slideTransition)
      case 4: try decoder.decodeSingularBoolField(value: &self._slideTransitionUndefined)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._fill {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._fillUndefined {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 2)
    }
    if let v = self._slideTransition {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._slideTransitionUndefined {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: KN_SlideStylePropertyChangeSetArchive, rhs: KN_SlideStylePropertyChangeSetArchive) -> Bool {
    if lhs._fill != rhs._fill {return false}
    if lhs._fillUndefined != rhs._fillUndefined {return false}
    if lhs._slideTransition != rhs._slideTransition {return false}
    if lhs._slideTransitionUndefined != rhs._slideTransitionUndefined {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
