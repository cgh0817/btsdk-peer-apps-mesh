/*
 * Copyright Cypress Semiconductor
 */

/** @file
 *
 * This file defines all constant values for mesh network, protocol and values used in this framework.
 */

import Foundation


public struct MeshConstants {
    public static let MESH_DEFAULT_USE_GATT_PROXY              = 1
    public static let MESH_DEFAULT_SCAN_DURATION               = 30

    public static let MESH_DEFAULT_IS_GATT_PROXY               = 1
    public static let MESH_DEFAULT_IS_FRIEND                   = 1
    public static let MESH_DEFAULT_IS_RELAY                    = 1
    public static let MESH_DEFAULT_RELAY_XMIT_COUNT            = 3
    public static let MESH_DEFAULT_RELAY_XMIT_INTERVAL         = 100
    public static let MESH_DEFAULT_TTL                         = 63
    public static let MESH_DEFAULT_NET_XMIT_COUNT              = 3
    public static let MESH_DEFAULT_NET_XMIT_INTERVAL           = 100
    public static let MESH_DEFAULT_BEACON                      = 1

    public static let MESH_DEFAULT_DEVICE_TYPE_UNKNOWN         = 0
    public static let MESH_DEFAULT_PUBLISH_PERIOD              = 10
    public static let MESH_DEFAULT_PUBLISH_CREDENTIAL_FLAG     = 0
    public static let MESH_DEFAULT_RETRANSMIT_COUNT            = 0
    public static let MESH_DEFAULT_RETRANSMIT_INTERVAL         = 500
    public static let MESH_DEFAULT_PUBLISH_TTL                 = 63
    public static let MESH_DEFAULT_TRANSITION_TIME: UInt32     = 0xFFFFFFFF

    // Public BLE device address, just a placeholder, useless.
    public static let MESH_DEFAULT_PERIPHERAL_BDADDR_TYPE: UInt8    = 0

    public static let MESH_DEFAULT_COMPONENT_CONNECT_SCAN_DURATION  = 10     // unit: seconds
    public static let MESH_DEFAULT_COMPONENT_CONNECT_USE_PROXY      = true

    // See <<Mesh Model>> section 3.1.3 and 3.2.1.2 about the detail of the values of transition time and delay.
    public static let MESH_DEFAULT_ONOFF_TRANSITION_TIME: UInt32    = 0xFFFFFFFF     // bit0-5: transition number of steps; bit6-7: transition step resolution.
    public static let MESH_DEFAULT_ONOFF_DELAY                      = 0     // uint: ms, must be multiple of 5 millisecond (one step is 5 millisecond).

    // Currently, with the support of the mesh library, only one connection can be established at any time between the provisioner and target mesh device.
    public static let MESH_CONNECTION_ID_DISCONNECTED   = 0
    public static let MESH_CONNECTION_ID_CONNECTED      = 1

    public static let MESH_TRANSPORT_GATT      = 1
    public static let MESH_TRANSPORT_GATEWAY   = 2

    public static let MESH_SERVICE_CONNECTED       = 1
    public static let MESH_SERVICE_DISCONNECTED    = 0

    // The status parameter value of the mesh_client_node_connect_status callback API.
    public static let MESH_CLIENT_NODE_WARNING_UNREACHABLE = 0
    public static let MESH_CLIENT_NODE_CONNECTED = 1
    public static let MESH_CLIENT_NODE_ERROR_UNREACHABLE = 2

    public static let MESH_CLIENT_ADDRESS_ALL_PROXIES  = 0xFFFC
    public static let MESH_CLIENT_ADDRESS_ALL_FRIENDS  = 0xFFFD
    public static let MESH_CLIENT_ADDRESS_ALL_RELAYS   = 0xFFFE
    public static let MESH_CLIENT_ADDRESS_ALL_NODES    = 0xFFFF

    public static let MESH_COMPONENT_UNKNOWN                  = 0
    public static let MESH_COMPONENT_GENERIC_ON_OFF_CLIENT    = 1
    public static let MESH_COMPONENT_GENERIC_LEVEL_CLIENT     = 2
    public static let MESH_COMPONENT_GENERIC_ON_OFF_SERVER    = 3
    public static let MESH_COMPONENT_GENERIC_LEVEL_SERVER     = 4
    public static let MESH_COMPONENT_POWER_ON_OFF_SERVER      = 5
    public static let MESH_COMPONENT_POWER_LEVEL_SERVER       = 6
    public static let MESH_COMPONENT_LIGHT_DIMMABLE           = 7
    public static let MESH_COMPONENT_LIGHT_HSL                = 8
    public static let MESH_COMPONENT_LIGHT_CTL                = 9
    public static let MESH_COMPONENT_LIGHT_XYL                = 10
    public static let MESH_COMPONENT_SENSOR_SERVER            = 11
    public static let MESH_COMPONENT_SENSOR_CLIENT            = 12
    public static let MESH_COMPONENT_VENDOR_SPECIFIC          = 13

    public static let MESH_CLIENT_PROVISION_IDENTIFY_DURATION   = 20                                            // unit: seconds
    public static let MESH_CLIENT_PROVISION_TIMEOUT_DURATION    = MESH_CLIENT_PROVISION_IDENTIFY_DURATION * 3   // unit: seconds

    public static let MESH_CLIENT_CONNECT_TIMETOUT              = 10     // unit: seconds.
    public static let MESH_CLIENT_NETWORK_OPEN_TIMETOUT         = 10     // unit: seconds.
    public static let MESH_CLIENT_GET_DATA_TIMETOUT             = 10     // unit: seconds.

    public static let MESH_CLIENT_PROVISION_STATUS_FAILED          = 0
    public static let MESH_CLIENT_PROVISION_STATUS_SCANNING        = 1
    public static let MESH_CLIENT_PROVISION_STATUS_CONNECTING      = 2
    public static let MESH_CLIENT_PROVISION_STATUS_PROVISIONING    = 3
    public static let MESH_CLIENT_PROVISION_STATUS_END             = 6
    public static let MESH_CLIENT_PROVISION_STATUS_CONFIGURING     = 4
    public static let MESH_CLIENT_PROVISION_STATUS_SUCCESS         = 5

    public static let MESH_DEFAULT_NETWORK_OPENING_TIMEOUT          = 60    // unit: seconds.
    public static let MESH_REMOVE_COMPONENT_FROM_GROUP_TIMEOUT      = 60    // unit: seconds.

    public static let SENSOR_FAST_CADENCE_PERIOD_DIVISOR        = MeshControl.DEFAULT_FAST_CADENCE_PERIOD_DIVISOR
    public static let SENSOR_TRIGGER_TYPE                       = MeshControl.TRIGGER_TYPE_NATIVE
    public static let SENSOR_TRIGGER_DELTA_DOWN                 = 0
    public static let SENSOR_TRIGGER_DELTA_UP                   = 0
    public static let SENSOR_MIN_INTERVAL                       = 1     // unit: seconds
    public static let SENSOR_FAST_CADENCE_LOW                   = 0
    public static let SENSOR_FAST_CADENCE_HIGH                  = 0

    public static let LIGHT_LIGHTNESS_PERCENTAGE_MIN: Double        = 0
    public static let LIGHT_LIGHTNESS_PERCENTAGE_MAX: Double        = 100
    public static let LIGHT_LIGHTNESS_MESH_RAW_VALUE_MIN            = 0
    public static let LIGHT_LIGHTNESS_MESH_RAW_VALUE_MAX            = 0xFFFF

    public static let LIGHT_HUE_MIN: Double                         = 0
    public static let LIGHT_HUE_MAX: Double                         = 360
    public static let LIGHT_HUE_MESH_RAW_VALUE_MIN                  = 0
    public static let LIGHT_HUE_MESH_RAW_VALUE_MAX                  = 0xFFFF

    public static let LIGHT_SATURATION_PERCENTAGE_MIN: Double       = 0
    public static let LIGHT_SATURATION_PERCENTAGE_MAX: Double       = 100
    public static let LIGHT_SATURATION_MESH_RAW_VALUE_MIN           = 0
    public static let LIGHT_SATURATION_MESH_RAW_VALUE_MAX           = 0xFFFF

    // Based on Mesh Model v1.0, section 6.1.3.3 Light CTL Temperature Range, the max and min should between 800(0x0320) ~ 20000(0x4E20) Kelvin.
    public static let LIGHT_TEMPERATURE_MESH_RAW_VALUE_MIN          = 0x0320
    public static let LIGHT_TEMPERATURE_MESH_RAW_VALUE_MAX          = 0x4E20

    public static let LIGHT_DELTA_UV_MESH_RAW_VALUE_MIN             = Int(Int16.min)
    public static let LIGHT_DELTA_UV_MESH_RAW_VALUE_MAX             = Int(Int16.max)

    /*
     * TODO: Change to any allocated SIG company ID when required.
     *       This constant value is used by MeshApp in Swift language. By Default, it was set to Cypress Company ID.
     *       See the macro MESH_VENDOR_COMPANY_ID defined in mesh_app.c which used by mesh libraries.
     */
    public static let MESH_VENDOR_COMPANY_ID    = 0x131
    public static let MESH_VENDOR_MODEL_ID      = 1         // TODO: This need to be modified based on Mesh Device implementation.
    // This sample shows simple use of vendor get/set/status messages.  Vendor model can define any opcodes it wants.
    public static let MESH_VENDOR_OPCODE1       = 1     // Command to Get data
    public static let MESH_VENDOR_OPCODE2       = 2     // Command to Set data ack is required

    public static let MESH_CLIENT_LC_MODE_ON = 1
    public static let MESH_CLIENT_LC_MODE_OFF = 0
    public static let MESH_CLIENT_LC_OCCUPANCY_MODE_ON = 1
    public static let MESH_CLIENT_LC_OCCUPANCY_MODE_OFF = 0
}

public struct MeshNotificationConstants {
    public static let MESH_CLIENT_PROVISION_COMPLETE_STATUS = "meshClientProvisionCompletedCbNotification"
    public static let USER_INFO_KEY_PROVISION_STATUS        = "provisionStatus"       // value type: Int, raw data type: UInt8
    public static let USER_INFO_KEY_DEVICE_UUID             = "meshDeviceUuid"        // value type: UUID, raw data type: UUID
    public static func getProvisionStatus(userInfo: [AnyHashable: Any]) -> (status: Int, uuid: UUID)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var status: Int?
        var uuid: UUID?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_PROVISION_STATUS, value is Int, let value = value as? Int {
                status = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_UUID, value is UUID, let value = value as? UUID {
                uuid = value
            }
        }
        guard let _ = status, let _ = uuid else {
            return nil
        }
        return (status!, uuid!)
    }

    public static let MESH_CLIENT_NETWORK_OPENNED_CB        = "meshClientNetworkOpennedCbNotification"
    public static let USER_INFO_KEY_NETWORK_OPENNED_STATUS  = "networkOpennedStatus"       // value type: Int, raw value is UInt8
    public static func getNetworkOpenCbStatus(userInfo: [AnyHashable: Any]) -> Int? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_NETWORK_OPENNED_STATUS, value is Int, let value = value as? Int {
                return value
            }
        }
        return nil
    }

    //_ uuid: UUID, oob: UInt16, uri_hash: UInt32, name: String?
    public static let MESH_CLIENT_DEVICE_FOUND          = "meshClientOnMeshDeviceFoundCbNotification"
    public static let USER_INFO_KEY_DEVICE_OOB          = "connId"      // value type: Int, raw data type: UInt16
    public static let USER_INFO_KEY_DEVICE_URI_HASH     = "addr"        // value type: Int, raw data type: UInt32
    public static let USER_INFO_KEY_DEVICE_NAME         = "deviceName"  // value type: String, raw data type: String
    public static func getFoundMeshDevice(userInfo: [AnyHashable: Any]) -> (uuid: UUID, oob: UInt16, uriHash: UInt32, name: String)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var uuid: UUID?
        var oob: UInt16?
        var uriHash: UInt32?
        var name: String?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_UUID, value is UUID, let value = value as? UUID {
                uuid = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_OOB, value is UInt16, let value = value as? UInt16 {
                oob = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_URI_HASH, value is UInt32, let value = value as? UInt32 {
                uriHash = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String, !value.isEmpty {
                name = value
            }
        }
        guard let _ = uuid, let _ = oob, let _ = uriHash, let _ = name else {
            return nil
        }
        return (uuid!, oob!, uriHash!, name!)
    }

    public static let MESH_CLIENT_NETWORK_LINK_STATUS_CHANGED   = "meshClientOnMeshtNetworkLinkStatusChangedNotification"
    public static let USER_INFO_KEY_LINK_STATUS_IS_CONNECTED    = "isConnected" // value type: Int, raw data type: UInt8
    public static let USER_INFO_KEY_LINK_STATUS_CONNID          = "connId"      // value type: Int, raw data type: UInt32
    public static let USER_INFO_KEY_LINK_STATUS_ADDR            = "addr"        // value type: Int, raw data type: UInt16
    public static let USER_INFO_KEY_LINK_STATUS_IS_OVER_GATT    = "isOverGatt"  // value type: Int, raw data type: UInt8
    public static func getLinkStatus(userInfo: [AnyHashable: Any]) -> (isConnected: Bool, connId: UInt32, addr: UInt16, isOverGatt: Bool)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var isConnected: Bool?
        var connId: UInt32?
        var addr: UInt16?
        var isOverGatt: Bool?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_LINK_STATUS_IS_CONNECTED, value is Int, let value = value as? Int {
                if value > 0 {
                    isConnected = true
                }
            } else if key == MeshNotificationConstants.USER_INFO_KEY_LINK_STATUS_CONNID, value is Int, let value = value as? Int {
                connId = UInt32(value)
            } else if key == MeshNotificationConstants.USER_INFO_KEY_LINK_STATUS_ADDR, value is Int, let value = value as? Int {
                addr = UInt16(value)
            } else if key == MeshNotificationConstants.USER_INFO_KEY_LINK_STATUS_IS_OVER_GATT, value is Int, let value = value as? Int {
                if value > 0 {
                    isOverGatt = true
                }
            }
        }
        guard let _ = isConnected, let _ = connId, let _ = addr, let _ = isOverGatt else {
            return nil
        }
        return (isConnected!, connId!, addr!, isOverGatt!)
    }

    public static let MESH_NETWORK_DATABASE_CHANGED   = "meshClientNetworkDatabaseChanged"
    public static let USER_INFO_DB_CHANGED_MESH_NAME    = "meshDbChangedMeshName" // value type: String
    public static func getNetworkName(userInfo: [AnyHashable: Any]) -> String? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_DB_CHANGED_MESH_NAME, value is String, let value = value as? String {
                return value
            }
        }
        return nil
    }

    public static let MESH_CLIENT_NODE_CONNECTION_STATUS_CHANGED    = "meshClientOnMeshNodeConnectStatusChangedNotification"
    public static let USER_INFO_KEY_NODE_CONNECTION_STATUS          = "status"          // value type: Int, raw data type: UInt8
    public static let USER_INFO_KEY_NODE_NAME                       = "componentName"   // value type: String
    public static func getNodeConnectionStatus(userInfo: [AnyHashable: Any]) -> (componentName: String, status: Int)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var name: String?
        var status: Int?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_NODE_CONNECTION_STATUS, value is Int, let value = value as? Int {
                status = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_NODE_NAME, value is String, let value = value as? String {
                name = value
            }
        }
        guard let componentName = name, let newStatus = status else {
            return nil
        }
        return (componentName, newStatus)
    }

    public static let MESH_CLIENT_COMPONENT_INFO_UPDATED    = "meshClientComponentInformationStatusUpdatedNotification"
    public static let USER_INFO_KEY_NODE_COMPONENT_NAME     = "componentName"       // value type: String
    public static let USER_INFO_KEY_NODE_COMPONENT_INFO     = "componentStatus"     // value type: String
    public static func getComponentInfo(userInfo: [AnyHashable: Any]) -> (componentName: String, componentInfo: MeshComponentInfo)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var name: String?
        var info: MeshComponentInfo?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_NODE_COMPONENT_NAME, value is String, let value = value as? String {
                name = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_NODE_COMPONENT_INFO, value is String, let value = value as? String, value.hasPrefix("CID:") {
                info = MeshComponentInfo(componentInfo: value)
            }
        }
        guard let componentName = name, let componentInfo = info else {
            return nil
        }
        return (componentName, componentInfo)
    }

    public static func parseComponentInfo(componentInfo: String) -> (CID: Int, PID: Int, VID: Int, VER: Int) {
        var cid: Int = 0
        var pid: Int = 0
        var vid: Int = 0
        var ver: Int = 0

        let infoArray = componentInfo.split(maxSplits: 3, omittingEmptySubsequences: true, whereSeparator: {$0 == " "})
        meshLog("\(infoArray)")
        for item in infoArray {
            if item.hasPrefix("CID:") {
                let cidStrings = item.split(maxSplits: 2, omittingEmptySubsequences: true, whereSeparator: {$0 == ":"})
                cid = Int(cidStrings[1]) ?? 0
                meshLog("CID: \(item.split(maxSplits: 2, omittingEmptySubsequences: true, whereSeparator: {$0 == ":"})), cid=\(cid)")
            } else if item.hasPrefix("PID:") {
                let pidStrings = item.split(maxSplits: 2, omittingEmptySubsequences: true, whereSeparator: {$0 == ":"})
                pid = Int(pidStrings[1]) ?? 0
                meshLog("PID: \(item.split(maxSplits: 2, omittingEmptySubsequences: true, whereSeparator: {$0 == ":"})), pid=\(pid)")
            } else if item.hasPrefix("VID:") {
                let vidStrings = item.split(maxSplits: 2, omittingEmptySubsequences: true, whereSeparator: {$0 == ":"})
                vid = Int(vidStrings[1]) ?? 0
                meshLog("VID: \(item.split(maxSplits: 2, omittingEmptySubsequences: true, whereSeparator: {$0 == ":"})), vid=\(vid)")
            } else if item.hasPrefix("VER:") {
                let verStrings = item.split(maxSplits: 2, omittingEmptySubsequences: true, whereSeparator: {$0 == ":"})
                ver = Int(verStrings[1]) ?? 0
                meshLog("VER: \(item.split(maxSplits: 2, omittingEmptySubsequences: true, whereSeparator: {$0 == ":"})), ver=\(ver)")
            }
        }
        return (cid, pid,vid, ver)
    }

    public static let MESH_CLIENT_ON_OFF_STATUS         = "meshClientOnOffStatusNotification"
    public static let USER_INFO_KEY_TARGET              = "target"          // value type: Int, raw data type: UInt8
    public static let USER_INFO_KEY_PRESENT             = "present"         // value type: Int, raw data type: UInt8
    public static let USER_INFO_KEY_REMAINING_TIME      = "remainingTime"   // value type: Int, raw data type: UInt32
    public static func getOnOffStatus(userInfo: [AnyHashable: Any]) -> (deviceName: String, isOn: Bool, presentIsOn: Bool, remainingTime: UInt32)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var deviceName: String?
        var isOn: Bool?
        var presentIsOn: Bool?
        var remainingTime: UInt32?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String, !value.isEmpty {
                deviceName = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_TARGET, value is Int, let value = value as? Int {
                isOn = (value == 0) ? false : true
            } else if key == MeshNotificationConstants.USER_INFO_KEY_PRESENT, value is Int, let value = value as? Int {
                presentIsOn = (value == 0) ? false : true
            } else if key == MeshNotificationConstants.USER_INFO_KEY_REMAINING_TIME, value is UInt32, let value = value as? UInt32 {
                remainingTime = value
            }
        }
        guard let _ = deviceName, let _ = isOn, let _ = presentIsOn, let _ = remainingTime else {
            return nil
        }
        return (deviceName!, isOn!, presentIsOn!, remainingTime!)
    }

    public static let MESH_CLIENT_LEVEL_STATUS              = "meshClientLevelStatusNotification"
    public static let USER_INFO_KEY_LEVEL                   = "level"            // value type: Int, raw data type: Int16
    public static func getLevelStatus(userInfo: [AnyHashable: Any]) -> (deviceName: String, level: Int, presentLevel: Int, remainingTime: UInt32)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var deviceName: String?
        var level: Int?
        var presentLevel: Int?
        var remainingTime: UInt32?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String, !value.isEmpty {
                deviceName = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_LEVEL, value is Int, let value = value as? Int {
                level = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_PRESENT, value is Int, let value = value as? Int {
                presentLevel = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_REMAINING_TIME, value is UInt32, let value = value as? UInt32 {
                remainingTime = value
            }
        }
        guard let _ = deviceName, let _ = level, let _ = presentLevel, let _ = remainingTime else {
            return nil
        }
        return (deviceName!, level!, presentLevel!, remainingTime!)
    }

    public static let MESH_CLIENT_HSL_STATUS            = "meshClientHslStatusNotification"
    public static let USER_INFO_KEY_LIGHTNESS           = "lightness"           // value type: Int, raw data type: Int16
    public static let USER_INFO_KEY_HUE                 = "hue"                 // value type: Int, raw data type: Int16
    public static let USER_INFO_KEY_SATURATION          = "saturation"          // value type: Int, raw data type: Int16
    public static func getHslStatus(userInfo: [AnyHashable: Any]) -> (deviceName: String, lightness: Int, hue: Int, saturation: Int)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var deviceName: String?
        var lightness: Int?
        var hue: Int?
        var saturation: Int?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String, !value.isEmpty {
                deviceName = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_LIGHTNESS, value is Int, let value = value as? Int {
                lightness = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_HUE, value is Int, let value = value as? Int {
                hue = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_SATURATION, value is Int, let value = value as? Int {
                saturation = value
            }
        }
        guard let _ = deviceName, let _ = lightness, let _ = hue, let _ = saturation else {
            return nil
        }
        return (deviceName!, lightness!, hue!, saturation!)
    }

    public static let MESH_CLIENT_CTL_STATUS                = "meshClientCtlStatusNotification"
    public static let USER_INFO_KEY_PRESENT_LIGHTNESS       = "presentLightness"            // value type: Int, raw data type: Int16
    public static let USER_INFO_KEY_PRESENT_TEMPERATURE     = "presentTemperature"          // value type: Int, raw data type: Int16
    public static let USER_INFO_KEY_TARGET_LIGHTNESS        = "targetLightness"             // value type: Int, raw data type: Int16
    public static let USER_INFO_KEY_TARGET_TEMPERATURE      = "targetTemperature"           // value type: Int, raw data type: Int16
    public static func getCtlStatus(userInfo: [AnyHashable: Any]) -> (deviceName: String, presentLightness: Int, presentTemperature: Int, targetLightness: Int, targetTemperature: Int)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var deviceName: String?
        var presentLightness: Int?
        var presentTemperature: Int?
        var targetLightness: Int?
        var targetTemperature: Int?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String, !value.isEmpty {
                deviceName = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_PRESENT_LIGHTNESS, value is Int, let value = value as? Int {
                presentLightness = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_PRESENT_TEMPERATURE, value is Int, let value = value as? Int {
                presentTemperature = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_TARGET_LIGHTNESS, value is Int, let value = value as? Int {
                targetLightness = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_TARGET_TEMPERATURE, value is Int, let value = value as? Int {
                targetTemperature = value
            }
        }
        guard let _ = deviceName, let _ = presentLightness, let _ = presentTemperature, let _ = targetLightness, let _ = targetTemperature else {
            return nil
        }
        return (deviceName!, presentLightness!, presentTemperature!, targetLightness!, targetTemperature!)
    }

    public static let MESH_CLIENT_LIGHTNESS_STATUS                = "meshClientLightnessStatusNotification"
    public static func getLightnessStatus(userInfo: [AnyHashable: Any]) -> (deviceName: String, targetLightness: Int, presentLightness: Int, remainingTime: UInt32)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var deviceName: String?
        var targetLightness: Int?
        var presentLightness: Int?
        var remainingTime: UInt32?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String, !value.isEmpty {
                deviceName = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_TARGET, value is Int, let value = value as? Int {
                targetLightness = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_PRESENT, value is Int, let value = value as? Int {
                presentLightness = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_REMAINING_TIME, value is UInt32, let value = value as? UInt32 {
                remainingTime = value
            }
        }
        guard let _ = deviceName, let _ = targetLightness, let _ = presentLightness, let _ = remainingTime else {
            return nil
        }
        return (deviceName!, targetLightness!, presentLightness!, remainingTime!)
    }

    public static let MESH_CLIENT_SENSOR_STATUS         = "meshClientSensorStatusNotification"
    public static let USER_INFO_KEY_PROPERTY_ID         = "propertyId"      // value type: String, raw data type: String
    public static let USER_INFO_KEY_DATA                = "data"            // value type: Data, raw data type: Data
    public static func getSensorStatus(userInfo: [AnyHashable: Any]) -> (deviceName: String, propertyId: Int, data: Data)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var deviceName: String?
        var propertyId: Int?
        var data: Data?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String, !value.isEmpty {
                deviceName = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_PROPERTY_ID, value is Int, let value = value as? Int {
                propertyId = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_DATA, value is Data, let value = value as? Data {
                data = value
            }
        }
        guard let _ = deviceName, let _ = propertyId, let _ = data else {
            return nil
        }
        return (deviceName!, propertyId!, data!)
    }

    public static let MESH_CLIENT_DFU_STATUS                    = "meshClientDfuStatusNotification"
    public static let USER_INFO_KEY_DFU_STATUS                  = "dfuStatus"               // value type: Int, raw data type: uint8_t
    public static let USER_INFO_KEY_DFU_PROGRESS                = "dfuProgress"             // value type: Int, raw data type: uint8_t
    public static func getDfuStatus(userInfo: [AnyHashable: Any]) -> (componentName: String, status: Int, progress: Int)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var dfuStatus: Int?
        var dfuProgress: Int?
        var componentName: String?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DFU_STATUS, value is Int, let value = value as? Int {
                dfuStatus = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_DFU_PROGRESS, value is Int, let value = value as? Int {
                dfuProgress = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String {
                componentName = value
            }
        }
        guard let _ = componentName, let _ = dfuStatus, let _ = dfuProgress else {
            return nil
        }
        return (componentName!, dfuStatus!, dfuProgress!)
    }

    public static let MESH_CLIENT_VENDOR_SPECIFIC_DATA_CHANGED  = "meshClientVendorSpecificDataChangedNotification"
    public static let USER_INFO_KEY_VENDOR_COMPANY_ID           = "vendorCompanyId"     // value type: Int, raw data type: UInt16
    public static let USER_INFO_KEY_VENDOR_MODEL_ID             = "vendorModelId"       // value type: Int, raw data type: UInt16
    public static let USER_INFO_KEY_VENDOR_OPCODE               = "vendorOpcode"        // value type: Int, raw data type: UInt8
    public static func getVendorSpecificData(userInfo: [AnyHashable: Any]) -> (deviceName: String, companyId: Int, modelId: Int, opcode: Int, data: Data)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var deviceName: String?
        var companyId: Int?
        var modelId: Int?
        var opcode: Int?
        var data: Data?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String {
                deviceName = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_VENDOR_COMPANY_ID, value is Int, let value = value as? Int {
                companyId = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_VENDOR_MODEL_ID, value is Int, let value = value as? Int {
                modelId = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_VENDOR_OPCODE, value is Int, let value = value as? Int {
                opcode = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_DATA, value is Data, let value = value as? Data {
                data = value
            }
        }
        guard let _ = deviceName, let _ = companyId, let _ = modelId, let _ = opcode, let _ = data else {
            return nil
        }
        return (deviceName!, companyId!, modelId!, opcode!, data!)
    }

    public static let MESH_CLIENT_LIGHT_LC_MODE_STATUS      = "meshClientLightLcModeStatusNotification"
    public static let USER_INFO_KEY_LIGHT_LC_MODE           = "lightLcMode"     // value type: Int, raw data type: Int32
    public static func getLightLcModeStatus(userInfo: [AnyHashable: Any]) -> (deviceName: String, mode: Int)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var deviceName: String?
        var mode: Int?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String {
                deviceName = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_LIGHT_LC_MODE, value is Int, let value = value as? Int {
                mode = value
            }
        }
        guard let _ = deviceName, let _ = mode else {
            return nil
        }
        return (deviceName!, mode!)
    }

    public static let MESH_CLIENT_LIGHT_LC_OCCUPANCY_MODE_STATUS        = "meshClientLightLcOccupancyModeStatusNotification"
    public static let USER_INFO_KEY_LIGHT_LC_OCCUPANCY_MODE             = "lightLcOccupancyMode"     // value type: Int, raw data type: Int32
    public static func getLightLcOccupancyModeStatus(userInfo: [AnyHashable: Any]) -> (deviceName: String, mode: Int)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var deviceName: String?
        var mode: Int?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String {
                deviceName = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_LIGHT_LC_OCCUPANCY_MODE, value is Int, let value = value as? Int {
                mode = value
            }
        }
        guard let _ = deviceName, let _ = mode else {
            return nil
        }
        return (deviceName!, mode!)
    }

    public static let MESH_CLIENT_LIGHT_LC_PROPERTY_STATUS      = "meshClientLightLcPropertyStatusNotification"
    public static let USER_INFO_KEY_LIGHT_LC_PROPERTY_ID        = "lightLcPropertyId"     // value type: Int, raw data type: Int32
    public static let USER_INFO_KEY_LIGHT_LC_PROPERTY_VALUE     = "lightLcPropertyValue"     // value type: Int, raw data type: Int32
    public static func getLightLcPropertyStatus(userInfo: [AnyHashable: Any]) -> (deviceName: String, propertyId: Int, value: Int)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var deviceName: String?
        var propertyId: Int?
        var propertyValue: Int?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DEVICE_NAME, value is String, let value = value as? String {
                deviceName = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_LIGHT_LC_PROPERTY_ID, value is Int, let value = value as? Int {
                propertyId = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_LIGHT_LC_PROPERTY_VALUE, value is Int, let value = value as? Int {
                propertyValue = value
            }
        }
        guard let _ = deviceName, let _ = propertyId, let _ = propertyValue else {
            return nil
        }
        return (deviceName!, propertyId!, propertyValue!)
    }

    public static let MESH_SCAN_PROVISION_TEST_STAGE_IDLE = 0
    public static let MESH_SCAN_PROVISION_TEST_STAGE_PROVISIONING = 1
    public static let MESH_SCAN_PROVISION_TEST_STAGE_SCANNING = 2
    public static let MESH_SCAN_PROVISION_TEST_STAGE_DELETING = 3
    public static let MESH_SCAN_PROVISION_TEST_STAGE_STATUS_SUCCESS = 0
    public static let MESH_SCAN_PROVISION_TEST_STAGE_STATUS_FAILED = 1
    public static let MESH_SCAN_PROVISION_TEST_STAGE_STATUS_NETWORK_BUSY = 2
    public static let MESH_SCAN_PROVISION_TEST_STATUS = "meshScanProvisionTestStatus"
    public static let USER_INFO_KEY_STAGE = "scanProvisionTestStage"
    public static let USER_INFO_KEY_STAGE_STATUS = "scanProvisionTestStageStatus"
    public static let USER_INFO_KEY_UNPROVISIONED_DEVICE_NAME = "scanProvisionTestUnprovisionedDeviceName"
    public static let USER_INFO_KEY_TARGET_DEVICE_UUID = "scanProvisionTestTargetDeviceUuid"  // UUID String
    public static let USER_INFO_KEY_PROVISIONED_DEVICE_NAME = "scanProvisionTestProvisionedDeviceName"
    public static func getScanProvisionTestStatus(userInfo: [AnyHashable: Any]) -> (stage: Int, status: Int, unprovisionedDeviceName: String?, targetDeviceUuid: UUID?, provisionedDeviceName: String?)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var stage: Int?
        var status: Int?
        var unprovisionedDeviceName: String?
        var targetDeviceUuid: UUID?
        var provisionedDeviceName: String?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_STAGE, value is Int, let value = value as? Int {
                stage = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_STAGE_STATUS, value is Int, let value = value as? Int {
                status = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_UNPROVISIONED_DEVICE_NAME, value is String, let value = value as? String {
                unprovisionedDeviceName = value.isEmpty ? nil : value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_TARGET_DEVICE_UUID, value is String, let value = value as? String {
                targetDeviceUuid = value.isEmpty ? nil : UUID(uuidString: value)
            } else if key == MeshNotificationConstants.USER_INFO_KEY_PROVISIONED_DEVICE_NAME, value is String, let value = value as? String {
                provisionedDeviceName = value.isEmpty ? nil : value
            }
        }
        guard let _ = stage, let _ = status else {
            return nil
        }
        return (stage!, status!, unprovisionedDeviceName, targetDeviceUuid, provisionedDeviceName)
    }

    public static let MESH_CLIENT_DFU_EVENT_START_OTA = "meshClientDfuEventStartOta"
    public static let USER_INFO_KEY_DFU_EVENT = "meshClientDfuEvent"        // value type: Int, raw data type: UInt8
    public static let USER_INFO_KEY_DFU_EVENT_DATA = "meshClientDfuEventData"
    public static func getMeshClientDfuEvent(userInfo: [AnyHashable: Any]) -> (event: Int, data: Data)? {
        guard let userInfo = userInfo as? [String: Any] else {
            return nil
        }
        var event: Int?
        var data: Data?
        for (key, value) in userInfo {
            if key == MeshNotificationConstants.USER_INFO_KEY_DFU_EVENT, value is Int, let value = value as? Int {
                event = value
            } else if key == MeshNotificationConstants.USER_INFO_KEY_DFU_EVENT_DATA, value is Data, let value = value as? Data {
                data = value
            }
        }
        guard let _ = event, let _ = data else {
            return nil
        }
        return (event!, data!)
    }
}

public struct MeshUUIDConstants{
    static let UUID_SERVICE_MESH_PROVISIONING                       = CBUUID(string: "00001827-0000-1000-8000-00805f9b34fb")
    static let UUID_CHARACTERISTIC_MESH_PROVISIONING_DATA_IN        = CBUUID(string: "00002ADB-0000-1000-8000-00805f9b34fb")
    static let UUID_CHARACTERISTIC_MESH_PROVISIONING_DATA_OUT       = CBUUID(string: "00002ADC-0000-1000-8000-00805f9b34fb")
    static let UUID_SERVICE_MESH_PROXY                              = CBUUID(string: "00001828-0000-1000-8000-00805f9b34fb")
    static let UUID_CHARACTERISTIC_MESH_PROXY_DATA_IN               = CBUUID(string: "00002ADD-0000-1000-8000-00805f9b34fb")
    static let UUID_CHARACTERISTIC_MESH_PROXY_DATA_OUT              = CBUUID(string: "00002ADE-0000-1000-8000-00805f9b34fb")
    static let UUID_DESCRIPTOR_CCCD                                 = CBUUID(string: "00002902-0000-1000-8000-00805f9b34fb")    // Client Configuration Characteristic Descriptor
    static let UUID_MESH_SERVICES: [CBUUID] = [
        MeshUUIDConstants.UUID_SERVICE_MESH_PROVISIONING,
        MeshUUIDConstants.UUID_SERVICE_MESH_PROXY]
    static let UUID_MESH_PROVISIONING_CHARACTERISTICS_CCCD: [CBUUID] = [
        MeshUUIDConstants.UUID_CHARACTERISTIC_MESH_PROVISIONING_DATA_IN,
        MeshUUIDConstants.UUID_CHARACTERISTIC_MESH_PROVISIONING_DATA_OUT]
    static let UUID_MESH_PROXY_CHARACTERISTICS_CCCD: [CBUUID] = [
        MeshUUIDConstants.UUID_CHARACTERISTIC_MESH_PROXY_DATA_IN,
        MeshUUIDConstants.UUID_CHARACTERISTIC_MESH_PROXY_DATA_OUT,
        MeshUUIDConstants.UUID_DESCRIPTOR_CCCD]
}

public struct MeshErrorCode {
    public static let MESH_SUCCESS                         = 0
    public static let MESH_ERROR_INVALID_STATE             = 1
    public static let MESH_ERROR_NOT_CONNECTED             = 2
    public static let MESH_ERROR_DEVICE_NOT_FOUND          = 3
    public static let MESH_ERROR_NETWORK_CLOSED            = 4
    public static let MESH_ERROR_NO_MEMORY                 = 5
    public static let MESH_ERROR_METHOD_NOT_AVAILABLE      = 6
    public static let MESH_ERROR_NETWORK_DB                = 7
    public static let MESH_ERROR_INVALID_ARGS              = 8
    public static let MESH_ERROR_DUPLICATED_NAME           = 9
    public static let MESH_ERROR_PRECEDURE_NOT_COMPELTE    = 10

    public static let MESH_ERROR_SERVICE_NOT_CONNECTED     = 20

    public static let MESH_ERROR_API_IS_BUSYING            = 40
    public static let MESH_ERROR_PRECEDURE_TIMEOUT         = 41

    public static let MESH_ERROR_DIRECTORY_NOT_EXIST                = 100
    public static let MESH_ERROR_DIRECTORY_RW_NOT_ALLOWED           = 101
    public static let MESH_ERROR_DIRECTORY_CREATE_FAILED            = 102
    public static let MESH_ERROR_DIRECTORY_CHANGE_FAILED            = 103
    public static let MESH_ERROR_DIRECTORY_DUPLICATED_NAME          = 104
    public static let MESH_ERROR_DIRECTORY_DELETE_FAILED            = 104
    public static let MESH_ERROR_FILE_CREATE_FAILED                 = 105
    public static let MESH_ERROR_FILE_DELETE_FAILED                 = 106
    public static let MESH_ERROR_FILE_OPEN_FAILED                   = 107

    public static let MESH_ERROR_INVALID_USER_NAME                  = 110
    public static let MESH_ERROR_MESH_LIBRARY_NOT_INITIALIZED       = 111
    public static let MESH_ERROR_MESH_LIBRARY_HAS_INITIALIZED       = 112

    public static let MESH_CLIENT_DEVICE_RESET_STATUS_SUCCESS          = 0
    public static let MESH_CLIENT_DEVICE_RESET_STATUS_NOT_FOUND        = 1
    public static let MESH_CLIENT_DEVICE_RESET_STATUS_NOT_REACHABLE    = 2
}

/*
 * MeshPropertyId structure defined the device properties currently supported in this MeshFramework.
 * Detail of all mesh defined property IDs can refer to the <<Mesh Device Properties>> specification, revision v1.0, section 4.1.3 Property identifiers.
 */
public struct MeshPropertyId {
    public static let UNKNOWN                                           = 0x0000
    public static let LIGHT_CONTROL_AMBIENT_LUX_LEVEL_ON                = 0x002B
    public static let MOTION_SENSED                                     = 0x0042
    public static let PRESENCE_DETECTED                                 = 0x004D
    public static let PRESENT_AMBIENT_LIGHT_LEVEL                       = 0x004E
    public static let PRESENT_AMBIENT_TEMPERATURE                       = 0x004F
    public static let TOTAL_DEVICE_RUNTIME                              = 0x006E

    public static let SETTING_PROPERTY_ID                               = 0x2001

    public static let UNKNOWN_TEXT                                      = "unknown id"

    public static let propertyIdTextMap: [String: Int] = [
        "Lux Level On" : MeshPropertyId.LIGHT_CONTROL_AMBIENT_LUX_LEVEL_ON,
        "Motion Sensed" : MeshPropertyId.MOTION_SENSED,
        "Presence Detected" : MeshPropertyId.PRESENCE_DETECTED,
        "Light Level" : MeshPropertyId.PRESENT_AMBIENT_LIGHT_LEVEL,
        "Temperature" : MeshPropertyId.PRESENT_AMBIENT_TEMPERATURE,
        "Runtime" : MeshPropertyId.TOTAL_DEVICE_RUNTIME,

        "Setting Property ID" : MeshPropertyId.SETTING_PROPERTY_ID,
    ]

    public static func getPropertyIdText(_ propertyId: Int) -> String {
        for (text, id) in MeshPropertyId.propertyIdTextMap {
            if id == propertyId {
                return text
            }
        }
        return "\(MeshPropertyId.UNKNOWN_TEXT) \(String(format: "%04x", propertyId))"
    }

    public static func getPropertyIdByText(_ propertyIdText: String) -> Int {
        for (text, id) in MeshPropertyId.propertyIdTextMap {
            if text == propertyIdText {
                return id
            }
        }
        return MeshPropertyId.UNKNOWN
    }

    // illuminance, assigned number: 0x002B, used to represent a measure of illuminance in units of lux.
    // format: uint24, range: 0 - 167772.14, unit is lux with a resolution of 0.01. A value of 0xFFFFFF represents "value is not known".
    public static func parseAmbientLuxLevelOnValue(_ value: Data) -> Double? {
        guard value.count == 3 else { return nil }
        let lux = UInt32(value[0] | (value[1] << 8) | (value[2] << 16))
        guard lux != 0xFFFFFF else { return nil }
        return (Double(lux) / 100)
    }

    // motion sensed, assigned number: 0x0042, used to represent by a relative value ranging from 0 to 100 percent,
    // with 100 percent the maximum activity that the sensor can record.
    // format: uint8, range: 0 - 100, unit is a percentage with a resolution of 0.5, A value of 0xFF represents "value is not known".
    public static func parseMotionSensedValue(_ value: Data) -> Double? {
        guard value.count == 1 else { return nil }
        let rawValue = UInt8(value[0])
        guard rawValue != 0xFF else { return nil }
        return (Double(rawValue) / 2)
    }

    // presence detected, assigned number: 0x004D, used to represent whether or not a occupant is detected within range of the occupancy detector.
    // format: boolean (uint8), 0 - false, 1 - true.
    public static func parsePresenceDetectedValue(_ value: Data) -> Bool? {
        guard value.count == 1 else { return nil }
        return (value[0] == 0 ) ? false : true
    }

    // ambient light level, assigned number: 0x004E, used to represent the light level as measured by a light sensor measuing illuminance (Lux).
    // format: uint24, range: 0 - 167772.14, unit is lux with a resolution of 0.01. A value of 0xFFFFFF represents "value is not known".
    public static func parseAmbientLightLevelValue(_ value: Data) -> Double? {
        guard value.count == 3 else { return nil }
        let lux = UInt32(value[0] | (value[1] << 8) | (value[2] << 16))
        guard lux != 0xFFFFFF else { return nil }
        return (Double(lux) / 100)
    }

    // present ambient temperature, assigned number: 0x004F, used to represent an ambient air temperature as measured by a temperature sensor.
    // format: sint8, range: -64.0 - 63.5, unit is degrees Celsius with a resolution of 0.5. A value of 0xFF represents "value is not known".
    //
    // when Data size: 16 bits, uint16, unit is in degrees Celsius with a resolution of 0.01 degrees Celsius. Assigned Number: 0x2A6E.
    public static func parseAmbientTemperatureValue(_ value: Data) -> Double? {
        if value.count == 1 {
            guard UInt8(value[0]) != 0xFF else { return nil }
            let rawValue = Int8(UInt8(value[0]))
            return (Double(rawValue) / 2)
        } else if value.count == 2 {
            let temperature = value.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) -> Int16 in
                let unsafePointer = bytes.baseAddress!
                let buffer = UnsafeBufferPointer(start: unsafePointer.assumingMemoryBound(to: Int16.self), count: 1)
                return Array<Int16>(buffer)[0]
            }
            return (Double(temperature) / 100)
        }
        return nil
    }

    // total device runtime, assigned number: 0x006E, used to represent the total time that the element has been operating (has been in an ON-state).
    // format: uint24, range: 0 - 16777214, unit is hour with a resolution of 1. A value of 0xFFFFFF represents "value is not known".
    public static func parseTotalDeviceRuntimeValue(_ value: Data) -> Int? {
        guard value.count == 3 else { return nil }
        let hours = UInt32(value[0] | (value[1] << 8) | (value[2] << 16))
        guard hours != 0xFFFFFF else { return nil }
        return Int(hours)
    }

    public struct MeshLightLcProperty {
        public let name: String    // property name.
        public let id: Int         // property id.
        public let len: Int        // property value size in bytes.
    }

    public static let LightLcProperties: [MeshLightLcProperty] = [
        MeshLightLcProperty(name: "Time Occupancy Delay (0x3a)", id: 0x3a, len: 3),
        MeshLightLcProperty(name: "Time Fade On (0x37)", id: 0x37, len: 3),
        MeshLightLcProperty(name: "Time Run On (0x3c)", id: 0x3c, len: 3),
        MeshLightLcProperty(name: "Time Fade (0x36)", id: 0x36, len: 3),
        MeshLightLcProperty(name: "Time Prolong (0x3b)", id: 0x3b, len: 3),
        MeshLightLcProperty(name: "Time Fade Standby Auto (0x38)", id: 0x38, len: 3),
        MeshLightLcProperty(name: "Time Fade Standby Manual (0x39)", id: 0x39, len: 3),
        MeshLightLcProperty(name: "Lightness On (0x2e)", id: 0x2e, len: 2),
        MeshLightLcProperty(name: "Lightness Prolong (0x2f)", id: 0x2f, len: 2),
        MeshLightLcProperty(name: "Lightness Standby (0x30)", id: 0x39, len: 2),
        MeshLightLcProperty(name: "Ambient LuxLevel On (0x2b)", id: 0x2b, len: 2),
        MeshLightLcProperty(name: "Ambient LuxLevel Prolong (0x2c)", id: 0x2c, len: 2),
        MeshLightLcProperty(name: "Ambient LuxLevel Standby (0x2d)", id: 0x2d, len: 2),
        MeshLightLcProperty(name: "Regulator Kiu (0x33)", id: 0x33, len: 4),
        MeshLightLcProperty(name: "Regulator Kid (0x32)", id: 0x32, len: 4),
        MeshLightLcProperty(name: "Regulator Kpu (0x35)", id: 0x35, len: 4),
        MeshLightLcProperty(name: "Regulator Kpd (0x34)", id: 0x34, len: 4),
        MeshLightLcProperty(name: "Regulator Accuracy (0x31)", id: 0x31, len: 1)
    ]
}

public struct MeshControl {
    public static let METHOD_ONOFF      = "ONOFF"
    public static let METHOD_LEVEL      = "LEVEL"
    public static let METHOD_LIGHTNESS  = "LIGHTNESS"
    public static let METHOD_POWER      = "POWER"
    public static let METHOD_HSL        = "HSL"
    public static let METHOD_CTL        = "CTL"
    public static let METHOD_XYL        = "XYL"
    public static let METHOD_SENSOR     = "SENSOR"
    public static let METHOD_VENDOR     = "VENDOR_"

    public static let TRIGGER_TYPE_NATIVE           = 0     // Indicates the Format Type of the characteristic that the Sensor Property ID state references.
    public static let TRIGGER_TYPE_PERCENTAGE       = 1     // Indicates the Format Type is 0x06, the value is represented as a percentage chagne with a resolution of 0.01 percent.
    public static let TRIGGER_TYPE_TEXT_LIST        = ["Native", "Percentage"]  // must have same order as the type definition.
    public static func getTriggerType(typeText: String) -> Int? {
        for (type, item) in MeshControl.TRIGGER_TYPE_TEXT_LIST.enumerated() {
            if item == typeText {
                return type
            }
        }
        return nil
    }
    public static func getTriggerTypeText(type: Int) -> String? {
        guard type < MeshControl.TRIGGER_TYPE_TEXT_LIST.count else {
            return nil
        }

        return MeshControl.TRIGGER_TYPE_TEXT_LIST[type]
    }

    public static let MEASUREMENT_TYPE_INSIDE       = 0
    public static let MEASUREMENT_TYPE_OUTSIDE      = 1
    public static let MEASUREMENT_TYPE_TEXT_LIST    = ["Inside", "Outside"]     // must have same order as the type definition.
    public static func getMeasurementType(typeText: String) -> Int? {
        for (type, item) in MeshControl.MEASUREMENT_TYPE_TEXT_LIST.enumerated() {
            if item == typeText {
                return type
            }
        }
        return nil
    }
    public static func getMeasurementTypeText(type: Int) -> String? {
        guard type < MeshControl.MEASUREMENT_TYPE_TEXT_LIST.count else {
            return nil
        }

        return MeshControl.MEASUREMENT_TYPE_TEXT_LIST[type]
    }

    // see Mesh Model Specification, section 4.1.3.1 Fast Cadence Period Divisor.
    public static let DEFAULT_FAST_CADENCE_PERIOD_DIVISOR   = 0x00  // The value of 0x00 would have a divisor of 1, the Publish Period would not change.
    public static let FAST_CADENCE_PERIOD_DIVISOR_TEXT_LIST = ["2", "4", "8", "16", "32", "64", "128", "256", "512", "1024"]
    public static func getFastCadencePeriodDivisorIndex(divisorText: String) -> Int? {
        for (index, item) in MeshControl.FAST_CADENCE_PERIOD_DIVISOR_TEXT_LIST.enumerated() {
            if item == divisorText {
                return index
            }
        }
        return nil
    }
    public static func getFastCadencePeriodDivisor(divisorText: String) -> Int {
        var divisorIndex: Int = 0
        for (index, item) in MeshControl.FAST_CADENCE_PERIOD_DIVISOR_TEXT_LIST.enumerated() {
            if item == divisorText {
                divisorIndex = Int(index)
            }
        }
        return (1 << (divisorIndex + 1))
    }
    public static func getFastCadencePeriodDivisorText(divisor: Int) -> String {
        var index: Int = 0
        var divisorTemp = divisor
        while (divisorTemp > 1) {
            index += 1
            divisorTemp >>= 1
        }
        index = min(index - 1, MeshControl.FAST_CADENCE_PERIOD_DIVISOR_TEXT_LIST.count - 1)
        index = max(index, 0)
        return MeshControl.FAST_CADENCE_PERIOD_DIVISOR_TEXT_LIST[index]
    }

    public static let MESH_CLIENT_ADDRESS_ALL_PROXIES  = 0xFFFC
    public static let MESH_CLIENT_ADDRESS_ALL_FRIENDS  = 0xFFFD
    public static let MESH_CLIENT_ADDRESS_ALL_RELAYS   = 0xFFFE
    public static let MESH_CLIENT_ADDRESS_ALL_NODES    = 0xFFFF

    public static let PUBLICATION_TARGETS = ["all-proxies", "all-friends", "all-relays", "all-nodes"]
    // PUBLICATION_TARGET_ADDRESSES must have the same order as the list in PUBLICATION_TARGETS.
    public static let PUBLICATION_TARGET_ADDRESSES = [MeshConstants.MESH_CLIENT_ADDRESS_ALL_PROXIES,
                                                      MeshConstants.MESH_CLIENT_ADDRESS_ALL_FRIENDS,
                                                      MeshConstants.MESH_CLIENT_ADDRESS_ALL_RELAYS,
                                                      MeshConstants.MESH_CLIENT_ADDRESS_ALL_NODES]
    public static func getPublicationTargetAddress(publicationTarget: String) -> Int? {
        for (index, item) in MeshControl.PUBLICATION_TARGETS.enumerated() {
            if item == publicationTarget {
                return MeshControl.PUBLICATION_TARGET_ADDRESSES[index]
            }
        }
        return nil
    }
}
