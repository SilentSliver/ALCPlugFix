# ALCPlugFix
-------------
This is a improved version of ALCPlugFix from [goodwin](https://github.com/goodwin/ALCPlugFix).

The original and this fork trie to fix headphone audio power state issue in non Apple sound card in macOS 11.

The improvement include:

 - Refactor
 - **Add listener when sleep/wake**
 - Fix on sleep wake
 - Let you choose `hda-verb` so it don't need be in `$PATH`
 - Enable launching as LauchDaemon
 - Bug fix
 - Use macOS 11 new path to enable this fix 

## Install
----
By default it's code command is for Mi notebook pro, you may need to change that in `fixAudio` function.

After my test it could work on XPS 15 9560.

Running `sh ./install.sh` or double click `Install_Double-click.command` will install to `/Library/Apple/usr/bin`.

By default it search `hda-verb` in current work directory, if not found it will search in `$PATH` _(May not work when it is running from LaunchDaemon because it is using as root)_.


# Build
----
`xcodebuild -target ALCPlugFix`

# Debug
----

Add following to launchDaemon file to log to `/tmp/ALCPlugFix.log`, _(or use `log stream`)_

```
	<key>StandardOutPath</key>
	<string>/tmp/ALCPlugFix.log</string>
	<key>StandardErrorPath</key>
	<string>/tmp/ALCPlugFix.log</string>
```