# Screenshots Folder

This folder contains all the screenshots used in the main README.md file.

## Required Screenshots

### Mobile View Screenshots
- `mobile_login.png` - Login screen interface
- `mobile_chats.png` - Chats list view
- `mobile_chat.png` - Individual chat screen
- `mobile_add_contact.png` - Add new contact dialog
- `mobile_tabs.png` - Tab navigation (Chats/Status/Calls)
- `mobile_logout.png` - Logout confirmation dialog

### Web View Screenshots
- `web_interface.png` - Full web interface with sidebar and chat area
- `web_chat.png` - Web chat window with messages

### UI Components Screenshots
- `sender_card.png` - Sender message bubble
- `receiver_card.png` - Receiver message bubble
- `contact_list.png` - Contact list component

## How to Add Screenshots

1. Take screenshots of your app running on different devices/platforms
2. Name them exactly as listed above
3. Place them in this `screenshots/` folder
4. The README.md will automatically display them

## Screenshot Guidelines

- **Format:** PNG (preferred) or JPG
- **Resolution:** High quality (at least 1080p for mobile, 1920p for web)
- **Aspect Ratio:** Maintain original device aspect ratio
- **Content:** Show actual app functionality with sample data
- **Compression:** Optimize file size without losing quality (use tools like TinyPNG)

## Tips for Taking Screenshots

### Mobile Screenshots
```bash
# For Android
adb shell screencap -p /sdcard/screenshot.png
adb pull /sdcard/screenshot.png

# For iOS
Use Xcode Simulator: Cmd + S

# Or use Flutter DevTools
# Press the camera icon in the DevTools interface
```

### Web Screenshots
- Use browser's full-page screenshot feature
- Or use tools like:
  - Chrome DevTools (Cmd/Ctrl + Shift + P → "Capture screenshot")
  - Firefox Screenshots feature
  - Extensions like "Full Page Screen Capture"

### Screenshot Editing
- Crop unnecessary elements (status bar, navigation bar)
- Add device frames using tools like:
  - https://mockuphone.com/
  - https://shotsnapp.com/
  - https://smartmockups.com/

## Current Status

⚠️ **Screenshots pending** - Please add the screenshots listed above to complete the documentation.
