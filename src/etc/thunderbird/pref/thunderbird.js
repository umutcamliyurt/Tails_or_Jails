// This is the Debian specific preferences file for Mozilla Thunderbird
// You can make any change in here, it is the purpose of this file.
// You can, with this file and all files present in the directory
//
//      /etc/thunderbird/pref directory
//
// override any preference that is present in the directory
//
//      /usr/lib/thunderbird/defaults/pref
//
// While your changes will be kept on upgrade if you modify files in
// /etc/thunderbird/pref, please note that they won't be kept if you
// do them in /usr/lib/thunderbird/defaults/pref.

pref("extensions.update.enabled", true);

// Use LANG environment variable to choose locale from system
// The old environment setting 'pref("intl.locale.matchOS", true);' is
// currently not working anymore. The new introduced setting
// 'intl.locale.requested' is now used for this. Setting an empty string is
// pulling the system locale into Thunderbird.
pref("intl.locale.requested", "");

// Disable default mail checking (gnome).
pref("mail.shell.checkDefaultMail", false);

// Disable default mail client check
pref("mail.shell.checkDefaultClient", false);

// if you are not using gnome
pref("network.protocol-handler.app.http", "x-www-browser");
pref("network.protocol-handler.app.https", "x-www-browser");

// This setting is a workaround for some crashes inside the JS engine.
// By this Thunderbird will use more memory and acting slower as the sharing
// memory between interacting JS files is disabled.
pref ("javascript.options.baselinejit", false);

// Uncomment the follwing setting if you want to have a extra mail header field
// for X-Debbugs-Cc, only needed in case you have to work with the Debian
// Bug Tracking System more deeply
//pref("mail.compose.other.header", "X-Debbugs-Cc");
