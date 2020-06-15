// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: KNCommandArchives_sos.proto
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

struct KN_InducedVerifyDocumentWithServerCommandArchive {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var `super`: TSK_CommandArchive {
    get {return _super ?? TSK_CommandArchive()}
    set {_super = newValue}
  }
  /// Returns true if ``super`` has been explicitly set.
  var hasSuper: Bool {return self._super != nil}
  /// Clears the value of ``super``. Subsequent reads from it will return its default value.
  mutating func clearSuper() {self._super = nil}

  var slideNodeIDList: [TSP_UUID] = []

  var slideNodeIDListUndefined: Bool {
    get {return _slideNodeIDListUndefined ?? false}
    set {_slideNodeIDListUndefined = newValue}
  }
  /// Returns true if `slideNodeIDListUndefined` has been explicitly set.
  var hasSlideNodeIDListUndefined: Bool {return self._slideNodeIDListUndefined != nil}
  /// Clears the value of `slideNodeIDListUndefined`. Subsequent reads from it will return its default value.
  mutating func clearSlideNodeIDListUndefined() {self._slideNodeIDListUndefined = nil}

  var masterSlideNodeIDList: [TSP_UUID] = []

  var masterSlideNodeIDListUndefined: Bool {
    get {return _masterSlideNodeIDListUndefined ?? false}
    set {_masterSlideNodeIDListUndefined = newValue}
  }
  /// Returns true if `masterSlideNodeIDListUndefined` has been explicitly set.
  var hasMasterSlideNodeIDListUndefined: Bool {return self._masterSlideNodeIDListUndefined != nil}
  /// Clears the value of `masterSlideNodeIDListUndefined`. Subsequent reads from it will return its default value.
  mutating func clearMasterSlideNodeIDListUndefined() {self._masterSlideNodeIDListUndefined = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _super: TSK_CommandArchive? = nil
  fileprivate var _slideNodeIDListUndefined: Bool? = nil
  fileprivate var _masterSlideNodeIDListUndefined: Bool? = nil
}

struct KN_InducedVerifyDrawableZOrdersWithServerCommandArchive {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var `super`: TSA_InducedVerifyDrawableZOrdersWithServerCommandArchive {
    get {return _super ?? TSA_InducedVerifyDrawableZOrdersWithServerCommandArchive()}
    set {_super = newValue}
  }
  /// Returns true if ``super`` has been explicitly set.
  var hasSuper: Bool {return self._super != nil}
  /// Clears the value of ``super``. Subsequent reads from it will return its default value.
  mutating func clearSuper() {self._super = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _super: TSA_InducedVerifyDrawableZOrdersWithServerCommandArchive? = nil
}

struct KN_CommandSlideReapplyMasterArchive {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var `super`: TSA_CommandReapplyMasterArchive {
    get {return _super ?? TSA_CommandReapplyMasterArchive()}
    set {_super = newValue}
  }
  /// Returns true if ``super`` has been explicitly set.
  var hasSuper: Bool {return self._super != nil}
  /// Clears the value of ``super``. Subsequent reads from it will return its default value.
  mutating func clearSuper() {self._super = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _super: TSA_CommandReapplyMasterArchive? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "KN"

extension KN_InducedVerifyDocumentWithServerCommandArchive: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".InducedVerifyDocumentWithServerCommandArchive"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "super"),
    2: .standard(proto: "slide_node_id_list"),
    3: .standard(proto: "slide_node_id_list_undefined"),
    4: .standard(proto: "master_slide_node_id_list"),
    5: .standard(proto: "master_slide_node_id_list_undefined"),
  ]

  public var isInitialized: Bool {
    if self._super == nil {return false}
    if let v = self._super, !v.isInitialized {return false}
    if !SwiftProtobuf.Internal.areAllInitialized(self.slideNodeIDList) {return false}
    if !SwiftProtobuf.Internal.areAllInitialized(self.masterSlideNodeIDList) {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._super)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.slideNodeIDList)
      case 3: try decoder.decodeSingularBoolField(value: &self._slideNodeIDListUndefined)
      case 4: try decoder.decodeRepeatedMessageField(value: &self.masterSlideNodeIDList)
      case 5: try decoder.decodeSingularBoolField(value: &self._masterSlideNodeIDListUndefined)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._super {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.slideNodeIDList.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.slideNodeIDList, fieldNumber: 2)
    }
    if let v = self._slideNodeIDListUndefined {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 3)
    }
    if !self.masterSlideNodeIDList.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.masterSlideNodeIDList, fieldNumber: 4)
    }
    if let v = self._masterSlideNodeIDListUndefined {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: KN_InducedVerifyDocumentWithServerCommandArchive, rhs: KN_InducedVerifyDocumentWithServerCommandArchive) -> Bool {
    if lhs._super != rhs._super {return false}
    if lhs.slideNodeIDList != rhs.slideNodeIDList {return false}
    if lhs._slideNodeIDListUndefined != rhs._slideNodeIDListUndefined {return false}
    if lhs.masterSlideNodeIDList != rhs.masterSlideNodeIDList {return false}
    if lhs._masterSlideNodeIDListUndefined != rhs._masterSlideNodeIDListUndefined {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension KN_InducedVerifyDrawableZOrdersWithServerCommandArchive: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".InducedVerifyDrawableZOrdersWithServerCommandArchive"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "super"),
  ]

  public var isInitialized: Bool {
    if self._super == nil {return false}
    if let v = self._super, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._super)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._super {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: KN_InducedVerifyDrawableZOrdersWithServerCommandArchive, rhs: KN_InducedVerifyDrawableZOrdersWithServerCommandArchive) -> Bool {
    if lhs._super != rhs._super {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension KN_CommandSlideReapplyMasterArchive: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CommandSlideReapplyMasterArchive"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "super"),
  ]

  public var isInitialized: Bool {
    if self._super == nil {return false}
    if let v = self._super, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._super)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._super {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: KN_CommandSlideReapplyMasterArchive, rhs: KN_CommandSlideReapplyMasterArchive) -> Bool {
    if lhs._super != rhs._super {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
