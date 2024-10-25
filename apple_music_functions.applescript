# Apple Music (Play/Pause) Script:
if application "Music" is running then
    tell application "Music" to playpause
else
    display notification "Music is not running" with title "Music Controller"
end if

# Next Track:
if application "Music" is running then
    tell application "Music" to next track
else
    display notification "No music app is running" with title "Music Controller"
end if

# Previous Track:
if application "Music" is running then
    tell application "Music" to previous track
else
    display notification "No music app is running" with title "Music Controller"
end if

# Mute/Unmute Script
set isMuted to output muted of (get volume settings)

if isMuted is false then
    set volume output muted true
    display notification "Muted volume" with title "Music Controller"
else
    set volume output muted false
    display notification "Unmuted volume" with title "Music Controller"
end if
