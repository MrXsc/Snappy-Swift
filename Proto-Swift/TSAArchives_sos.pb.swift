// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: TSAArchives_sos.proto
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

struct TSA_DrawableZOrderListArchive {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var containerID: TSP_UUID {
    get {return _containerID ?? TSP_UUID()}
    set {_containerID = newValue}
  }
  /// Returns true if `containerID` has been explicitly set.
  var hasContainerID: Bool {return self._containerID != nil}
  /// Clears the value of `containerID`. Subsequent reads from it will return its default value.
  mutating func clearContainerID() {self._containerID = nil}

  var drawableIDList: [TSP_UUID] = []

  var drawableIDListUndefined: Bool {
    get {return _drawableIDListUndefined ?? false}
    set {_drawableIDListUndefined = newValue}
  }
  /// Returns true if `drawableIDListUndefined` has been explicitly set.
  var hasDrawableIDListUndefined: Bool {return self._drawableIDListUndefined != nil}
  /// Clears the value of `drawableIDListUndefined`. Subsequent reads from it will return its default value.
  mutating func clearDrawableIDListUndefined() {self._drawableIDListUndefined = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _containerID: TSP_UUID? = nil
  fileprivate var _drawableIDListUndefined: Bool? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TSA"

extension TSA_DrawableZOrderListArchive: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DrawableZOrderListArchive"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "container_id"),
    2: .standard(proto: "drawable_id_list"),
    3: .standard(proto: "drawable_id_list_undefined"),
  ]

  public var isInitialized: Bool {
    if let v = self._containerID, !v.isInitialized {return false}
    if !SwiftProtobuf.Internal.areAllInitialized(self.drawableIDList) {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._containerID)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.drawableIDList)
      case 3: try decoder.decodeSingularBoolField(value: &self._drawableIDListUndefined)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._containerID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.drawableIDList.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.drawableIDList, fieldNumber: 2)
    }
    if let v = self._drawableIDListUndefined {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TSA_DrawableZOrderListArchive, rhs: TSA_DrawableZOrderListArchive) -> Bool {
    if lhs._containerID != rhs._containerID {return false}
    if lhs.drawableIDList != rhs.drawableIDList {return false}
    if lhs._drawableIDListUndefined != rhs._drawableIDListUndefined {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
