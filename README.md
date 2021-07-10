The Action Bar Compatibility Library should be used by datapacks that use the action bar to communicate information to the player (ex. coordinate HUDs).

Especially when the message is displayed at a constant rate, using the action bar can create massive interference with the content of other packs. This is unfortunate considering its helpful nature. By using this library, you can limit conflict with other packs that do the same.

## Usage

Instead of using /title to display the message, take the original string you were going to display and use it in this command:

`data modify storage abcl:storage temp.message set value {Message: "string" or '{"text":"raw JSON"}', Priority: int}`

The priority can be used to ensure your message is displayed or to ensure it doesn't cover up more important information. Lower values are higher priority; I don't recommend going below 1. So, if you want to ensure your message is seen, set its priority to 1.

A helpful guide:
* priority 1: non-repeating messages
* priority 2: repeating, important messages (ex. coordinate hud)
* priority 3: repeating, lesser messages (ex. timers)
* priority 4: even lesser
* priority 5: etc.
This is the intended usage.

Once you've done this, run the function `abcl:message/check` as the player you want to send the message to, and it will appear for the next two seconds uninterrupted by messages that aren't of a higher priority.

## Other info

-The pack comes packaged with an example using the messages the player receives when trying to sleep in a bed. This also ensures that vanilla's bed messages are compatible with the system.

-This pack does not utilize global.ignore, you'll need to do that in your own pack.

-There is an additional parameter in the message object: in addition to `Message` and `Priority`, there is the optional `ClearImmediately`, defaulting to 0b. Set this to 1 if the message can be overriden immediately by other messages; I recommend this for messages that are displayed repetitively under a certain condition. It gets rid of the two-second allowance that normally comes after the function.
