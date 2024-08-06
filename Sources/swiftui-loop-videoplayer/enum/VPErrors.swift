//
//  VPErrors.swift
//
//
//  Created by Igor on 09.07.2023.
//

import Foundation

/// An enumeration of possible errors that can occur in the video player.
public enum VPErrors: Error, CustomStringConvertible, Sendable {
    
    /// Error case for when there is an error with remote video playback.
    /// - Parameter error: The error that occurred during remote video playback.
    case remoteVideoError(Error?)
    
    /// Error case for when a file is not found.
    /// - Parameter name: The name of the file that was not found.
    case sourceNotFound(String)
    
    /// Error case for when settings are not unique.
    case settingsNotUnique
    
    /// A description of the error, suitable for display.
    public var description: String {
        switch self {
            /// Returns a description indicating that the specified file was not found.
            /// - Parameter name: The name of the file that was not found.
            case .sourceNotFound(let name):
                return "Source not found: \(name)"
            
            /// Returns a description indicating that the settings are not unique.
            case .settingsNotUnique:
                return "Settings are not unique"
            
            /// Returns a description indicating a playback error with the remote video.
            /// - Parameter error: The error that occurred during remote video playback.
            case .remoteVideoError(let error):
                return "Playback error: \(String(describing: error?.localizedDescription))"
        }
    }
}
 
