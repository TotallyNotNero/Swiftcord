//
//  Enums.swift
//  Swiftcord
//
//  Created by Alejandro Alonso
//  Copyright © 2017 Alejandro Alonso. All rights reserved.
//

/// Organize all dispatch events
public enum OP: Int {
    case dispatch,
         heartbeat,
         identify,
         statusUpdate,
         voiceStateUpdate,
         resume = 6,
         reconnect,
         requestGuildMember,
         invalidSession,
         hello,
         heartbeatACK
}

/// Organize all voice dispatch events
enum VoiceOP: Int {
    case identify,
         selectProtocol,
         ready,
         heartbeat,
         sessionDescription,
         speaking,
         heartbeatACK,
         resume,
         hello,
         resumed,
         clientConnect = 12,
         clientDisconnect = 13
}

/// Organize all websocket close codes
enum CloseOP: Int {
    case noInternet = 50,
         clean = 1000,
         goingAway = 1001,
         unexpectedServerError = 1011,
         unknownError = 4000,
         unknownOP,
         decodeError,
         notAuthenticated,
         authenticationFailed,
         alreadyAuthenticated,
         invalidSeq = 4007,
         rateLimited,
         sessionTimeout,
         invalidShard,
         shardingRequired,
         invalidAPIVersion,
         invalidIntents,
         disallowedIntents
}

enum SpeakingState: Int {
    case none
    
    case voice
    
    case soundShare
    
    case priority = 4
}

/// Organize all the different http methods
enum HTTPMethod: String {
    case get = "GET",
         post = "POST",
         put = "PUT",
         patch = "PATCH",
         delete = "DELETE"
}

/// Used to determine avatar url format
public enum FileExtension: String {

    /// .gif format
    case gif

    /// .jpg format
    case jpg

    /// .png format
    case png

    /// .webp format
    case webp

}

/// Organize all ws dispatch events
public enum Event: String {

    /**
     Fired when audio data is received from voice connection
     */
    case audioData

    /**
     Fired when a channel is created
     */
    case channelCreate = "CHANNEL_CREATE"

    /**
     Fired when a channel is deleted
     */
    case channelDelete = "CHANNEL_DELETE"

    /**
     Fired when a channel adds a pin or removes a pin
     */
    case channelPinsUpdate = "CHANNEL_PINS_UPDATE"

    /**
     Fired when a channel is updated
     */
    case channelUpdate = "CHANNEL_UPDATE"

    /**
     Fired when voice connection dies (self emitted)
     */
    case connectionClose

    /**
     Fired when a shard is disconnected from the gateway
     */
    case disconnect

    /**
     Fired when a guild is available (This is not guildCreate)
     */
    case guildAvailable

    /**
     Fired when a member of a guild is banned
     */
    case guildBanAdd = "GUILD_BAN_ADD"

    /**
     Fired when a member of a guild is unbanned
     */
    case guildBanRemove = "GUILD_BAN_REMOVE"

    /**
     Fired when a guild is created
     */
    case guildCreate = "GUILD_CREATE"

    /**
     Fired when a guild is deleted
     */
    case guildDelete = "GUILD_DELETE"

    /**
     Fired when a guild's custom emojis are created/deleted/updated
     */
    case guildEmojisUpdate = "GUILD_EMOJIS_UPDATE"

    /**
     Fired when a guild updates it's integrations
     */
    case guildIntegrationsUpdate = "GUILD_INTEGRATIONS_UPDATE"

    /**
     Fired when a user joins a guild
     */
    case guildMemberAdd = "GUILD_MEMBER_ADD"

    /**
     Fired when a member leaves a guild
     */
    case guildMemberRemove = "GUILD_MEMBER_REMOVE"

    /**
     Fired when a member of a guild is updated
     */
    case guildMemberUpdate = "GUILD_MEMBER_UPDATE"

    /// :nodoc:
    case guildMembersChunk = "GUILD_MEMBERS_CHUNK"

    /**
     Fired when a role is created in a guild
     */
    case guildRoleCreate = "GUILD_ROLE_CREATE"

    /**
     Fired when a role is deleted in a guild
     ```
     */
    case guildRoleDelete = "GUILD_ROLE_DELETE"

    /**
     Fired when a role is updated in a guild
     */
    case guildRoleUpdate = "GUILD_ROLE_UPDATE"

    /**
     Fired when a guild becomes unavailable
     */
    case guildUnavailable

    /**
     Fired when a guild is updated
     */
    case guildUpdate = "GUILD_UPDATE"

    /**
     Fired when a message is created
     */
    case messageCreate = "MESSAGE_CREATE"

    /**
     Fired when a message is deleted
     */
    case messageDelete = "MESSAGE_DELETE"

    /**
     Fired when a large chunk of messages are deleted
     */
    case messageDeleteBulk = "MESSAGE_DELETE_BULK"

    /**
     Fired when a message's reactions are all removed
     */
    case messageReactionRemoveAll = "MESSAGE_REACTION_REMOVE_ALL"

    /**
     Fired when a message is updated
     */
    case messageUpdate = "MESSAGE_UPDATE"

    /**
     Fired when a payload is received through the gateway
     */
    case payload

    /**
     Fired when a user's presences is updated
     */
    case presenceUpdate = "PRESENCE_UPDATE"

    /**
     Fired when the bot is ready to receive events
     */
    case ready = "READY"

    /**
     Fired when a reaction is added to a message
     */
    case reactionAdd = "MESSAGE_REACTION_ADD"

    /**
     Fired when a reaction is removed from a message
     */
    case reactionRemove = "MESSAGE_REACTION_REMOVE"

    /// :nodoc:
    case resume = "RESUME"

    /// :nodoc:
    case resumed = "RESUMED"

    /**
     Fired when a shard becomes ready
     */
    case shardReady

    /**
     Fired when a thread is created
     */
    case threadCreate = "THREAD_CREATE"

    /**
     Fired when a thread is deleted
     */
    case threadDelete = "THREAD_DELETE"

    /**
     Fired when a thread is updated
     */
    case threadUpdate = "THREAD_UPDATE"

    /**
     Fired when someone starts typing a message
     */
    case typingStart = "TYPING_START"

    /**
     Fired when a user updates their info
     */
    case userUpdate = "USER_UPDATE"

    /**
     Fired when someone joins a voice channel
     */
    case voiceChannelJoin

    /**
     Fired when someone leaves a voice channel
     */
    case voiceChannelLeave

    /**
     Fired when someone joins/leaves/moves a voice channel
     */
    case voiceStateUpdate = "VOICE_STATE_UPDATE"

    /// :nodoc:
    case voiceServerUpdate = "VOICE_SERVER_UPDATE"

    /**
     Generic Interaction event
     This should never be handled by the user. Its soul purpose is for the library to distinguish the different types of interactions
     As they all send this event.
    */
    case interaction = "INTERACTION_CREATE"
    
    /**
     Fired when a button is clicked
     */
    case buttonEvent = "BUTTON_INTERACTION"

    /**
     Fired when a Select Menu is selected
     */
    case selectMenuEvent = "SELECT_BOX_INTERACTION"

    /**
     Fired when a slash command is used
     */
    case slashCommandEvent = "SLASH_COMMAND_INTERACTION"

    /**
     Fired when a user command is used
     */
    case userCommandEvent = "USER_COMMAND_INTERACTION"

    /**
     Fired when a message command is used
     */
    case messageCommandEvent = "MESSAGE_COMMAND_INTERACTION"
    
    /**
     Fired when a text input is used
     */
    case textInputEvent = "TEX
