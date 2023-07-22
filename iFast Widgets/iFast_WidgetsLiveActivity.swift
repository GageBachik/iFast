//
//  iFast_WidgetsLiveActivity.swift
//  iFast Widgets
//
//  Created by Gage Bachik on 7/22/23.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct iFast_WidgetsAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct iFast_WidgetsLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: iFast_WidgetsAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension iFast_WidgetsAttributes {
    fileprivate static var preview: iFast_WidgetsAttributes {
        iFast_WidgetsAttributes(name: "World")
    }
}

extension iFast_WidgetsAttributes.ContentState {
    fileprivate static var smiley: iFast_WidgetsAttributes.ContentState {
        iFast_WidgetsAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: iFast_WidgetsAttributes.ContentState {
         iFast_WidgetsAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: iFast_WidgetsAttributes.preview) {
   iFast_WidgetsLiveActivity()
} contentStates: {
    iFast_WidgetsAttributes.ContentState.smiley
    iFast_WidgetsAttributes.ContentState.starEyes
}
